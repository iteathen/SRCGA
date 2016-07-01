.class Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
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
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)V
    .locals 4

    .prologue
    .line 3413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->lambda$handle$130(ILjavafx/scene/control/TreeTablePosition;)V

    return-void
.end method

.method private synthetic lambda$handle$130(ILjavafx/scene/control/TreeTablePosition;)V
    .locals 6

    .prologue
    .line 3475
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;"
    move v1, p1

    .local v1, "newFocus":I
    move-object v2, p2

    .local v2, "focusedCell":Ljavafx/scene/control/TreeTablePosition;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 3413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 3417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TS;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 3478
    :goto_0
    return-void

    .line 3419
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .line 3420
    .local v2, "shift":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3421
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getChange()Ljavafx/collections/ListChangeListener$Change;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    .line 3425
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-static {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->access$2700(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v7

    move v3, v7

    .line 3427
    .local v3, "row":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3428
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 3430
    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    move v2, v7

    .line 3469
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

    .line 3471
    :cond_3
    move v7, v2

    if-eqz v7, :cond_4

    .line 3472
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v7

    move-object v3, v7

    .line 3473
    .local v3, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v7

    move v8, v2

    add-int/2addr v7, v8

    move v4, v7

    .line 3474
    .local v4, "newFocus":I
    move v7, v4

    if-ltz v7, :cond_4

    .line 3475
    move-object v7, v0

    move v8, v4

    move-object v9, v3

    invoke-static {v7, v8, v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v7}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 3478
    .end local v3    # "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    .end local v4    # "newFocus":I
    :cond_4
    goto :goto_0

    .line 3432
    .local v3, "row":I
    :cond_5
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3433
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 3436
    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    iget v8, v8, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    neg-int v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    move v2, v7

    goto :goto_1

    .line 3438
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3441
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v4, v7

    .line 3442
    .local v4, "eventTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3443
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

    .line 3445
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedChildren()Ljava/util/List;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeItem;

    move-object v6, v7

    .line 3446
    .local v6, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-static {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->access$2700(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v7

    move v3, v7

    .line 3448
    move-object v7, v6

    if-eqz v7, :cond_7

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 3449
    move v7, v2

    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v2, v7

    .line 3443
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3453
    .end local v5    # "i":I
    .end local v6    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_8
    goto/16 :goto_1

    .end local v4    # "eventTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_9
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3454
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getFrom()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    move v3, v7

    .line 3456
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

    .line 3457
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedChildren()Ljava/util/List;

    move-result-object v7

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeItem;

    move-object v5, v7

    .line 3458
    .local v5, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v7, v5

    if-eqz v7, :cond_a

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3459
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(I)V

    .line 3460
    goto/16 :goto_0

    .line 3456
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3464
    .end local v5    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_b
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 3466
    move v7, v2

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

    move v2, v7

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x0

    goto :goto_4
.end method

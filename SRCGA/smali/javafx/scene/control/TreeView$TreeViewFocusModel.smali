.class Ljavafx/scene/control/TreeView$TreeViewFocusModel;
.super Ljavafx/scene/control/FocusModel;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeViewFocusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/FocusModel",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final rootPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private treeItemListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final treeView:Ljavafx/scene/control/TreeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/FocusModel;-><init>()V

    .line 1560
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 1564
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 1578
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$1;-><init>(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeItemListener:Ljavafx/event/EventHandler;

    .line 1544
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    .line 1545
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 1546
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 1548
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1549
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->focus(I)V

    .line 1552
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1558
    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/control/TreeView$TreeViewFocusModel;)Ljavafx/scene/control/TreeView;
    .locals 2

    .prologue
    .line 1539
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView$TreeViewFocusModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeView$TreeViewFocusModel;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeView$TreeViewFocusModel;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->lambda$new$262(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeView$TreeViewFocusModel;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->lambda$new$261(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$261(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 1553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->isFocused(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1554
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->focus(I)V

    .line 1555
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->focus(I)V

    .line 1557
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$262(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 7

    .prologue
    .line 1561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TreeItem;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TreeItem;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 1562
    return-void
.end method

.method private updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move-object v1, p1

    .local v1, "oldRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, p2

    .local v2, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    if-eqz v3, :cond_0

    .line 1569
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1572
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1573
    move-object v3, v0

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeItemListener:Ljavafx/event/EventHandler;

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    .line 1574
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1576
    :cond_1
    return-void
.end method


# virtual methods
.method public focus(I)V
    .locals 4

    .prologue
    .line 1661
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-static {v2}, Ljavafx/scene/control/TreeView;->access$200(Ljavafx/scene/control/TreeView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1662
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TreeView;->access$400(Ljavafx/scene/control/TreeView;Ljavafx/scene/control/TreeItem;)V

    .line 1665
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 1666
    return-void
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 1648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    return-object v0
.end method

.method protected getModelItem(I)Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 1656
    .end local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    :goto_0
    return-object v0

    .line 1654
    .restart local v0    # "this":Ljavafx/scene/control/TreeView$TreeViewFocusModel;, "Ljavafx/scene/control/TreeView$TreeViewFocusModel<TT;>;"
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1656
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$TreeViewFocusModel;->treeView:Ljavafx/scene/control/TreeView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

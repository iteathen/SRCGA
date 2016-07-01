.class Ljavafx/scene/control/cell/DefaultTreeCell;
.super Ljavafx/scene/control/TreeCell;
.source "DefaultTreeCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TreeCell",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private hbox:Ljavafx/scene/layout/HBox;

.field private treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

.field private treeItemListener:Ljavafx/beans/InvalidationListener;

.field private treeItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

.field private weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/DefaultTreeCell;, "Ljavafx/scene/control/cell/DefaultTreeCell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeCell;-><init>()V

    .line 47
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/cell/DefaultTreeCell$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

    .line 51
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/cell/DefaultTreeCell$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/DefaultTreeCell$1;-><init>(Ljavafx/scene/control/cell/DefaultTreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemListener:Ljavafx/beans/InvalidationListener;

    .line 66
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    .line 69
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;

    .line 73
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/cell/DefaultTreeCell;->weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 75
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/DefaultTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/DefaultTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/cell/DefaultTreeCell;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/control/cell/DefaultTreeCell;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/cell/DefaultTreeCell;->treeItemRef:Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/DefaultTreeCell;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/cell/DefaultTreeCell;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/cell/DefaultTreeCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/cell/DefaultTreeCell;->lambda$new$619(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$619(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/DefaultTreeCell;, "Ljavafx/scene/control/cell/DefaultTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/DefaultTreeCell;->getItem()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/DefaultTreeCell;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/cell/DefaultTreeCell;->updateDisplay(Ljava/lang/Object;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method updateDisplay(Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/cell/DefaultTreeCell;, "Ljavafx/scene/control/cell/DefaultTreeCell<TT;>;"
    move-object v2, p1

    .local v2, "item":Ljava/lang/Object;, "TT;"
    move v3, p2

    .local v3, "empty":Z
    move-object v5, v2

    if-eqz v5, :cond_0

    move v5, v3

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 83
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setText(Ljava/lang/String;)V

    .line 84
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 116
    :goto_0
    return-void

    .line 87
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    .line 88
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_4

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 89
    move-object v5, v2

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_3

    .line 90
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setText(Ljava/lang/String;)V

    .line 95
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    if-nez v5, :cond_2

    .line 96
    move-object v5, v1

    new-instance v6, Ljavafx/scene/layout/HBox;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/layout/HBox;-><init>(D)V

    iput-object v6, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 98
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    check-cast v9, Ljavafx/scene/Node;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 99
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 101
    :cond_3
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 102
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setText(Ljava/lang/String;)V

    .line 103
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 106
    :cond_4
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/control/cell/DefaultTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 107
    move-object v5, v2

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_5

    .line 108
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setText(Ljava/lang/String;)V

    .line 109
    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    goto/16 :goto_0

    .line 111
    :cond_5
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setText(Ljava/lang/String;)V

    .line 112
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    goto/16 :goto_0
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/DefaultTreeCell;, "Ljavafx/scene/control/cell/DefaultTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 120
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->updateDisplay(Ljava/lang/Object;Z)V

    .line 121
    return-void
.end method

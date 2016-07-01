.class public Ljavafx/scene/control/TreeTableRow;
.super Ljavafx/scene/control/IndexedCell;
.source "TreeTableRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/IndexedCell",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tree-table-row-cell"

.field private static final EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private disclosureNode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final editingListener:Ljavafx/beans/InvalidationListener;

.field private final focusedListener:Ljavafx/beans/InvalidationListener;

.field private index:I

.field private isFirstRun:Z

.field private final leafListener:Ljavafx/beans/InvalidationListener;

.field private oldExpanded:Z

.field private final selectedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final treeItemExpandedInvalidationListener:Ljavafx/beans/InvalidationListener;

.field private treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakSelectedListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "expanded"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableRow;->EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 517
    const-string v0, "collapsed"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableRow;->COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 94
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableRow;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 98
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 102
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 106
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableRow$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableRow$1;-><init>(Ljavafx/scene/control/TreeTableRow;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->leafListener:Ljavafx/beans/InvalidationListener;

    .line 118
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->treeItemExpandedInvalidationListener:Ljavafx/beans/InvalidationListener;

    .line 128
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 130
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 132
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 134
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->leafListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    .line 136
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->treeItemExpandedInvalidationListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    .line 148
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableRow$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "treeItem"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableRow$2;-><init>(Ljavafx/scene/control/TreeTableRow;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 186
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "disclosureNode"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    .line 211
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableRow$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "treeTableView"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableRow$3;-><init>(Ljavafx/scene/control/TreeTableRow;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 383
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavafx/scene/control/TreeTableRow;->index:I

    .line 384
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableRow;->isFirstRun:Z

    .line 82
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "tree-table-row-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 83
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TREE_TABLE_ROW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableRow;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableRow;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/control/TreeTableRow;Z)Z
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeTableRow;->oldExpanded:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableRow;
    return v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeTableRow;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableRow;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableRow;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableRow;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TreeTableRow;)V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableRow;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableRow;->updateItem()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableRow;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableRow;->lambda$new$131(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableRow;->lambda$new$132(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeTableRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableRow;->lambda$new$133(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeTableRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableRow;->lambda$new$134(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$131(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableRow;->updateSelection()V

    .line 96
    return-void
.end method

.method private synthetic lambda$new$132(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableRow;->updateFocus()V

    .line 100
    return-void
.end method

.method private synthetic lambda$new$133(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableRow;->updateEditing()V

    .line 104
    return-void
.end method

.method private synthetic lambda$new$134(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    move v2, v3

    .line 120
    .local v2, "expanded":Z
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TreeTableRow;->EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableRow;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 121
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TreeTableRow;->COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableRow;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 122
    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeTableRow;->oldExpanded:Z

    if-eq v3, v4, :cond_0

    .line 123
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableRow;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 125
    :cond_0
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljavafx/scene/control/TreeTableRow;->oldExpanded:Z

    .line 126
    return-void

    .line 121
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setTreeItem(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method private setTreeTableView(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateEditing()V
    .locals 5

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    if-nez v3, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v3

    move-object v1, v3

    .line 453
    .local v1, "editingCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TT;*>;"
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 454
    goto :goto_0

    .line 457
    :cond_2
    move-object v3, v1

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    move-object v2, v3

    .line 458
    .local v2, "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->isEditing()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->startEdit()V

    .line 463
    :cond_3
    :goto_2
    goto :goto_0

    .line 457
    .end local v2    # "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    goto :goto_1

    .line 460
    .restart local v2    # "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 461
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->cancelEdit()V

    goto :goto_2
.end method

.method private updateFocus()V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 446
    :cond_2
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->isFocused(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableRow;->setFocused(Z)V

    .line 447
    goto :goto_0
.end method

.method private updateItem()V
    .locals 10

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v7

    move-object v1, v7

    .line 388
    .local v1, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v7, v1

    if-nez v7, :cond_0

    .line 429
    :goto_0
    return-void

    .line 391
    :cond_0
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/control/TreeTableRow;->index:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/control/TreeTableRow;->index:I

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v2, v7

    .line 393
    .local v2, "valid":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v3, v7

    .line 394
    .local v3, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow;->isEmpty()Z

    move-result v7

    move v4, v7

    .line 397
    .local v4, "isEmpty":Z
    move v7, v2

    if-eqz v7, :cond_4

    .line 400
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/control/TreeTableRow;->index:I

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v5, v7

    .line 401
    .local v5, "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v5

    if-nez v7, :cond_3

    const/4 v7, 0x0

    :goto_2
    move-object v6, v7

    .line 414
    .local v6, "newValue":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableRow;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 415
    move-object v7, v0

    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TreeTableRow;->updateItem(Ljava/lang/Object;Z)V

    .line 416
    .line 429
    .end local v5    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v6    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_3
    goto :goto_0

    .line 391
    .end local v2    # "valid":Z
    .end local v3    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v4    # "isEmpty":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 401
    .restart local v2    # "valid":Z
    .restart local v3    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .restart local v4    # "isEmpty":Z
    .restart local v5    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_3
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 423
    .end local v5    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_4
    move v7, v4

    if-nez v7, :cond_5

    move-object v7, v3

    if-nez v7, :cond_6

    :cond_5
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/control/TreeTableRow;->isFirstRun:Z

    if-eqz v7, :cond_1

    .line 424
    :cond_6
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TreeTableRow;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 425
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TreeTableRow;->updateItem(Ljava/lang/Object;Z)V

    .line 426
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljavafx/scene/control/TreeTableRow;->isFirstRun:Z

    goto :goto_3
.end method

.method private updateSelection()V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 433
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TreeTableRow;->index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 434
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 436
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TreeTableRow;->index:I

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->isSelected(I)Z

    move-result v2

    move v1, v2

    .line 437
    .local v1, "isSelected":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->isSelected()Z

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_4

    goto :goto_0

    .line 439
    :cond_4
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableRow;->updateSelected(Z)V

    .line 440
    goto :goto_0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 11

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->isEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    :goto_0
    return-void

    .line 357
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v1, v2

    .line 358
    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 359
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeTableView$EditEvent;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    .line 360
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v6

    move-object v7, v0

    .line 361
    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v8, v0

    .line 362
    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableRow;->getItem()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TreeTableView$EditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->fireEvent(Ljavafx/event/Event;)V

    .line 366
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/IndexedCell;->cancelEdit()V

    .line 368
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 370
    move-object v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 371
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->requestFocus()V

    .line 373
    :cond_2
    goto :goto_0
.end method

.method public commitEdit(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    :goto_0
    return-void

    .line 324
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v2, v4

    .line 325
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v4

    move-object v3, v4

    .line 326
    .local v3, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 328
    move-object v4, v3

    new-instance v5, Ljavafx/scene/control/TreeTableView$EditEvent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    .line 329
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editCommitEvent()Ljavafx/event/EventType;

    move-result-object v8

    move-object v9, v2

    move-object v10, v0

    .line 331
    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableRow;->getItem()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/control/TreeTableView$EditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableView;->fireEvent(Ljavafx/event/Event;)V

    .line 336
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 337
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setValue(Ljava/lang/Object;)V

    .line 338
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableRow;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 339
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TreeTableRow;->updateItem(Ljava/lang/Object;Z)V

    .line 344
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/IndexedCell;->commitEdit(Ljava/lang/Object;)V

    .line 346
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 348
    move-object v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 349
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->requestFocus()V

    .line 351
    :cond_3
    goto :goto_0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;-><init>(Ljavafx/scene/control/TreeTableRow;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public final disclosureNodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/TreeTableRow$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 582
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/IndexedCell;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 573
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v3, v4

    .line 574
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_0

    .line 578
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v3, v4

    .line 579
    .restart local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getDisclosureNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public final getTreeItem()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public final getTreeTableView()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method indexChanged(II)V
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/TreeTableRow;->index:I

    .line 290
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableRow;->updateItem()V

    .line 291
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableRow;->updateSelection()V

    .line 292
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableRow;->updateFocus()V

    .line 294
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object/from16 v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object/from16 v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    move-object v3, v8

    .line 534
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v8

    move-object v4, v8

    .line 536
    .local v4, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    sget-object v8, Ljavafx/scene/control/TreeTableRow$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 565
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    :goto_0
    return-object v0

    .line 538
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    :pswitch_0
    move-object v8, v3

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 539
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    move-object v5, v8

    .line 540
    .local v5, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v5

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 541
    :cond_1
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    move v6, v8

    .line 542
    .local v6, "parentIndex":I
    move-object v8, v4

    sget-object v9, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeTableView;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 545
    .end local v5    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v6    # "parentIndex":I
    :pswitch_1
    move-object v8, v3

    if-nez v8, :cond_2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 546
    :cond_2
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 547
    :cond_3
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 550
    :pswitch_2
    move-object v8, v3

    if-nez v8, :cond_4

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 551
    :cond_4
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 552
    :cond_5
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v5, v8

    .line 553
    .local v5, "index":I
    move v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    if-lt v8, v9, :cond_6

    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 554
    :cond_6
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeItem;

    move-object v6, v8

    .line 555
    .local v6, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v6

    if-nez v8, :cond_7

    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 556
    :cond_7
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeTableView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    move v7, v8

    .line 557
    .local v7, "childIndex":I
    move-object v8, v4

    sget-object v9, Ljavafx/scene/AccessibleAttribute;->ROW_AT_INDEX:Ljavafx/scene/AccessibleAttribute;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeTableView;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 559
    .end local v5    # "index":I
    .end local v6    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v7    # "childIndex":I
    :pswitch_3
    move-object v8, v3

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_8
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v8

    goto :goto_1

    .line 560
    :pswitch_4
    move-object v8, v3

    if-nez v8, :cond_9

    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_9
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    goto :goto_2

    .line 561
    :pswitch_5
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 563
    :pswitch_6
    move-object v8, v4

    if-nez v8, :cond_a

    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_a
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeTableView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    goto :goto_3

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final setDisclosureNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->disclosureNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public startEdit()V
    .locals 11

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v1, v2

    .line 300
    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/IndexedCell;->startEdit()V

    .line 310
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 311
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeTableView$EditEvent;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    .line 312
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editStartEvent()Ljavafx/event/EventType;

    move-result-object v6

    move-object v7, v0

    .line 313
    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v8, v0

    .line 314
    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableRow;->getItem()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TreeTableView$EditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->fireEvent(Ljavafx/event/Event;)V

    .line 317
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->requestFocus()V

    .line 319
    :cond_2
    goto :goto_0
.end method

.method public final treeItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public final treeTableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    return-object v0
.end method

.method public final updateTreeItem(Ljavafx/scene/control/TreeItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 497
    .local v2, "_treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 498
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->leafProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 500
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableRow;->setTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 501
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 502
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->leafProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 504
    :cond_1
    return-void
.end method

.method public final updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v1, p1

    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableRow;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 484
    return-void
.end method

.class public Ljavafx/scene/control/TreeCell;
.super Ljavafx/scene/control/IndexedCell;
.source "TreeCell.java"


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

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tree-cell"

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

.field private final focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final focusedListener:Ljavafx/beans/InvalidationListener;

.field private isFirstRun:Z

.field private final leafListener:Ljavafx/beans/InvalidationListener;

.field private oldIsExpanded:Z

.field private final rootPropertyListener:Ljavafx/beans/InvalidationListener;

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

.field private final selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
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

.field private treeView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private updateEditingIndex:Z

.field private final weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

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

.field private final weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 641
    const-string v0, "expanded"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeCell;->EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 642
    const-string v0, "collapsed"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeCell;->COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 99
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeCell$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 107
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell$1;-><init>(Ljavafx/scene/control/TreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 121
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeCell$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 129
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell$2;-><init>(Ljavafx/scene/control/TreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 143
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeCell$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 147
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell$3;-><init>(Ljavafx/scene/control/TreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->leafListener:Ljavafx/beans/InvalidationListener;

    .line 160
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell$4;-><init>(Ljavafx/scene/control/TreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->treeItemExpandedInvalidationListener:Ljavafx/beans/InvalidationListener;

    .line 172
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeCell$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->rootPropertyListener:Ljavafx/beans/InvalidationListener;

    .line 176
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 177
    move-object v1, v0

    new-instance v2, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v3, v4}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 178
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 179
    move-object v1, v0

    new-instance v2, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v3, v4}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 180
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 181
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->leafListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    .line 182
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->treeItemExpandedInvalidationListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    .line 184
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->rootPropertyListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

    .line 196
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "treeItem"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeCell$5;-><init>(Ljavafx/scene/control/TreeCell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 235
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "disclosureNode"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    .line 260
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeCell$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell$6;-><init>(Ljavafx/scene/control/TreeCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeCell;->treeView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 480
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeCell;->isFirstRun:Z

    .line 560
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeCell;->updateEditingIndex:Z

    .line 87
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "tree-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 88
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TREE_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TreeCell;)V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeCell;->updateSelection()V

    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/TreeCell;I)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->updateItem(I)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TreeCell;)V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeCell;->updateFocus()V

    return-void
.end method

.method static synthetic access$400()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljavafx/scene/control/TreeCell;->EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljavafx/scene/control/TreeCell;->COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/TreeCell;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeCell;->oldIsExpanded:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return v0
.end method

.method static synthetic access$602(Ljavafx/scene/control/TreeCell;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeCell;->oldIsExpanded:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakTreeItemExpandedInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeCell;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->lambda$new$253(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->lambda$new$254(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->lambda$new$255(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->lambda$new$256(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$253(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeCell;->updateSelection()V

    .line 101
    return-void
.end method

.method private synthetic lambda$new$254(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeCell;->updateFocus()V

    .line 123
    return-void
.end method

.method private synthetic lambda$new$255(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeCell;->updateEditing()V

    .line 145
    return-void
.end method

.method private synthetic lambda$new$256(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->updateItem(I)V

    .line 174
    return-void
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
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeCell;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method private setTreeView(Ljavafx/scene/control/TreeView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeCell;->treeView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateEditing()V
    .locals 9

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v7

    move v1, v7

    .line 563
    .local v1, "index":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v7

    move-object v2, v7

    .line 564
    .local v2, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v3, v7

    .line 565
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v2

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move-object v4, v7

    .line 566
    .local v4, "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->isEditing()Z

    move-result v7

    move v5, v7

    .line 568
    .local v5, "editing":Z
    move v7, v1

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_2

    .line 587
    :cond_0
    :goto_1
    return-void

    .line 565
    .end local v4    # "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v5    # "editing":Z
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TreeView;->getEditingItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    goto :goto_0

    .line 570
    .restart local v4    # "editItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .restart local v5    # "editing":Z
    :cond_2
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    .line 574
    .local v6, "match":Z
    move v7, v6

    if-eqz v7, :cond_4

    move v7, v5

    if-nez v7, :cond_4

    .line 575
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->startEdit()V

    .line 587
    :cond_3
    :goto_2
    goto :goto_1

    .line 576
    :cond_4
    move v7, v6

    if-nez v7, :cond_3

    move v7, v5

    if-eqz v7, :cond_3

    .line 583
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljavafx/scene/control/TreeCell;->updateEditingIndex:Z

    .line 584
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->cancelEdit()V

    .line 585
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Ljavafx/scene/control/TreeCell;->updateEditingIndex:Z

    goto :goto_2
.end method

.method private updateFocus()V
    .locals 5

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 552
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v1

    if-nez v2, :cond_2

    .line 553
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeCell;->setFocused(Z)V

    .line 554
    goto :goto_0

    .line 557
    :cond_2
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeCell;->setFocused(Z)V

    .line 558
    goto :goto_0
.end method

.method private updateItem(I)V
    .locals 13

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v10

    move-object v2, v10

    .line 483
    .local v2, "tv":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v10, v2

    if-nez v10, :cond_0

    .line 530
    :goto_0
    return-void

    .line 486
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v10

    move v3, v10

    .line 487
    .local v3, "index":I
    move v10, v3

    if-ltz v10, :cond_2

    move v10, v3

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .line 488
    .local v4, "valid":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeCell;->isEmpty()Z

    move-result v10

    move v5, v10

    .line 489
    .local v5, "isEmpty":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v10

    move-object v6, v10

    .line 492
    .local v6, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v10, v4

    if-eqz v10, :cond_6

    .line 495
    move-object v10, v2

    move v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v10

    move-object v7, v10

    .line 496
    .local v7, "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v10, v7

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_2
    move-object v8, v10

    .line 497
    .local v8, "newValue":Ljava/lang/Object;, "TT;"
    move-object v10, v6

    if-nez v10, :cond_4

    const/4 v10, 0x0

    :goto_3
    move-object v9, v10

    .line 507
    .local v9, "oldValue":Ljava/lang/Object;, "TT;"
    move v10, v1

    move v11, v3

    if-ne v10, v11, :cond_5

    .line 508
    move-object v10, v0

    move-object v11, v9

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TreeCell;->isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 512
    .line 530
    .end local v7    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v8    # "newValue":Ljava/lang/Object;, "TT;"
    .end local v9    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_4
    goto :goto_0

    .line 487
    .end local v4    # "valid":Z
    .end local v5    # "isEmpty":Z
    .end local v6    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 496
    .restart local v4    # "valid":Z
    .restart local v5    # "isEmpty":Z
    .restart local v6    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .restart local v7    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_3
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    .line 497
    .restart local v8    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 515
    .restart local v9    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeCell;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 516
    move-object v10, v0

    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 517
    goto :goto_4

    .line 524
    .end local v7    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v8    # "newValue":Ljava/lang/Object;, "TT;"
    .end local v9    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_6
    move v10, v5

    if-nez v10, :cond_7

    move-object v10, v6

    if-nez v10, :cond_8

    :cond_7
    move-object v10, v0

    iget-boolean v10, v10, Ljavafx/scene/control/TreeCell;->isFirstRun:Z

    if-eqz v10, :cond_1

    .line 525
    :cond_8
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeCell;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 526
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 527
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/control/TreeCell;->isFirstRun:Z

    goto :goto_4
.end method

.method private updateSelection()V
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    goto :goto_0

    .line 536
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 537
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v1

    if-nez v3, :cond_3

    .line 538
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeCell;->updateSelected(Z)V

    .line 539
    goto :goto_0

    .line 542
    :cond_3
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v3

    move v2, v3

    .line 543
    .local v2, "isSelected":Z
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->isSelected()Z

    move-result v3

    move v4, v2

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 545
    :cond_4
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeCell;->updateSelected(Z)V

    .line 546
    goto :goto_0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 11

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->isEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    :goto_0
    return-void

    .line 426
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v2

    move-object v1, v2

    .line 428
    .local v1, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/IndexedCell;->cancelEdit()V

    .line 430
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 432
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TreeCell;->updateEditingIndex:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 438
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 440
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeView$EditEvent;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    .line 441
    invoke-static {}, Ljavafx/scene/control/TreeView;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v6

    move-object v7, v0

    .line 442
    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v8, v0

    .line 443
    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getItem()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TreeView$EditEvent;-><init>(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->fireEvent(Ljavafx/event/Event;)V

    .line 446
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
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v2, v4

    .line 386
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v4

    move-object v3, v4

    .line 387
    .local v3, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 389
    move-object v4, v3

    new-instance v5, Ljavafx/scene/control/TreeView$EditEvent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    .line 390
    invoke-static {}, Ljavafx/scene/control/TreeView;->editCommitEvent()Ljavafx/event/EventType;

    move-result-object v8

    move-object v9, v2

    move-object v10, v0

    .line 392
    invoke-virtual {v10}, Ljavafx/scene/control/TreeCell;->getItem()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/control/TreeView$EditEvent;-><init>(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeView;->fireEvent(Ljavafx/event/Event;)V

    .line 401
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/IndexedCell;->commitEdit(Ljava/lang/Object;)V

    .line 404
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 405
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setValue(Ljava/lang/Object;)V

    .line 406
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeCell;->updateTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 407
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 410
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 412
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 418
    move-object v4, v3

    invoke-static {v4}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 420
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
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;-><init>(Ljavafx/scene/control/TreeCell;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
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
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/TreeCell$7;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 713
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 694
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v3, v5

    .line 695
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_0

    .line 699
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v3, v5

    .line 700
    .restart local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_0

    .line 704
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :pswitch_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v5

    move-object v3, v5

    .line 705
    .local v3, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 706
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v4, v5

    .line 707
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 708
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 710
    :cond_1
    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getDisclosureNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->disclosureNode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
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
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    return-object v0
.end method

.method public final getTreeView()Ljavafx/scene/control/TreeView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->treeView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    return-object v0
.end method

.method indexChanged(II)V
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 465
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 478
    :goto_0
    return-void

    .line 474
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell;->updateItem(I)V

    .line 475
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeCell;->updateSelection()V

    .line 476
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeCell;->updateFocus()V

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object/from16 v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object/from16 v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    move-object v3, v8

    .line 654
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v8

    move-object v4, v8

    .line 655
    .local v4, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    sget-object v8, Ljavafx/scene/control/TreeCell$7;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 686
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :goto_0
    return-object v0

    .line 657
    .restart local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :pswitch_0
    move-object v8, v4

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 658
    :cond_0
    move-object v8, v3

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 659
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v8

    move-object v5, v8

    .line 660
    .local v5, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v5

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 661
    :cond_2
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    move v6, v8

    .line 662
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

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeView;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 665
    .end local v5    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v6    # "parentIndex":I
    :pswitch_1
    move-object v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 666
    :cond_3
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 667
    :cond_4
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 670
    :pswitch_2
    move-object v8, v3

    if-nez v8, :cond_5

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 671
    :cond_5
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 672
    :cond_6
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v5, v8

    .line 673
    .local v5, "index":I
    move v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    if-lt v8, v9, :cond_7

    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 674
    :cond_7
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeItem;

    move-object v6, v8

    .line 675
    .local v6, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v8, v6

    if-nez v8, :cond_8

    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 676
    :cond_8
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    move v7, v8

    .line 677
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

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeView;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 679
    .end local v5    # "index":I
    .end local v6    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v7    # "childIndex":I
    :pswitch_3
    move-object v8, v3

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_9
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v8

    goto :goto_1

    .line 680
    :pswitch_4
    move-object v8, v3

    if-nez v8, :cond_a

    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_a
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v8

    goto :goto_2

    .line 681
    :pswitch_5
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 682
    :pswitch_6
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->isSelected()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 684
    :pswitch_7
    move-object v8, v4

    if-nez v8, :cond_b

    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_b
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v8

    goto :goto_3

    .line 655
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
        :pswitch_7
    .end packed-switch
.end method

.method public final setDisclosureNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->disclosureNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public startEdit()V
    .locals 11

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v2

    move-object v1, v2

    .line 353
    .local v1, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    :cond_1
    goto :goto_0

    .line 363
    :cond_2
    move-object v2, v0

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->updateItem(I)V

    .line 368
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/IndexedCell;->startEdit()V

    .line 371
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 372
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeView$EditEvent;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    .line 373
    invoke-static {}, Ljavafx/scene/control/TreeView;->editStartEvent()Ljavafx/event/EventType;

    move-result-object v6

    move-object v7, v0

    .line 374
    invoke-virtual {v7}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    move-object v8, v0

    .line 375
    invoke-virtual {v8}, Ljavafx/scene/control/TreeCell;->getItem()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TreeView$EditEvent;-><init>(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->fireEvent(Ljavafx/event/Event;)V

    .line 378
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->requestFocus()V

    .line 380
    :cond_3
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
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->treeItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    return-object v0
.end method

.method public final treeViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell;->treeView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
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
    .line 621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 622
    .local v2, "_treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 623
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->leafProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 625
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeCell;->setTreeItem(Ljavafx/scene/control/TreeItem;)V

    .line 626
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 627
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->leafProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell;->weakLeafListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 629
    :cond_1
    return-void
.end method

.method public final updateTreeView(Ljavafx/scene/control/TreeView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v1, p1

    .local v1, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeCell;->setTreeView(Ljavafx/scene/control/TreeView;)V

    .line 609
    return-void
.end method

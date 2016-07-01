.class public Ljavafx/scene/control/TreeTableCell;
.super Ljavafx/scene/control/IndexedCell;
.source "TreeTableCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/IndexedCell",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tree-table-cell"

.field private static final PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;


# instance fields
.field private final columnIdListener:Ljavafx/beans/InvalidationListener;

.field private columnIndex:I

.field private columnStyleClassListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final columnStyleListener:Ljavafx/beans/InvalidationListener;

.field private currentObservableValue:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final editingListener:Ljavafx/beans/InvalidationListener;

.field private final focusedListener:Ljavafx/beans/InvalidationListener;

.field private isFirstRun:Z

.field private isLastVisibleColumn:Z

.field private itemDirty:Z

.field lockItemOnEdit:Z

.field private oldRowItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final rootPropertyListener:Ljavafx/beans/InvalidationListener;

.field private selectedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

.field private treeTableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private treeTableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private updateEditingIndex:Z

.field private visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakSelectedListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 758
    const-string v0, "last-visible"

    .line 759
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableCell;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    .line 758
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->lockItemOnEdit:Z

    .line 112
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->itemDirty:Z

    .line 120
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 129
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 134
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

    .line 139
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 143
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 147
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->columnStyleClassListener:Ljavafx/collections/ListChangeListener;

    .line 159
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$7;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->rootPropertyListener:Ljavafx/beans/InvalidationListener;

    .line 163
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$8;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->columnStyleListener:Ljavafx/beans/InvalidationListener;

    .line 169
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableCell$$Lambda$9;->lambdaFactory$(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->columnIdListener:Ljavafx/beans/InvalidationListener;

    .line 175
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 177
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 179
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 181
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 183
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->columnStyleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    .line 187
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->columnStyleListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    .line 189
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->columnIdListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    .line 191
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell;->rootPropertyListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

    .line 205
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableCell$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "treeTableColumn"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableCell$1;-><init>(Ljavafx/scene/control/TreeTableCell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->treeTableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 289
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "treeTableRow"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->treeTableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 464
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->isLastVisibleColumn:Z

    .line 465
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    .line 560
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->updateEditingIndex:Z

    .line 580
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    .line 582
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->isFirstRun:Z

    .line 87
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "tree-table-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 88
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TREE_TABLE_CELL:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 90
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableCell;->updateColumnIndex()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TreeTableCell;)V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableCell;->updateColumnIndex()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableCell;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableCell;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableCell;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableCell;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->weakRootPropertyListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableCell;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$102(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$103(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$104(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$105(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TreeTableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$106(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/TreeTableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$107(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$108(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$109(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$8(Ljavafx/scene/control/TreeTableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->lambda$new$110(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private isInCellSelectionMode()Z
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    move-object v1, v3

    .line 568
    .local v1, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 570
    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :goto_0
    return v0

    .line 569
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 570
    .local v2, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private synthetic lambda$new$102(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;->updateSelection()V

    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$103(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;->updateFocus()V

    .line 131
    return-void
.end method

.method private synthetic lambda$new$104(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableCell;->itemDirty:Z

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->requestLayout()V

    .line 137
    return-void
.end method

.method private synthetic lambda$new$105(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;->updateEditing()V

    .line 141
    return-void
.end method

.method private synthetic lambda$new$106(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;->updateColumnIndex()V

    .line 145
    return-void
.end method

.method private synthetic lambda$new$107(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 153
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0

    .line 157
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$108(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->updateItem(I)V

    .line 161
    return-void
.end method

.method private synthetic lambda$new$109(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->possiblySetStyle(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$110(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->possiblySetId(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method private match(Ljavafx/scene/control/TreeTablePosition;)Z
    .locals 4

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private possiblySetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "idCandidate":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableCell;->setId(Ljava/lang/String;)V

    .line 770
    :cond_1
    return-void
.end method

.method private possiblySetStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "styleCandidate":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getStyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableCell;->setStyle(Ljava/lang/String;)V

    .line 776
    :cond_1
    return-void
.end method

.method private setTableColumn(Ljavafx/scene/control/TreeTableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableCell;->treeTableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setTreeTableRow(Ljavafx/scene/control/TreeTableRow;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableCell;->treeTableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setTreeTableView(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;->treeTableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private treeTableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 233
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableCell$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "treeTableView"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableCell$2;-><init>(Ljavafx/scene/control/TreeTableCell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableCell;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 281
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method private updateColumnIndex()V
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    move-object v1, v3

    .line 469
    .local v1, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v3

    move-object v2, v3

    .line 470
    .local v2, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    .line 474
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    move-object v5, v1

    .line 476
    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Ljavafx/scene/control/TreeTableCell;->isLastVisibleColumn:Z

    .line 477
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TreeTableCell;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TreeTableCell;->isLastVisibleColumn:Z

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 478
    return-void

    .line 470
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v4

    goto :goto_0

    .line 476
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateEditing()V
    .locals 6

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v4

    move-object v1, v4

    .line 541
    .local v1, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v4

    move-object v2, v4

    .line 544
    .local v2, "editCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableCell;->match(Ljavafx/scene/control/TreeTablePosition;)Z

    move-result v4

    move v3, v4

    .line 546
    .local v3, "match":Z
    move v4, v3

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 547
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->startEdit()V

    .line 559
    :cond_2
    :goto_1
    goto :goto_0

    .line 548
    :cond_3
    move v4, v3

    if-nez v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TreeTableCell;->updateEditingIndex:Z

    .line 556
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->cancelEdit()V

    .line 557
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/control/TreeTableCell;->updateEditingIndex:Z

    goto :goto_1
.end method

.method private updateFocus()V
    .locals 8

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->isFocused()Z

    move-result v5

    move v1, v5

    .line 517
    .local v1, "isFocused":Z
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/TreeTableCell;->isInCellSelectionMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 518
    move v5, v1

    if-eqz v5, :cond_0

    .line 519
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setFocused(Z)V

    .line 521
    .line 537
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v2, v5

    .line 525
    .local v2, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move-object v5, v2

    if-nez v5, :cond_3

    :cond_2
    goto :goto_0

    .line 527
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v5

    move-object v3, v5

    .line 528
    .local v3, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v5, v3

    if-nez v5, :cond_4

    .line 529
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setFocused(Z)V

    .line 530
    goto :goto_0

    .line 533
    :cond_4
    move-object v5, v3

    if-eqz v5, :cond_5

    move-object v5, v3

    move-object v6, v0

    .line 534
    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->isFocused(ILjavafx/scene/control/TreeTableColumn;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 536
    .local v4, "isFocusedNow":Z
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setFocused(Z)V

    .line 537
    goto :goto_0

    .line 534
    .end local v4    # "isFocusedNow":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateItem(I)V
    .locals 18

    .prologue
    .line 592
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move/from16 v1, p1

    .local v1, "oldIndex":I
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-eqz v13, :cond_0

    .line 593
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TreeTableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v13, v14}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 597
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    move-object v2, v13

    .line 598
    .local v2, "tableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v13

    move-object v3, v13

    .line 599
    .local v3, "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v13, v2

    if-nez v13, :cond_5

    const/4 v13, -0x1

    :goto_0
    move v4, v13

    .line 600
    .local v4, "itemCount":I
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v13

    move v5, v13

    .line 601
    .local v5, "index":I
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->isEmpty()Z

    move-result v13

    move v6, v13

    .line 602
    .local v6, "isEmpty":Z
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getItem()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 604
    .local v7, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v13

    move-object v8, v13

    .line 605
    .local v8, "tableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v13, v8

    if-nez v13, :cond_6

    const/4 v13, 0x0

    :goto_1
    move-object v9, v13

    .line 607
    .local v9, "rowItem":Ljava/lang/Object;, "TS;"
    move v13, v5

    move v14, v4

    if-lt v13, v14, :cond_7

    const/4 v13, 0x1

    :goto_2
    move v10, v13

    .line 610
    .local v10, "indexExceedsItemCount":Z
    move v13, v10

    if-nez v13, :cond_1

    move v13, v5

    if-ltz v13, :cond_1

    move-object v13, v0

    iget v13, v13, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    if-ltz v13, :cond_1

    move-object v13, v0

    .line 613
    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v3

    if-eqz v13, :cond_1

    move-object v13, v3

    .line 615
    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableColumn;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v2

    .line 616
    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v13

    if-nez v13, :cond_8

    .line 629
    :cond_1
    move v13, v6

    if-nez v13, :cond_2

    move-object v13, v7

    if-nez v13, :cond_3

    :cond_2
    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/control/TreeTableCell;->isFirstRun:Z

    if-nez v13, :cond_3

    move v13, v10

    if-eqz v13, :cond_4

    .line 630
    :cond_3
    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 631
    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Ljavafx/scene/control/TreeTableCell;->isFirstRun:Z

    .line 633
    .line 666
    :cond_4
    :goto_3
    return-void

    .line 599
    .end local v4    # "itemCount":I
    .end local v5    # "index":I
    .end local v6    # "isEmpty":Z
    .end local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v8    # "tableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    .end local v9    # "rowItem":Ljava/lang/Object;, "TS;"
    .end local v10    # "indexExceedsItemCount":Z
    :cond_5
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v13

    goto :goto_0

    .line 605
    .restart local v4    # "itemCount":I
    .restart local v5    # "index":I
    .restart local v6    # "isEmpty":Z
    .restart local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v8    # "tableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    :cond_6
    move-object v13, v8

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableRow;->getItem()Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    .line 607
    .restart local v9    # "rowItem":Ljava/lang/Object;, "TS;"
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 635
    .restart local v10    # "indexExceedsItemCount":Z
    :cond_8
    move-object v13, v0

    move-object v14, v3

    move v15, v5

    invoke-virtual {v14, v15}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;

    move-result-object v14

    iput-object v14, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    .line 637
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-nez v13, :cond_9

    const/4 v13, 0x0

    :goto_4
    move-object v11, v13

    .line 641
    .local v11, "newValue":Ljava/lang/Object;, "TT;"
    move v13, v1

    move v14, v5

    if-ne v13, v14, :cond_b

    .line 642
    move-object v13, v0

    move-object v14, v7

    move-object v15, v11

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/TreeTableCell;->isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 646
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_a

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    :goto_5
    move-object v12, v13

    .line 647
    .local v12, "oldRowItem":Ljava/lang/Object;, "TS;"
    move-object v13, v12

    if-eqz v13, :cond_b

    move-object v13, v12

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 651
    .line 658
    .end local v12    # "oldRowItem":Ljava/lang/Object;, "TS;"
    :goto_6
    move-object v13, v0

    new-instance v14, Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v14, v13, Ljavafx/scene/control/TreeTableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    .line 660
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-nez v13, :cond_c

    .line 661
    goto :goto_3

    .line 637
    .end local v11    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_9
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v13}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    .line 646
    .restart local v11    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 655
    :cond_b
    move-object v13, v0

    move-object v14, v11

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    goto :goto_6

    .line 665
    :cond_c
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/control/TreeTableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TreeTableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v13, v14}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 666
    goto :goto_3
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    :goto_0
    return-void

    .line 492
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->isSelected()Z

    move-result v5

    move v1, v5

    .line 493
    .local v1, "isSelected":Z
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/TreeTableCell;->isInCellSelectionMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 494
    move v5, v1

    if-eqz v5, :cond_1

    .line 495
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->updateSelected(Z)V

    .line 497
    :cond_1
    goto :goto_0

    .line 500
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v2, v5

    .line 501
    .local v2, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    if-nez v5, :cond_4

    :cond_3
    goto :goto_0

    .line 503
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v5

    move-object v3, v5

    .line 504
    .local v3, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v5, v3

    if-nez v5, :cond_5

    .line 505
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->updateSelected(Z)V

    .line 506
    goto :goto_0

    .line 509
    :cond_5
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v5

    move v4, v5

    .line 510
    .local v4, "isSelectedNow":Z
    move v5, v1

    move v6, v4

    if-ne v5, v6, :cond_6

    goto :goto_0

    .line 512
    :cond_6
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->updateSelected(Z)V

    .line 513
    goto :goto_0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 11

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v4

    move-object v1, v4

    .line 387
    .local v1, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/control/IndexedCell;->cancelEdit()V

    .line 390
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 392
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v4

    move-object v2, v4

    .line 394
    .local v2, "editingCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeTableCell;->updateEditingIndex:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 400
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 402
    new-instance v4, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    .line 405
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v3, v4

    .line 409
    .local v3, "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 411
    .end local v2    # "editingCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    .end local v3    # "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :cond_2
    goto :goto_0
.end method

.method public commitEdit(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v2, v5

    .line 344
    .local v2, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 346
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v5

    move-object v3, v5

    .line 349
    .local v3, "editingCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    new-instance v5, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    move-object v8, v3

    .line 352
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editCommitEvent()Ljavafx/event/EventType;

    move-result-object v9

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v4, v5

    .line 356
    .local v4, "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    move-object v6, v4

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 364
    .end local v3    # "editingCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    .end local v4    # "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Ljavafx/scene/control/IndexedCell;->commitEdit(Ljava/lang/Object;)V

    .line 367
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 369
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 371
    move-object v5, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableView;->edit(ILjavafx/scene/control/TreeTableColumn;)V

    .line 377
    move-object v5, v2

    invoke-static {v5}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 379
    :cond_2
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
    .line 763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableCellSkin;-><init>(Ljavafx/scene/control/TreeTableCell;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/TreeTableCell$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 808
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 799
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v3, v5

    .line 800
    .local v3, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 801
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v5

    move-object v4, v5

    .line 802
    .local v4, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 803
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 805
    :cond_1
    goto :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public final getTreeTableRow()Ljavafx/scene/control/TreeTableRow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public final getTreeTableView()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    goto :goto_0
.end method

.method indexChanged(II)V
    .locals 6

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 443
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableCell;->updateItem(I)V

    .line 458
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableCell;->updateSelection()V

    .line 459
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableCell;->updateFocus()V

    .line 460
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableCell;->updateEditing()V

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeTableCell;->itemDirty:Z

    if-eqz v1, :cond_0

    .line 670
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeTableCell;->updateItem(I)V

    .line 671
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableCell;->itemDirty:Z

    .line 673
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/IndexedCell;->layoutChildren()V

    .line 674
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/TreeTableCell$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 791
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :goto_0
    return-object v0

    .line 788
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 789
    :pswitch_1
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TreeTableCell;->columnIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 790
    :pswitch_2
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableCell;->isInCellSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->isSelected()Z

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->isSelected()Z

    move-result v3

    goto :goto_1

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startEdit()V
    .locals 11

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    :goto_0
    return-void

    .line 307
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v4

    move-object v1, v4

    .line 308
    .local v1, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    move-object v2, v4

    .line 309
    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 310
    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 311
    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->isEditable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 312
    :cond_2
    goto :goto_0

    .line 318
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeTableCell;->lockItemOnEdit:Z

    if-nez v4, :cond_4

    .line 319
    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableCell;->updateItem(I)V

    .line 325
    :cond_4
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/control/IndexedCell;->startEdit()V

    .line 327
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 328
    new-instance v4, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v1

    .line 330
    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableView;->getEditingCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v7

    .line 331
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editStartEvent()Ljavafx/event/EventType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v3, v4

    .line 335
    .local v3, "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 337
    .end local v3    # "editEvent":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;
    :cond_5
    goto :goto_0
.end method

.method public final tableColumnProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public final tableRowProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell;->treeTableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
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
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableCell;->treeTableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public updateSelected(Z)V
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move v1, p1

    .local v1, "selected":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getTreeTableRow()Ljavafx/scene/control/TreeTableRow;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableCell;->setSelected(Z)V

    .line 429
    goto :goto_0
.end method

.method public final updateTreeTableColumn(Ljavafx/scene/control/TreeTableColumn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    move-object v2, v5

    .line 718
    .local v2, "oldCol":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 719
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 720
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    .line 722
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 723
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 725
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 726
    .local v3, "id":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getStyle()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 727
    .local v4, "style":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setId(Ljava/lang/String;)V

    .line 730
    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 731
    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setStyle(Ljava/lang/String;)V

    .line 735
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "style":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableCell;->setTableColumn(Ljavafx/scene/control/TreeTableColumn;)V

    .line 737
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 738
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 739
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 741
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 742
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 744
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableCell;->possiblySetId(Ljava/lang/String;)V

    .line 745
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableCell;->possiblySetStyle(Ljava/lang/String;)V

    .line 747
    :cond_2
    return-void
.end method

.method public final updateTreeTableRow(Ljavafx/scene/control/TreeTableRow;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->setTreeTableRow(Ljavafx/scene/control/TreeTableRow;)V

    .line 706
    return-void
.end method

.method public final updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "tv":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableCell;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 695
    return-void
.end method

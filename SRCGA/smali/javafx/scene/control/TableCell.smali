.class public Ljavafx/scene/control/TableCell;
.super Ljavafx/scene/control/IndexedCell;
.source "TableCell.java"


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
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "table-cell"

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

.field private selectedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end field

.field private tableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private tableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableRow;",
            ">;"
        }
    .end annotation
.end field

.field private final tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

.field private tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableView",
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
            "Ljavafx/scene/control/TableColumn",
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

.field private final weakSelectedListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePosition;",
            ">;"
        }
    .end annotation
.end field

.field private final weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 766
    const-string v0, "last-visible"

    .line 767
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TableCell;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    .line 766
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->lockItemOnEdit:Z

    .line 114
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->itemDirty:Z

    .line 122
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 131
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 136
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

    .line 141
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 145
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 149
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->columnStyleClassListener:Ljavafx/collections/ListChangeListener;

    .line 161
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$7;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->columnStyleListener:Ljavafx/beans/InvalidationListener;

    .line 167
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableCell$$Lambda$8;->lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->columnIdListener:Ljavafx/beans/InvalidationListener;

    .line 173
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 175
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 177
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->tableRowUpdateObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 179
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 181
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->columnStyleListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    .line 183
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->columnIdListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 187
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell;->columnStyleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    .line 198
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableCell$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableCell$1;-><init>(Ljavafx/scene/control/TableCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->tableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 288
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "tableRow"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->tableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 473
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->isLastVisibleColumn:Z

    .line 474
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavafx/scene/control/TableCell;->columnIndex:I

    .line 569
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->updateEditingIndex:Z

    .line 589
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    .line 591
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->isFirstRun:Z

    .line 90
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "table-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 91
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TABLE_CELL:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 93
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableCell;->updateColumnIndex()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TableCell;)V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableCell;->updateColumnIndex()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/TableCell;Ljavafx/scene/control/TableView;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TableView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->cleanUpTableViewListeners(Ljavafx/scene/control/TableView;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/TableCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableCell;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TableCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableCell;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TableCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableCell;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TableCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableCell;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$23(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$24(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$25(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$26(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$27(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/TableCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$28(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$29(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->lambda$new$30(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private cleanUpTableViewListeners(Ljavafx/scene/control/TableView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 445
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v4

    move-object v2, v4

    .line 446
    .local v2, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 447
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 450
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v4

    move-object v3, v4

    .line 451
    .local v3, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 452
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 455
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 456
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableCell;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 458
    .end local v2    # "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    .end local v3    # "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_2
    return-void
.end method

.method private isInCellSelectionMode()Z
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    move-object v1, v3

    .line 577
    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 579
    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :goto_0
    return v0

    .line 578
    .restart local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 579
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

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

.method private synthetic lambda$new$23(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;->updateSelection()V

    goto :goto_0

    .line 128
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$24(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;->updateFocus()V

    .line 133
    return-void
.end method

.method private synthetic lambda$new$25(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TableCell;->itemDirty:Z

    .line 138
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->requestLayout()V

    .line 139
    return-void
.end method

.method private synthetic lambda$new$26(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;->updateEditing()V

    .line 143
    return-void
.end method

.method private synthetic lambda$new$27(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;->updateColumnIndex()V

    .line 147
    return-void
.end method

.method private synthetic lambda$new$28(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 155
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0

    .line 159
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$29(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->possiblySetStyle(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$30(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->possiblySetId(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method private match(Ljavafx/scene/control/TablePosition;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;)Z"
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private possiblySetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "idCandidate":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableCell;->setId(Ljava/lang/String;)V

    .line 773
    :cond_1
    return-void
.end method

.method private possiblySetStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "styleCandidate":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getStyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableCell;->setStyle(Ljava/lang/String;)V

    .line 779
    :cond_1
    return-void
.end method

.method private setTableColumn(Ljavafx/scene/control/TableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableCell;->tableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setTableRow(Ljavafx/scene/control/TableRow;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableRow;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableCell;->tableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setTableView(Ljavafx/scene/control/TableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 237
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableCell$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableCell$2;-><init>(Ljavafx/scene/control/TableCell;)V

    iput-object v2, v1, Ljavafx/scene/control/TableCell;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 276
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method private updateColumnIndex()V
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    move-object v1, v3

    .line 478
    .local v1, "tv":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    move-object v2, v3

    .line 479
    .local v2, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Ljavafx/scene/control/TableCell;->columnIndex:I

    .line 483
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TableCell;->columnIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TableCell;->columnIndex:I

    move-object v5, v0

    .line 485
    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Ljavafx/scene/control/TableCell;->isLastVisibleColumn:Z

    .line 486
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableCell;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TableCell;->isLastVisibleColumn:Z

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 487
    return-void

    .line 479
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I

    move-result v4

    goto :goto_0

    .line 485
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateEditing()V
    .locals 5

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v3

    move-object v1, v3

    .line 553
    .local v1, "editCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableCell;->match(Ljavafx/scene/control/TablePosition;)Z

    move-result v3

    move v2, v3

    .line 555
    .local v2, "match":Z
    move v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->isEditing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 556
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->startEdit()V

    .line 568
    :cond_2
    :goto_1
    goto :goto_0

    .line 557
    :cond_3
    move v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 564
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/control/TableCell;->updateEditingIndex:Z

    .line 565
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->cancelEdit()V

    .line 566
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/control/TableCell;->updateEditingIndex:Z

    goto :goto_1
.end method

.method private updateFocus()V
    .locals 10

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->isFocused()Z

    move-result v7

    move v1, v7

    .line 526
    .local v1, "isFocused":Z
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/TableCell;->isInCellSelectionMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 527
    move v7, v1

    if-eqz v7, :cond_0

    .line 528
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableCell;->setFocused(Z)V

    .line 530
    .line 547
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v7

    move-object v2, v7

    .line 534
    .local v2, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v7

    move-object v3, v7

    .line 535
    .local v3, "tableRow":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v7

    move v4, v7

    .line 536
    .local v4, "index":I
    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v3

    if-nez v7, :cond_3

    :cond_2
    goto :goto_0

    .line 538
    :cond_3
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v7

    move-object v5, v7

    .line 539
    .local v5, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v7, v5

    if-nez v7, :cond_4

    .line 540
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableCell;->setFocused(Z)V

    .line 541
    goto :goto_0

    .line 544
    :cond_4
    move-object v7, v5

    if-eqz v7, :cond_5

    move-object v7, v5

    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableView$TableViewFocusModel;->isFocused(ILjavafx/scene/control/TableColumn;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 546
    .local v6, "isFocusedNow":Z
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableCell;->setFocused(Z)V

    .line 547
    goto :goto_0

    .line 544
    .end local v6    # "isFocusedNow":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateItem(I)V
    .locals 19

    .prologue
    .line 601
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move/from16 v1, p1

    .local v1, "oldIndex":I
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-eqz v14, :cond_0

    .line 602
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/control/TableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v14, v15}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 606
    :cond_0
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v14

    move-object v2, v14

    .line 607
    .local v2, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v14, v2

    if-nez v14, :cond_5

    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v14

    :goto_0
    move-object v3, v14

    .line 608
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v14

    move-object v4, v14

    .line 609
    .local v4, "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v14, v3

    if-nez v14, :cond_6

    const/4 v14, -0x1

    :goto_1
    move v5, v14

    .line 610
    .local v5, "itemCount":I
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v14

    move v6, v14

    .line 611
    .local v6, "index":I
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->isEmpty()Z

    move-result v14

    move v7, v14

    .line 612
    .local v7, "isEmpty":Z
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->getItem()Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    .line 614
    .local v8, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v14

    move-object v9, v14

    .line 615
    .local v9, "tableRow":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    move-object v14, v9

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_2
    move-object v10, v14

    .line 617
    .local v10, "rowItem":Ljava/lang/Object;, "TS;"
    move v14, v6

    move v15, v5

    if-lt v14, v15, :cond_8

    const/4 v14, 0x1

    :goto_3
    move v11, v14

    .line 620
    .local v11, "indexExceedsItemCount":Z
    move v14, v11

    if-nez v14, :cond_1

    move v14, v6

    if-ltz v14, :cond_1

    move-object v14, v0

    iget v14, v14, Ljavafx/scene/control/TableCell;->columnIndex:I

    if-ltz v14, :cond_1

    move-object v14, v0

    .line 623
    invoke-virtual {v14}, Ljavafx/scene/control/TableCell;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v4

    if-eqz v14, :cond_1

    move-object v14, v4

    .line 625
    invoke-virtual {v14}, Ljavafx/scene/control/TableColumn;->isVisible()Z

    move-result v14

    if-nez v14, :cond_9

    .line 638
    :cond_1
    move v14, v7

    if-nez v14, :cond_2

    move-object v14, v8

    if-nez v14, :cond_3

    :cond_2
    move-object v14, v0

    iget-boolean v14, v14, Ljavafx/scene/control/TableCell;->isFirstRun:Z

    if-nez v14, :cond_3

    move v14, v11

    if-eqz v14, :cond_4

    .line 639
    :cond_3
    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 640
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Ljavafx/scene/control/TableCell;->isFirstRun:Z

    .line 642
    .line 674
    :cond_4
    :goto_4
    return-void

    .line 607
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .end local v4    # "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    .end local v5    # "itemCount":I
    .end local v6    # "index":I
    .end local v7    # "isEmpty":Z
    .end local v8    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v9    # "tableRow":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    .end local v10    # "rowItem":Ljava/lang/Object;, "TS;"
    .end local v11    # "indexExceedsItemCount":Z
    :cond_5
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v14

    goto :goto_0

    .line 609
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .restart local v4    # "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_6
    move-object v14, v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_1

    .line 615
    .restart local v5    # "itemCount":I
    .restart local v6    # "index":I
    .restart local v7    # "isEmpty":Z
    .restart local v8    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v9    # "tableRow":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    :cond_7
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/control/TableRow;->getItem()Ljava/lang/Object;

    move-result-object v14

    goto :goto_2

    .line 617
    .restart local v10    # "rowItem":Ljava/lang/Object;, "TS;"
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 644
    .restart local v11    # "indexExceedsItemCount":Z
    :cond_9
    move-object v14, v0

    move-object v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/control/TableColumn;->getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;

    move-result-object v15

    iput-object v15, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    .line 645
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-nez v14, :cond_a

    const/4 v14, 0x0

    :goto_5
    move-object v12, v14

    .line 649
    .local v12, "newValue":Ljava/lang/Object;, "TT;"
    move v14, v1

    move v15, v6

    if-ne v14, v15, :cond_c

    .line 650
    move-object v14, v0

    move-object v15, v8

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableCell;->isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 654
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_b

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    :goto_6
    move-object v13, v14

    .line 655
    .local v13, "oldRowItem":Ljava/lang/Object;, "TS;"
    move-object v14, v13

    if-eqz v14, :cond_c

    move-object v14, v13

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 659
    .line 666
    .end local v13    # "oldRowItem":Ljava/lang/Object;, "TS;"
    :goto_7
    move-object v14, v0

    new-instance v15, Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v15, v14, Ljavafx/scene/control/TableCell;->oldRowItemRef:Ljava/lang/ref/WeakReference;

    .line 668
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    if-nez v14, :cond_d

    .line 669
    goto :goto_4

    .line 645
    .end local v12    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_a
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v14}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v14

    goto :goto_5

    .line 654
    .restart local v12    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 663
    :cond_c
    move-object v14, v0

    move-object v15, v12

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableCell;->updateItem(Ljava/lang/Object;Z)V

    goto :goto_7

    .line 673
    :cond_d
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableCell;->currentObservableValue:Ljavafx/beans/value/ObservableValue;

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/control/TableCell;->weaktableRowUpdateObserver:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v14, v15}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 674
    goto :goto_4
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    :goto_0
    return-void

    .line 501
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->isSelected()Z

    move-result v5

    move v1, v5

    .line 502
    .local v1, "isSelected":Z
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/TableCell;->isInCellSelectionMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 503
    move v5, v1

    if-eqz v5, :cond_1

    .line 504
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->updateSelected(Z)V

    .line 506
    :cond_1
    goto :goto_0

    .line 509
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v2, v5

    .line 510
    .local v2, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    if-nez v5, :cond_4

    :cond_3
    goto :goto_0

    .line 512
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v5

    move-object v3, v5

    .line 513
    .local v3, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v5, v3

    if-nez v5, :cond_5

    .line 514
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->updateSelected(Z)V

    .line 515
    goto :goto_0

    .line 518
    :cond_5
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v5

    move v4, v5

    .line 519
    .local v4, "isSelectedNow":Z
    move v5, v1

    move v6, v4

    if-ne v5, v6, :cond_6

    goto :goto_0

    .line 521
    :cond_6
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->updateSelected(Z)V

    .line 522
    goto :goto_0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 11

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 402
    :goto_0
    return-void

    .line 378
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    move-object v1, v4

    .line 380
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/control/IndexedCell;->cancelEdit()V

    .line 383
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 384
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v4

    move-object v2, v4

    .line 385
    .local v2, "editingCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TableCell;->updateEditingIndex:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 391
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 393
    new-instance v4, Ljavafx/scene/control/TableColumn$CellEditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    .line 396
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/TableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v3, v4

    .line 400
    .local v3, "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;*>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 402
    .end local v2    # "editingCell":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    .end local v3    # "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;*>;"
    :cond_2
    goto :goto_0
.end method

.method public commitEdit(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    :goto_0
    return-void

    .line 339
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    move-object v2, v4

    .line 340
    .local v2, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 342
    new-instance v4, Ljavafx/scene/control/TableColumn$CellEditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    move-object v7, v2

    .line 344
    invoke-virtual {v7}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v7

    .line 345
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editCommitEvent()Ljavafx/event/EventType;

    move-result-object v8

    move-object v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/TableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v3, v4

    .line 349
    .local v3, "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 357
    .end local v3    # "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/IndexedCell;->commitEdit(Ljava/lang/Object;)V

    .line 360
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 362
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 364
    move-object v4, v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableView;->edit(ILjavafx/scene/control/TableColumn;)V

    .line 370
    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 372
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
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableCellSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableCellSkin;-><init>(Ljavafx/scene/control/TableCell;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/TableCell$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 812
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 803
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v3, v5

    .line 804
    .local v3, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 805
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v5

    move-object v4, v5

    .line 806
    .local v4, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 807
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focus(ILjavafx/scene/control/TableColumn;)V

    .line 809
    :cond_1
    goto :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableColumn()Ljavafx/scene/control/TableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public final getTableRow()Ljavafx/scene/control/TableRow;
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableRow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public final getTableView()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    goto :goto_0
.end method

.method indexChanged(II)V
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 468
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableCell;->updateItem(I)V

    .line 469
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableCell;->updateSelection()V

    .line 470
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableCell;->updateFocus()V

    .line 471
    return-void
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TableCell;->itemDirty:Z

    if-eqz v1, :cond_0

    .line 678
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/TableCell;->updateItem(I)V

    .line 679
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/TableCell;->itemDirty:Z

    .line 681
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/IndexedCell;->layoutChildren()V

    .line 682
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/TableCell$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 795
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :goto_0
    return-object v0

    .line 792
    .restart local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 793
    :pswitch_1
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TableCell;->columnIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 794
    :pswitch_2
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableCell;->isInCellSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->isSelected()Z

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableRow;->isSelected()Z

    move-result v3

    goto :goto_1

    .line 791
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
    .line 303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    move-object v1, v4

    .line 304
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    move-object v2, v4

    .line 305
    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 306
    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 307
    invoke-virtual {v4}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->isEditable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 308
    .line 333
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TableCell;->lockItemOnEdit:Z

    if-nez v4, :cond_3

    .line 315
    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableCell;->updateItem(I)V

    .line 321
    :cond_3
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/control/IndexedCell;->startEdit()V

    .line 323
    move-object v4, v2

    if-eqz v4, :cond_4

    .line 324
    new-instance v4, Ljavafx/scene/control/TableColumn$CellEditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v1

    .line 326
    invoke-virtual {v7}, Ljavafx/scene/control/TableView;->getEditingCell()Ljavafx/scene/control/TablePosition;

    move-result-object v7

    .line 327
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editStartEvent()Ljavafx/event/EventType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/TableColumn$CellEditEvent;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V

    move-object v3, v4

    .line 331
    .local v3, "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;*>;"
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 333
    .end local v3    # "editEvent":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;*>;"
    :cond_4
    goto :goto_0
.end method

.method public final tableColumnProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public final tableRowProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TableRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell;->tableRow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public final tableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableCell;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    return-object v0
.end method

.method public updateSelected(Z)V
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move v1, p1

    .local v1, "selected":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableCell;->getTableRow()Ljavafx/scene/control/TableRow;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableRow;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableCell;->setSelected(Z)V

    .line 420
    goto :goto_0
.end method

.method public final updateTableColumn(Ljavafx/scene/control/TableColumn;)V
    .locals 7

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumn;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v5

    move-object v2, v5

    .line 726
    .local v2, "oldCol":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 727
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 728
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    .line 730
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 731
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 733
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 734
    .local v3, "id":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getStyle()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 735
    .local v4, "style":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->setId(Ljava/lang/String;)V

    .line 738
    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 739
    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableCell;->setStyle(Ljava/lang/String;)V

    .line 743
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "style":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableCell;->setTableColumn(Ljavafx/scene/control/TableColumn;)V

    .line 745
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 746
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 747
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 749
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnIdListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 750
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TableCell;->weakColumnStyleListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 752
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableCell;->possiblySetId(Ljava/lang/String;)V

    .line 753
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableCell;->possiblySetStyle(Ljava/lang/String;)V

    .line 755
    :cond_2
    return-void
.end method

.method public final updateTableRow(Ljavafx/scene/control/TableRow;)V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "tableRow":Ljavafx/scene/control/TableRow;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->setTableRow(Ljavafx/scene/control/TableRow;)V

    .line 714
    return-void
.end method

.method public final updateTableView(Ljavafx/scene/control/TableView;)V
    .locals 4

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "tv":Ljavafx/scene/control/TableView;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 703
    return-void
.end method

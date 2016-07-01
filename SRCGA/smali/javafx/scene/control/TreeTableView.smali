.class public Ljavafx/scene/control/TreeTableView;
.super Ljavafx/scene/control/Control;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;,
        Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;,
        Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;,
        Ljavafx/scene/control/TreeTableView$EditEvent;,
        Ljavafx/scene/control/TreeTableView$ResizeFeatures;,
        Ljavafx/scene/control/TreeTableView$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Control;"
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "root"
.end annotation


# static fields
.field public static final CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SORT_POLICY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tree-table-view"

.field private static final EDIT_ANY_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EDIT_CANCEL_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EDIT_COMMIT_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EDIT_START_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

.field public static final UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cellSelectionModelInvalidationListener:Ljavafx/beans/InvalidationListener;

.field private final columnComparatorObserver:Ljavafx/beans/InvalidationListener;

.field private columnResizePolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final columnSortTypeObserver:Ljavafx/beans/InvalidationListener;

.field private final columnSortableObserver:Ljavafx/beans/InvalidationListener;

.field private final columnVisibleObserver:Ljavafx/beans/InvalidationListener;

.field private final columns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final columnsObserver:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field contentWidth:D

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private expandedItemCountDirty:Z

.field private fixedCellSize:Ljavafx/beans/property/DoubleProperty;

.field private focusModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private isInited:Z

.field private final lastKnownColumnIndex:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastSortEventSupportInfo:[Ljava/lang/Object;

.field private lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

.field private onScrollTo:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private onScrollToColumn:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;>;>;"
        }
    .end annotation
.end field

.field private onSort:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/SortEvent",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;>;>;"
        }
    .end annotation
.end field

.field private placeholder:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final rootEvent:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private rowFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private showRoot:Ljavafx/beans/property/BooleanProperty;

.field private sortLock:Z

.field private sortMode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeSortMode;",
            ">;"
        }
    .end annotation
.end field

.field private sortOrder:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private sortPolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

.field private treeColumn:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private treeItemCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private final unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final visibleLeafColumns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final weakCellSelectionModelInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnComparatorObserver:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnSortTypeObserver:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnSortableObserver:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnVisibleObserver:Ljavafx/beans/WeakInvalidationListener;

.field private final weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private weakRootEventListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 420
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TREE_TABLE_VIEW_EDIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    .line 433
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 434
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_START"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    .line 447
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 448
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_CANCEL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    .line 462
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 463
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_COMMIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    .line 502
    new-instance v0, Ljavafx/scene/control/TreeTableView$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    .line 527
    new-instance v0, Ljavafx/scene/control/TreeTableView$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$2;-><init>()V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    .line 556
    new-instance v0, Ljavafx/scene/control/TreeTableView$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$3;-><init>()V

    sput-object v0, Ljavafx/scene/control/TreeTableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    .line 1935
    const-string v0, "cell-selection"

    .line 1936
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableView;->PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

    .line 1937
    const-string v0, "row-selection"

    .line 1938
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableView;->PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

    .line 1937
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeTableView;-><init>(Ljavafx/scene/control/TreeItem;)V

    .line 354
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 595
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    .line 599
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->treeItemCacheMap:Ljava/util/Map;

    .line 603
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columns:Ljavafx/collections/ObservableList;

    .line 607
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    .line 608
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    invoke-static {v3}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;

    .line 613
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->sortOrder:Ljavafx/collections/ObservableList;

    .line 622
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableView;->isInited:Z

    .line 635
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->rootEvent:Ljavafx/event/EventHandler;

    .line 654
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$4;-><init>(Ljavafx/scene/control/TreeTableView;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columnsObserver:Ljavafx/collections/ListChangeListener;

    .line 813
    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->lastKnownColumnIndex:Ljava/util/WeakHashMap;

    .line 815
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columnVisibleObserver:Ljavafx/beans/InvalidationListener;

    .line 819
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columnSortableObserver:Ljavafx/beans/InvalidationListener;

    .line 825
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columnSortTypeObserver:Ljavafx/beans/InvalidationListener;

    .line 831
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->columnComparatorObserver:Ljavafx/beans/InvalidationListener;

    .line 838
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->cellSelectionModelInvalidationListener:Ljavafx/beans/InvalidationListener;

    .line 846
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->columnVisibleObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakColumnVisibleObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 849
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->columnSortableObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakColumnSortableObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 852
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->columnSortTypeObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakColumnSortTypeObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 855
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->columnComparatorObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakColumnComparatorObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 858
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->columnsObserver:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    .line 861
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->cellSelectionModelInvalidationListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->weakCellSelectionModelInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    .line 873
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "root"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$5;-><init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->root:Ljavafx/beans/property/ObjectProperty;

    .line 1083
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "expandedItemCount"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 1844
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableView;->sortLock:Z

    .line 1845
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1846
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 365
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "tree-table-view"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 366
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->TREE_TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 368
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 369
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 373
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;-><init>(Ljavafx/scene/control/TreeTableView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->setSelectionModel(Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;)V

    .line 374
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;-><init>(Ljavafx/scene/control/TreeTableView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->setFocusModel(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)V

    .line 378
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 382
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$7;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 389
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView$$Lambda$8;->lambdaFactory$(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/MapChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 398
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableView;->isInited:Z

    .line 399
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TreeTableView;)V
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView;->updateVisibleLeafColumns()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/EventHandler;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->rootEvent:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TreeTableView;)Z
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return v0
.end method

.method static synthetic access$1102(Ljavafx/scene/control/TreeTableView;Z)Z
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/TreeTableView;)V
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView;->updateRootExpanded()V

    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakCellSelectionModelInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/control/TreeTableView;)Z
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeTableView;->isInited:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return v0
.end method

.method static synthetic access$1700(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakColumnVisibleObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$2300()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakColumnSortableObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakColumnSortTypeObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakColumnComparatorObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/TreeTableView;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortOrder:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/TreeTableView;)Ljava/util/WeakHashMap;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->lastKnownColumnIndex:Ljava/util/WeakHashMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/WeakEventHandler;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->weakRootEventListener:Ljavafx/event/WeakEventHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$902(Ljavafx/scene/control/TreeTableView;Ljavafx/event/WeakEventHandler;)Ljavafx/event/WeakEventHandler;
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/WeakEventHandler;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView;->weakRootEventListener:Ljavafx/event/WeakEventHandler;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$116(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$117(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$118(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$119(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$120(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$121(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/control/TreeTableView;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$114(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/control/TreeTableView;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->lambda$new$115(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1912
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "cols":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v2, p2

    .local v2, "vlc":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTableColumn;

    move-object v4, v6

    .line 1913
    .local v4, "c":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 1917
    .local v5, "hasChildren":Z
    move v6, v5

    if-eqz v6, :cond_3

    .line 1918
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/control/TreeTableView;->buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V

    .line 1922
    :cond_1
    :goto_2
    goto :goto_0

    .line 1915
    .end local v5    # "hasChildren":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1919
    .restart local v5    # "hasChildren":Z
    :cond_3
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1920
    move-object v6, v2

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 1923
    .end local v4    # "c":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    .end local v5    # "hasChildren":Z
    :cond_4
    return-void
.end method

.method private comparatorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1372
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "comparator"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1374
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method private varargs doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1849
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "sortEventType":Ljavafx/scene/control/TableUtil$SortEventType;
    move-object v2, p2

    .local v2, "supportInfo":[Ljava/lang/Object;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/TreeTableView;->sortLock:Z

    if-eqz v3, :cond_0

    .line 1850
    .line 1858
    :goto_0
    return-void

    .line 1853
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1854
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 1855
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->sort()V

    .line 1856
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1857
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 1858
    goto :goto_0
.end method

.method public static editAnyEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeTableView$EditEvent",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 418
    sget-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCancelEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeTableView$EditEvent",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCommitEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeTableView$EditEvent",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editStartEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeTableView$EditEvent",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Ljavafx/scene/control/TreeTableView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1138
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editingCell"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1140
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1974
    # getter for: Ljavafx/scene/control/TreeTableView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TreeTableView$StyleableProperties;->access$2200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeLevel(Ljavafx/scene/control/TreeItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<*>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/TreeView;->getNodeLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v1

    move v0, v1

    .end local v0    # "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    return v0
.end method

.method private synthetic lambda$new$114(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/control/TableUtil$SortEventType;->SORT_ORDER_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method private synthetic lambda$new$115(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, p1

    .local v2, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TableView.contentWidth"

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 392
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->setContentWidth(D)V

    .line 394
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "TableView.contentWidth"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$116(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 6

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v2, v4

    .line 639
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    const/4 v4, 0x0

    move v3, v4

    .line 640
    .local v3, "match":Z
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 641
    move-object v4, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    const/4 v4, 0x1

    move v3, v4

    .line 648
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 649
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    .line 650
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->requestLayout()V

    .line 652
    :cond_1
    return-void

    .line 645
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method private synthetic lambda$new$117(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView;->updateVisibleLeafColumns()V

    .line 817
    return-void
.end method

.method private synthetic lambda$new$118(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v3

    .line 821
    .local v2, "col":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 823
    :goto_0
    return-void

    .line 822
    :cond_0
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORTABLE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 823
    goto :goto_0
.end method

.method private synthetic lambda$new$119(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v3

    .line 827
    .local v2, "col":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 829
    :goto_0
    return-void

    .line 828
    :cond_0
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORT_TYPE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 829
    goto :goto_0
.end method

.method private synthetic lambda$new$120(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/SimpleObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/SimpleObjectProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v3

    .line 833
    .local v2, "col":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_COMPARATOR_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 835
    goto :goto_0
.end method

.method private synthetic lambda$new$121(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    move v2, v3

    .line 840
    .local v2, "isCellSelection":Z
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TreeTableView;->PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 841
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TreeTableView;->PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

    move v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 842
    return-void

    .line 841
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setComparator(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TS;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView;->comparatorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1363
    return-void
.end method

.method private setContentWidth(D)V
    .locals 11

    .prologue
    .line 1883
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-wide v1, p1

    .local v1, "contentWidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TreeTableView;->contentWidth:D

    .line 1884
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/TreeTableView;->isInited:Z

    if-eqz v3, :cond_0

    .line 1890
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v3

    new-instance v4, Ljavafx/scene/control/TreeTableView$ResizeFeatures;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Double;)V

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1892
    :cond_0
    return-void
.end method

.method private setEditingCell(Ljavafx/scene/control/TreeTablePosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView;->editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1123
    return-void
.end method

.method private setExpandedItemCount(I)V
    .locals 4

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 1089
    return-void
.end method

.method private updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1861
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v5

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/TreeUtil;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;ZZ)I

    move-result v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView;->setExpandedItemCount(I)V

    .line 1863
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    if-eqz v2, :cond_0

    .line 1866
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->treeItemCacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1869
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    .line 1870
    return-void
.end method

.method private updateRootExpanded()V
    .locals 3

    .prologue
    .line 1875
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1876
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 1878
    :cond_0
    return-void
.end method

.method private updateVisibleLeafColumns()V
    .locals 11

    .prologue
    .line 1899
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1900
    .local v2, "cols":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V

    .line 1901
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1908
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v3

    new-instance v4, Ljavafx/scene/control/TreeTableView$ResizeFeatures;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Double;)V

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1909
    return-void
.end method


# virtual methods
.method public final columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1183
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$8;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "columnResizePolicy"

    sget-object v7, Ljavafx/scene/control/TreeTableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$8;-><init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    .line 1203
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final comparatorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView;->comparatorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
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
    .line 1987
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;-><init>(Ljavafx/scene/control/TreeTableView;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public edit(ILjavafx/scene/control/TreeTableColumn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->isEditable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1706
    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    move v3, v1

    if-gez v3, :cond_2

    move-object v3, v2

    if-nez v3, :cond_2

    .line 1710
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView;->setEditingCell(Ljavafx/scene/control/TreeTablePosition;)V

    .line 1714
    :goto_1
    goto :goto_0

    .line 1712
    :cond_2
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeTablePosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView;->setEditingCell(Ljavafx/scene/control/TreeTablePosition;)V

    goto :goto_1
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1113
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 1115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView;->editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final expandedItemCountProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1313
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1314
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeTableView$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$9;-><init>(Ljavafx/scene/control/TreeTableView;D)V

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    .line 1328
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v1
.end method

.method public final focusModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1067
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "focusModel"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    .line 1069
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final getColumnResizePolicy()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TreeTableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    goto :goto_0
.end method

.method public final getColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->columns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    goto :goto_0
.end method

.method public getControlCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1982
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final getEditingCell()Ljavafx/scene/control/TreeTablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTablePosition;

    goto :goto_0
.end method

.method public final getExpandedItemCount()I
    .locals 3

    .prologue
    .line 1091
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    if-eqz v1, :cond_0

    .line 1092
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeTableView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 1094
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0
.end method

.method public final getFixedCellSize()D
    .locals 4

    .prologue
    .line 1289
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1057
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    goto :goto_0
.end method

.method public getOnScrollTo()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1494
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1496
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getOnScrollToColumn()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;>;"
        }
    .end annotation

    .prologue
    .line 1547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1548
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1550
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getOnSort()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/SortEvent",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1428
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1430
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getPlaceholder()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getRoot()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->root:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method

.method public getRow(Ljavafx/scene/control/TreeItem;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)I"
        }
    .end annotation

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Ljavafx/scene/control/TreeUtil;->getRow(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;ZZ)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0
.end method

.method public final getRowFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    goto :goto_0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    goto :goto_0
.end method

.method public final getSortMode()Ljavafx/scene/control/TreeSortMode;
    .locals 2

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TreeSortMode;->ALL_DESCENDANTS:Ljavafx/scene/control/TreeSortMode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortMode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeSortMode;

    goto :goto_0
.end method

.method public final getSortOrder()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortOrder:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final getSortPolicy()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TreeTableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    check-cast v1, Ljavafx/util/Callback;

    .line 1400
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .line 1398
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 1400
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    goto :goto_0
.end method

.method public final getTreeColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->treeColumn:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->treeColumn:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    goto :goto_0
.end method

.method public getTreeItem(I)Ljavafx/scene/control/TreeItem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "row":I
    move v5, v1

    if-gez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 1618
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .line 1602
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    :goto_1
    move v2, v5

    .line 1604
    .local v2, "_row":I
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    if-eqz v5, :cond_3

    .line 1605
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 1616
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move v6, v2

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/TreeUtil;->getItem(Ljavafx/scene/control/TreeItem;IZ)Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v3, v5

    .line 1617
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->treeItemCacheMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/ref/SoftReference;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1618
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 1602
    .end local v2    # "_row":I
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_2
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1607
    .restart local v2    # "_row":I
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->treeItemCacheMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1608
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView;->treeItemCacheMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    move-object v3, v5

    .line 1609
    .local v3, "treeItemRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavafx/scene/control/TreeItem<TS;>;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeItem;

    move-object v4, v5

    .line 1610
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1611
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1634
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v2, v5

    .line 1636
    .local v2, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, -0x1

    move v0, v5

    .line 1651
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return v0

    .line 1637
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1639
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 1640
    .local v3, "level":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    .line 1641
    .local v4, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1642
    add-int/lit8 v3, v3, 0x1

    .line 1644
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_3

    .line 1645
    .line 1651
    :cond_2
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 1648
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method public getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "column":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 1738
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableColumn;

    move-object v0, v2

    goto :goto_0
.end method

.method public getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1721
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)I"
        }
    .end annotation

    .prologue
    .line 1729
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isShowRoot()Z
    .locals 2

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isTableMenuButtonVisible()Z
    .locals 2

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    .line 1464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeTableView;->expandedItemCountDirty:Z

    if-eqz v1, :cond_0

    .line 1465
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeTableView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 1468
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/Control;->layoutChildren()V

    .line 1469
    return-void
.end method

.method public onScrollToColumnProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1555
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$13;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$13;-><init>(Ljavafx/scene/control/TreeTableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    .line 1572
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public onScrollToProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 1500
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1501
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$12;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$12;-><init>(Ljavafx/scene/control/TreeTableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    .line 1515
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public onSortProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/SortEvent",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1435
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$11;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableView$11;-><init>(Ljavafx/scene/control/TreeTableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    .line 1451
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final placeholderProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 1249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1250
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "placeholder"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    .line 1252
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Ljavafx/scene/control/TreeTableView$14;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2035
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return-object v0

    .line 2001
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 2002
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 2010
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 2011
    .local v3, "rows":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableRow<TS;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 2012
    .local v4, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v3

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTableRow;

    move-object v6, v8

    .line 2014
    .local v6, "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeTableRow;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v7, v8

    .line 2015
    .local v7, "cells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 2016
    :cond_0
    goto :goto_1

    .line 2017
    .end local v6    # "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    .end local v7    # "cells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v8, v4

    invoke-static {v8}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 2020
    .end local v3    # "rows":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableRow<TS;>;>;"
    .end local v4    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :pswitch_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 2021
    .local v3, "row":Ljavafx/scene/Node;
    move-object v8, v3

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 2022
    :cond_2
    move-object v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v4, v8

    .line 2024
    .local v4, "cell":Ljavafx/scene/Node;
    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v4

    :goto_2
    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v3

    goto :goto_2

    .line 2028
    .end local v3    # "row":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/Node;
    :pswitch_4
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeTableRow;

    move-object v3, v8

    .line 2029
    .local v3, "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    move-object v8, v3

    if-eqz v8, :cond_4

    move-object v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TreeTableRow;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 2032
    .end local v3    # "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TS;>;"
    :pswitch_5
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v8

    move-object v3, v8

    .line 2033
    .local v3, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v8, v3

    if-eqz v8, :cond_5

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v8

    sget-object v9, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 2000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 1833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "tableRecreateKey"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1834
    return-void
.end method

.method public resizeColumn(Ljavafx/scene/control/TreeTableColumn;D)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;D)Z"
        }
    .end annotation

    .prologue
    .line 1692
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-wide/from16 v2, p2

    .local v2, "delta":D
    move-object v5, v1

    if-eqz v5, :cond_0

    move-wide v5, v2

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 1696
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :goto_0
    return v0

    .line 1694
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v5

    new-instance v6, Ljavafx/scene/control/TreeTableView$ResizeFeatures;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/TreeTableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Double;)V

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, v5

    .line 1695
    .local v4, "allowed":Z
    move v5, v4

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1696
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public final rootProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->root:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1227
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "rowFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    .line 1229
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public scrollTo(I)V
    .locals 4

    .prologue
    .line 1480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 1481
    return-void
.end method

.method public scrollToColumn(Ljavafx/scene/control/TreeTableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToColumn(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)V

    .line 1524
    return-void
.end method

.method public scrollToColumnIndex(I)V
    .locals 5

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "columnIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1532
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableColumnBase;

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToColumn(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)V

    .line 1534
    :cond_0
    return-void
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1018
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$7;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "selectionModel"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableView$7;-><init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 1039
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final setColumnResizePolicy(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableView$ResizeFeatures;Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1170
    return-void
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1102
    return-void
.end method

.method public final setFixedCellSize(D)V
    .locals 7

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1277
    return-void
.end method

.method public final setFocusModel(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1051
    return-void
.end method

.method public setOnScrollTo(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1490
    return-void
.end method

.method public setOnScrollToColumn(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->onScrollToColumnProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1544
    return-void
.end method

.method public setOnSort(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/SortEvent",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->onSortProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1424
    return-void
.end method

.method public final setPlaceholder(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1256
    return-void
.end method

.method public final setRoot(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 906
    return-void
.end method

.method public final setRowFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableView<TS;>;Ljavafx/scene/control/TreeTableRow<TS;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1233
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1001
    return-void
.end method

.method public final setShowRoot(Z)V
    .locals 4

    .prologue
    .line 937
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 938
    return-void
.end method

.method public final setSortMode(Ljavafx/scene/control/TreeSortMode;)V
    .locals 4

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeSortMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->sortModeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1347
    return-void
.end method

.method public final setSortPolicy(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableView<TS;>;Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->sortPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1395
    return-void
.end method

.method public final setTableMenuButtonVisible(Z)V
    .locals 4

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1160
    return-void
.end method

.method public final setTreeColumn(Ljavafx/scene/control/TreeTableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->treeColumnProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method public final showRootProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 9

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 953
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "showRoot"

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$6;-><init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    .line 960
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public sort()V
    .locals 20

    .prologue
    .line 1751
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v13

    move-object v1, v13

    .line 1754
    .local v1, "sortOrder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getComparator()Ljava/util/Comparator;

    move-result-object v13

    move-object v2, v13

    .line 1755
    .local v2, "oldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TS;>;>;"
    move-object v13, v0

    move-object v14, v1

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v13, v14}, Ljavafx/scene/control/TreeTableView;->setComparator(Ljava/util/Comparator;)V

    .line 1759
    new-instance v13, Ljavafx/scene/control/SortEvent;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/control/SortEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    move-object v3, v13

    .line 1760
    .local v3, "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;"
    move-object v13, v0

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/scene/control/TreeTableView;->fireEvent(Ljavafx/event/Event;)V

    .line 1761
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/control/SortEvent;->isConsumed()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1769
    .line 1821
    :goto_1
    return-void

    .line 1755
    .end local v3    # "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;"
    :cond_0
    new-instance v14, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1772
    .restart local v3    # "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;"
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v13

    .line 1773
    .local v4, "prevState":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v5, v13

    .line 1778
    .local v5, "itemCount":I
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->startAtomic()V

    .line 1781
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSortPolicy()Ljavafx/util/Callback;

    move-result-object v13

    move-object v6, v13

    .line 1782
    .local v6, "sortPolicy":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableView<TS;>;Ljava/lang/Boolean;>;"
    move-object v13, v6

    if-nez v13, :cond_2

    goto :goto_1

    .line 1783
    :cond_2
    move-object v13, v6

    move-object v14, v0

    invoke-interface {v13, v14}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    move-object v7, v13

    .line 1785
    .local v7, "success":Ljava/lang/Boolean;
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->stopAtomic()V

    .line 1787
    move-object v13, v7

    if-eqz v13, :cond_3

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    .line 1789
    :cond_3
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Ljavafx/scene/control/TreeTableView;->sortLock:Z

    .line 1790
    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TreeTableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/control/TreeTableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Ljavafx/scene/control/TableUtil;->handleSortFailure(Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 1791
    move-object v13, v0

    move-object v14, v2

    invoke-direct {v13, v14}, Ljavafx/scene/control/TreeTableView;->setComparator(Ljava/util/Comparator;)V

    .line 1792
    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Ljavafx/scene/control/TreeTableView;->sortLock:Z

    .line 1821
    :cond_4
    :goto_2
    goto :goto_1

    .line 1798
    :cond_5
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v13

    instance-of v13, v13, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    if-eqz v13, :cond_4

    .line 1799
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v8, v13

    .line 1800
    .local v8, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel<TS;>;"
    move-object v13, v8

    invoke-virtual {v13}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v13

    move-object v9, v13

    .line 1802
    .local v9, "newState":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v13

    .line 1803
    .local v10, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_3
    move v13, v11

    move v14, v5

    if-ge v13, v14, :cond_7

    .line 1804
    move-object v13, v4

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/TreeTablePosition;

    move-object v12, v13

    .line 1805
    .local v12, "prevItem":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v13, v9

    move-object v14, v12

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1806
    move-object v13, v10

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1803
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1810
    .end local v12    # "prevItem":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_7
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1816
    new-instance v13, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    move/from16 v16, v5

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v14 .. v18}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v11, v13

    .line 1817
    .local v11, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v13, v8

    move-object v14, v11

    invoke-static {v13, v14}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2000(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_2
.end method

.method public final sortModeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeSortMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1341
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "sortMode"

    sget-object v6, Ljavafx/scene/control/TreeSortMode;->ALL_DESCENDANTS:Ljavafx/scene/control/TreeSortMode;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->sortMode:Ljavafx/beans/property/ObjectProperty;

    .line 1343
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortMode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final sortPolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1405
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$10;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "sortPolicy"

    sget-object v7, Ljavafx/scene/control/TreeTableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    check-cast v7, Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$10;-><init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 1412
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1154
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "tableMenuButtonVisible"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    .line 1156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

.method public final treeColumnProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->treeColumn:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 976
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "treeColumn"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView;->treeColumn:Ljavafx/beans/property/ObjectProperty;

    .line 978
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView;->treeColumn:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    return-object v0
.end method

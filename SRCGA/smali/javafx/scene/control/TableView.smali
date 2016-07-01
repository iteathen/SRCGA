.class public Ljavafx/scene/control/TableView;
.super Ljavafx/scene/control/Control;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TableView$TableViewFocusModel;,
        Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;,
        Ljavafx/scene/control/TableView$TableViewSelectionModel;,
        Ljavafx/scene/control/TableView$ResizeFeatures;,
        Ljavafx/scene/control/TableView$StyleableProperties;
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
    value = "items"
.end annotation


# static fields
.field public static final CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
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
            "Ljavafx/scene/control/TableView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "table-view"

.field private static final PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

.field static final SET_CONTENT_WIDTH:Ljava/lang/String; = "TableView.contentWidth"

.field public static final UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
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
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final columnsObserver:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumn",
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
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private contentWidth:D

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private fixedCellSize:Ljavafx/beans/property/DoubleProperty;

.field private focusModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private isInited:Z

.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final lastKnownColumnIndex:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljavafx/scene/control/TableColumn",
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
            "Ljavafx/scene/control/TableColumn",
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
            "Ljavafx/scene/control/TableView",
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

.field private rowFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private sortLock:Z

.field private sortOrder:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

.field private final unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final visibleLeafColumns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Ljavafx/scene/control/TableView$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableView$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/TableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    .line 403
    new-instance v0, Ljavafx/scene/control/TableView$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableView$2;-><init>()V

    sput-object v0, Ljavafx/scene/control/TableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    .line 432
    new-instance v0, Ljavafx/scene/control/TableView$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableView$3;-><init>()V

    sput-object v0, Ljavafx/scene/control/TableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    .line 1668
    const-string v0, "cell-selection"

    .line 1669
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TableView;->PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

    .line 1670
    const-string v0, "row-selection"

    .line 1671
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TableView;->PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

    .line 1670
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TableView;-><init>(Ljavafx/collections/ObservableList;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 569
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columns:Ljavafx/collections/ObservableList;

    .line 573
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    .line 574
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    invoke-static {v3}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;

    .line 580
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->sortOrder:Ljavafx/collections/ObservableList;

    .line 588
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TableView;->isInited:Z

    .line 598
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableView$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$5;-><init>(Ljavafx/scene/control/TableView;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columnsObserver:Ljavafx/collections/ListChangeListener;

    .line 757
    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->lastKnownColumnIndex:Ljava/util/WeakHashMap;

    .line 759
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columnVisibleObserver:Ljavafx/beans/InvalidationListener;

    .line 763
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columnSortableObserver:Ljavafx/beans/InvalidationListener;

    .line 769
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columnSortTypeObserver:Ljavafx/beans/InvalidationListener;

    .line 775
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->columnComparatorObserver:Ljavafx/beans/InvalidationListener;

    .line 782
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableView;->cellSelectionModelInvalidationListener:Ljavafx/beans/InvalidationListener;

    .line 789
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->columnVisibleObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakColumnVisibleObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 792
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->columnSortableObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakColumnSortableObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 795
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->columnSortTypeObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakColumnSortTypeObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 798
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->columnComparatorObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakColumnComparatorObserver:Ljavafx/beans/WeakInvalidationListener;

    .line 801
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->columnsObserver:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    .line 804
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableView;->cellSelectionModelInvalidationListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->weakCellSelectionModelInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    .line 822
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableView$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "items"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TableView$6;-><init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->items:Ljavafx/beans/property/ObjectProperty;

    .line 966
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableView$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "selectionModel"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TableView$8;-><init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 1597
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TableView;->sortLock:Z

    .line 1598
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1599
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 520
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "table-view"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 521
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->TABLE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 524
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->setItems(Ljavafx/collections/ObservableList;)V

    .line 528
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;-><init>(Ljavafx/scene/control/TableView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->setSelectionModel(Ljavafx/scene/control/TableView$TableViewSelectionModel;)V

    .line 529
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$TableViewFocusModel;-><init>(Ljavafx/scene/control/TableView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView;->setFocusModel(Ljavafx/scene/control/TableView$TableViewFocusModel;)V

    .line 533
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 537
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TableView$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/TableView;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 544
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    new-instance v3, Ljavafx/scene/control/TableView$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableView$4;-><init>(Ljavafx/scene/control/TableView;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 556
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TableView;->isInited:Z

    .line 557
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TableView;)D
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/control/TableView;->contentWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-wide v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TableView;D)V
    .locals 7

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView;->setContentWidth(D)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TableView;)Z
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TableView;->isInited:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakCellSelectionModelInvalidationListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/control/TableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/control/TableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/control/TableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/control/TableView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TableView;)V
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableView;->updateVisibleLeafColumns()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/control/TableView;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakColumnsObserver:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakColumnVisibleObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakColumnSortableObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakColumnSortTypeObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->weakColumnComparatorObserver:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/TableView;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortOrder:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TableView;)Ljava/util/WeakHashMap;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TableView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->lastKnownColumnIndex:Ljava/util/WeakHashMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TableView;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$38(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$39(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$40(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$41(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/TableView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$42(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/TableView;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView;->lambda$new$37(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1645
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "cols":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v2, p2

    .local v2, "vlc":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
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

    check-cast v6, Ljavafx/scene/control/TableColumn;

    move-object v4, v6

    .line 1646
    .local v4, "c":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 1648
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 1650
    .local v5, "hasChildren":Z
    move v6, v5

    if-eqz v6, :cond_3

    .line 1651
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/control/TableView;->buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V

    .line 1655
    :cond_1
    :goto_2
    goto :goto_0

    .line 1648
    .end local v5    # "hasChildren":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1652
    .restart local v5    # "hasChildren":Z
    :cond_3
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1653
    move-object v6, v2

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 1656
    .end local v4    # "c":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
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
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1187
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "comparator"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1189
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method private varargs doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "sortEventType":Ljavafx/scene/control/TableUtil$SortEventType;
    move-object v2, p2

    .local v2, "supportInfo":[Ljava/lang/Object;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/TableView;->sortLock:Z

    if-eqz v3, :cond_0

    .line 1603
    .line 1611
    :goto_0
    return-void

    .line 1606
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1607
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/TableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 1608
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->sort()V

    .line 1609
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 1610
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    .line 1611
    goto :goto_0
.end method

.method private editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1161
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editingCell"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1163
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
    .line 1708
    # getter for: Ljavafx/scene/control/TableView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TableView$StyleableProperties;->access$1900()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$37(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method private synthetic lambda$new$38(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView;->updateVisibleLeafColumns()V

    .line 761
    return-void
.end method

.method private synthetic lambda$new$39(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/Property;

    invoke-interface {v3}, Ljavafx/beans/property/Property;->getBean()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 765
    .local v2, "col":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 767
    :goto_0
    return-void

    .line 766
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

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 767
    goto :goto_0
.end method

.method private synthetic lambda$new$40(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/Property;

    invoke-interface {v3}, Ljavafx/beans/property/Property;->getBean()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 771
    .local v2, "col":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    :goto_0
    return-void

    .line 772
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

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 773
    goto :goto_0
.end method

.method private synthetic lambda$new$41(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/Property;

    invoke-interface {v3}, Ljavafx/beans/property/Property;->getBean()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 777
    .local v2, "col":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 779
    :goto_0
    return-void

    .line 778
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

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView;->doSort(Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 779
    goto :goto_0
.end method

.method private synthetic lambda$new$42(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    move v2, v3

    .line 784
    .local v2, "isCellSelection":Z
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableView;->PSEUDO_CLASS_CELL_SELECTION:Ljavafx/css/PseudoClass;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 785
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TableView;->PSEUDO_CLASS_ROW_SELECTION:Ljavafx/css/PseudoClass;

    move v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 786
    return-void

    .line 785
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
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView;->comparatorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1178
    return-void
.end method

.method private setContentWidth(D)V
    .locals 11

    .prologue
    .line 1616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-wide v1, p1

    .local v1, "contentWidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TableView;->contentWidth:D

    .line 1617
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/TableView;->isInited:Z

    if-eqz v3, :cond_0

    .line 1623
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v3

    new-instance v4, Ljavafx/scene/control/TableView$ResizeFeatures;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Double;)V

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1625
    :cond_0
    return-void
.end method

.method private setEditingCell(Ljavafx/scene/control/TablePosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableView;->editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1146
    return-void
.end method

.method private updateVisibleLeafColumns()V
    .locals 11

    .prologue
    .line 1632
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1633
    .local v2, "cols":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TableView;->buildVisibleLeafColumns(Ljava/util/List;Ljava/util/List;)V

    .line 1634
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1641
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v3

    new-instance v4, Ljavafx/scene/control/TableView$ResizeFeatures;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Double;)V

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1642
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
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 886
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "columnResizePolicy"

    sget-object v7, Ljavafx/scene/control/TableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TableView$7;-><init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    .line 906
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableView;->comparatorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
    .line 1490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;-><init>(Ljavafx/scene/control/TableView;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public edit(ILjavafx/scene/control/TableColumn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->isEditable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1453
    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    move v3, v1

    if-gez v3, :cond_2

    move-object v3, v2

    if-nez v3, :cond_2

    .line 1457
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView;->setEditingCell(Ljavafx/scene/control/TablePosition;)V

    .line 1461
    :goto_1
    goto :goto_0

    .line 1459
    :cond_2
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TablePosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView;->setEditingCell(Ljavafx/scene/control/TablePosition;)V

    goto :goto_1
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1066
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 1068
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableView;->editingCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1123
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1124
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TableView$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TableView$9;-><init>(Ljavafx/scene/control/TableView;D)V

    iput-object v3, v2, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    .line 1138
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v1
.end method

.method public final focusModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1020
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "focusModel"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    .line 1022
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final getColumnResizePolicy()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TableView;->UNCONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->columnResizePolicy:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->columns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->comparator:Ljavafx/beans/property/ReadOnlyObjectWrapper;

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
    .line 1717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    invoke-static {}, Ljavafx/scene/control/TableView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final getEditingCell()Ljavafx/scene/control/TablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editingCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TablePosition;

    goto :goto_0
.end method

.method public final getFixedCellSize()D
    .locals 4

    .prologue
    .line 1099
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView$TableViewFocusModel;

    goto :goto_0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
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
    .line 1345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1346
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1348
    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;>;"
        }
    .end annotation

    .prologue
    .line 1404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1405
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1407
    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 1246
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 1248
    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getPlaceholder()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getRowFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    goto :goto_0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1001
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final getSortOrder()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortOrder:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final getSortPolicy()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    check-cast v1, Ljavafx/util/Callback;

    .line 1217
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0

    .line 1215
    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 1217
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    goto :goto_0
.end method

.method public getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "column":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 1485
    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableColumn;

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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->unmodifiableVisibleLeafColumns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public getVisibleLeafIndex(Ljavafx/scene/control/TableColumn;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)I"
        }
    .end annotation

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView;->visibleLeafColumns:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return v0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 1057
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isTableMenuButtonVisible()Z
    .locals 2

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1412
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$13;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$13;-><init>(Ljavafx/scene/control/TableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    .line 1427
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollToColumn:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
    .line 1352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1353
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$12;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$12;-><init>(Ljavafx/scene/control/TableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    .line 1369
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1253
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$11;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableView$11;-><init>(Ljavafx/scene/control/TableView;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    .line 1269
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->onSort:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
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
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 953
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "placeholder"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    .line 955
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Ljavafx/scene/control/TableView$14;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1762
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return-object v0

    .line 1731
    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 1732
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 1737
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 1738
    .local v3, "rows":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TableRow<TS;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 1739
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

    check-cast v8, Ljavafx/scene/control/TableRow;

    move-object v6, v8

    .line 1741
    .local v6, "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableRow;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v7, v8

    .line 1742
    .local v7, "cells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 1743
    :cond_0
    goto :goto_1

    .line 1744
    .end local v6    # "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    .end local v7    # "cells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v8, v4

    invoke-static {v8}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 1747
    .end local v3    # "rows":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TableRow<TS;>;>;"
    .end local v4    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :pswitch_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 1748
    .local v3, "row":Ljavafx/scene/Node;
    move-object v8, v3

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 1749
    :cond_2
    move-object v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v4, v8

    .line 1751
    .local v4, "cell":Ljavafx/scene/Node;
    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v4

    :goto_2
    move-object v0, v8

    goto/16 :goto_0

    :cond_3
    move-object v8, v3

    goto :goto_2

    .line 1755
    .end local v3    # "row":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/Node;
    :pswitch_4
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableRow;

    move-object v3, v8

    .line 1756
    .local v3, "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    move-object v8, v3

    if-eqz v8, :cond_4

    move-object v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableRow;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 1759
    .end local v3    # "row":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TS;>;"
    :pswitch_5
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v8

    move-object v3, v8

    .line 1760
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TS;>;"
    move-object v8, v3

    if-eqz v8, :cond_5

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

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

    .line 1730
    nop

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
    .line 1586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "tableRecreateKey"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1587
    return-void
.end method

.method public resizeColumn(Ljavafx/scene/control/TableColumn;D)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;D)Z"
        }
    .end annotation

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
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

    .line 1440
    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :goto_0
    return v0

    .line 1437
    .restart local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getColumnResizePolicy()Ljavafx/util/Callback;

    move-result-object v5

    new-instance v6, Ljavafx/scene/control/TableView$ResizeFeatures;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/TableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Double;)V

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, v5

    .line 1438
    .local v4, "allowed":Z
    move v5, v4

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1440
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;>;"
        }
    .end annotation

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 930
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "rowFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    .line 932
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->rowFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public scrollTo(I)V
    .locals 4

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 1317
    return-void
.end method

.method public scrollTo(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 1325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TS;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1326
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 1327
    .local v2, "idx":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 1328
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 1331
    .end local v2    # "idx":I
    :cond_0
    return-void
.end method

.method public scrollToColumn(Ljavafx/scene/control/TableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToColumn(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)V

    .line 1379
    return-void
.end method

.method public scrollToColumnIndex(I)V
    .locals 5

    .prologue
    .line 1387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "columnIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1388
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableColumnBase;

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToColumn(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)V

    .line 1390
    :cond_0
    return-void
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final setColumnResizePolicy(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView$ResizeFeatures;Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 873
    return-void
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1055
    return-void
.end method

.method public final setFixedCellSize(D)V
    .locals 7

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1087
    return-void
.end method

.method public final setFocusModel(Ljavafx/scene/control/TableView$TableViewFocusModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1009
    return-void
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

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
    .line 1341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1342
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
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljavafx/scene/control/TableColumn<TS;*>;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->onScrollToColumnProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1401
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TableView<TS;>;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->onSortProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1242
    return-void
.end method

.method public final setPlaceholder(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 959
    return-void
.end method

.method public final setRowFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView<TS;>;Ljavafx/scene/control/TableRow<TS;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 936
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/TableView$TableViewSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 997
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 998
    return-void
.end method

.method public final setSortPolicy(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView<TS;>;Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->sortPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1212
    return-void
.end method

.method public final setTableMenuButtonVisible(Z)V
    .locals 4

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 863
    return-void
.end method

.method public sort()V
    .locals 20

    .prologue
    .line 1504
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v13

    move-object v1, v13

    .line 1507
    .local v1, "sortOrder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase<TS;*>;>;"
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getComparator()Ljava/util/Comparator;

    move-result-object v13

    move-object v2, v13

    .line 1508
    .local v2, "oldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    move-object v13, v0

    move-object v14, v1

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v13, v14}, Ljavafx/scene/control/TableView;->setComparator(Ljava/util/Comparator;)V

    .line 1512
    new-instance v13, Ljavafx/scene/control/SortEvent;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/control/SortEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    move-object v3, v13

    .line 1513
    .local v3, "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TableView<TS;>;>;"
    move-object v13, v0

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/scene/control/TableView;->fireEvent(Ljavafx/event/Event;)V

    .line 1514
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/control/SortEvent;->isConsumed()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1522
    .line 1574
    :goto_1
    return-void

    .line 1508
    .end local v3    # "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TableView<TS;>;>;"
    :cond_0
    new-instance v14, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TableColumnComparator;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TableColumnComparator;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1525
    .restart local v3    # "sortEvent":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TableView<TS;>;>;"
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    invoke-virtual {v15}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v13

    .line 1526
    .local v4, "prevState":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition;>;"
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v5, v13

    .line 1531
    .local v5, "itemCount":I
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->startAtomic()V

    .line 1534
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSortPolicy()Ljavafx/util/Callback;

    move-result-object v13

    move-object v6, v13

    .line 1535
    .local v6, "sortPolicy":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView<TS;>;Ljava/lang/Boolean;>;"
    move-object v13, v6

    if-nez v13, :cond_2

    goto :goto_1

    .line 1536
    :cond_2
    move-object v13, v6

    move-object v14, v0

    invoke-interface {v13, v14}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    move-object v7, v13

    .line 1538
    .local v7, "success":Ljava/lang/Boolean;
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->stopAtomic()V

    .line 1540
    move-object v13, v7

    if-eqz v13, :cond_3

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    .line 1542
    :cond_3
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Ljavafx/scene/control/TableView;->sortLock:Z

    .line 1543
    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/TableView;->lastSortEventType:Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/control/TableView;->lastSortEventSupportInfo:[Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Ljavafx/scene/control/TableUtil;->handleSortFailure(Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V

    .line 1544
    move-object v13, v0

    move-object v14, v2

    invoke-direct {v13, v14}, Ljavafx/scene/control/TableView;->setComparator(Ljava/util/Comparator;)V

    .line 1545
    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Ljavafx/scene/control/TableView;->sortLock:Z

    .line 1574
    :cond_4
    :goto_2
    goto :goto_1

    .line 1551
    :cond_5
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v13

    instance-of v13, v13, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    if-eqz v13, :cond_4

    .line 1552
    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    move-object v8, v13

    .line 1553
    .local v8, "sm":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel<TS;>;"
    move-object v13, v8

    invoke-virtual {v13}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v13

    check-cast v13, Ljavafx/collections/ObservableList;

    move-object v9, v13

    .line 1555
    .local v9, "newState":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v13

    .line 1556
    .local v10, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_3
    move v13, v11

    move v14, v5

    if-ge v13, v14, :cond_7

    .line 1557
    move-object v13, v4

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/TablePosition;

    move-object v12, v13

    .line 1558
    .local v12, "prevItem":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    move-object v13, v9

    move-object v14, v12

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1559
    move-object v13, v10

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1556
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1563
    .end local v12    # "prevItem":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;*>;"
    :cond_7
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1569
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

    .line 1570
    .local v11, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TablePosition<TS;*>;>;"
    move-object v13, v8

    move-object v14, v11

    invoke-static {v13, v14}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->access$1700(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_2
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
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1222
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableView$10;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "sortPolicy"

    sget-object v7, Ljavafx/scene/control/TableView;->DEFAULT_SORT_POLICY:Ljavafx/util/Callback;

    check-cast v7, Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TableView$10;-><init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 1229
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->sortPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.method public final tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 857
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "tableMenuButtonVisible"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    .line 859
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView;->tableMenuButtonVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    return-object v0
.end method

.class public Lcom/sun/javafx/scene/control/skin/ListViewSkin;
.super Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;
.source "ListViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase",
        "<",
        "Ljavafx/scene/control/ListView",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior",
        "<TT;>;",
        "Ljavafx/scene/control/ListCell",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST_TEXT:Ljava/lang/String;

.field private static final IS_PANNABLE:Z

.field public static final RECREATE:Ljava/lang/String; = "listRecreateKey"


# instance fields
.field private itemCount:I

.field private final itemsChangeListener:Ljavafx/beans/InvalidationListener;

.field private listViewItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listViewItemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private needCellsRebuilt:Z

.field private needCellsReconfigured:Z

.field private placeholderNode:Ljavafx/scene/Node;

.field private placeholderRegion:Ljavafx/scene/layout/StackPane;

.field private propertiesMapListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "ListView.noContent"

    invoke-static {v0}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->EMPTY_LIST_TEXT:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$13;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->IS_PANNABLE:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ListView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;-><init>(Ljavafx/scene/control/ListView;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 86
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemsChangeListener:Ljavafx/beans/InvalidationListener;

    .line 167
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljavafx/collections/MapChangeListener;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    .line 176
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItemsListener:Ljavafx/collections/ListChangeListener;

    .line 209
    move-object v5, v1

    new-instance v6, Ljavafx/collections/WeakListChangeListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItemsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v7, v8}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    .line 227
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    .line 234
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsRebuilt:Z

    .line 235
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsReconfigured:Z

    .line 91
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updateListViewItems()V

    .line 94
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-string v6, "virtual-flow"

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setId(Ljava/lang/String;)V

    .line 95
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->IS_PANNABLE:Z

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPannable(Z)V

    .line 96
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setVertical(Z)V

    .line 97
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCreateCell(Ljavafx/util/Callback;)V

    .line 98
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFixedCellSize()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 101
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/ListView;)Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v3, v5

    .line 118
    .local v3, "ml":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 119
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 121
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updateRowCount()V

    .line 123
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    new-instance v6, Ljavafx/beans/WeakInvalidationListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemsChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v7, v8}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 125
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v4, v5

    .line 126
    .local v4, "properties":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v5, v4

    const-string v6, "listRecreateKey"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 127
    move-object v5, v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 130
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnFocusPreviousRow(Ljava/lang/Runnable;)V

    .line 131
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnFocusNextRow(Ljava/lang/Runnable;)V

    .line 132
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnMoveToFirstCell(Ljava/lang/Runnable;)V

    .line 133
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnMoveToLastCell(Ljava/lang/Runnable;)V

    .line 134
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnScrollPageDown(Ljavafx/util/Callback;)V

    .line 135
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnScrollPageUp(Ljavafx/util/Callback;)V

    .line 136
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnSelectPreviousRow(Ljava/lang/Runnable;)V

    .line 137
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setOnSelectNextRow(Ljava/lang/Runnable;)V

    .line 140
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ITEMS"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 141
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ORIENTATION"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 142
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "CELL_FACTORY"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 143
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    const-string v7, "PARENT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 144
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "PLACEHOLDER"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 145
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "FIXED_CELL_SIZE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 146
    return-void

    .line 96
    .end local v3    # "ml":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    .end local v4    # "properties":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ListViewSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ListViewSkin;
    return v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/ListViewSkin;I)I
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ListViewSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ListViewSkin;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ListViewSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$365(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ListViewSkin;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$376(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$374()V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$375()V

    return-void
.end method

.method static synthetic access$lambda$12()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$static$364()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ListViewSkin;Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/ListCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$366(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/ListCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/ListView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$367(Ljavafx/scene/control/ListView;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$368()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$369()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$370()V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$371()V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/ListViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$372(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/ListViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->lambda$new$373(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static createDefaultCellImpl()Ljavafx/scene/control/ListCell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$new$365(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updateListViewItems()V

    return-void
.end method

.method private synthetic lambda$new$366(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/ListCell;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "flow1":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->createCell()Ljavafx/scene/control/ListCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-object v0
.end method

.method private static synthetic lambda$new$367(Ljavafx/scene/control/ListView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "listView":Ljavafx/scene/control/ListView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 106
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 114
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->requestFocus()V

    .line 117
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$368()V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onFocusPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$369()V
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onFocusNextCell()V

    return-void
.end method

.method private synthetic lambda$new$370()V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onMoveToFirstCell()V

    return-void
.end method

.method private synthetic lambda$new$371()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onMoveToLastCell()V

    return-void
.end method

.method private synthetic lambda$new$372(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onScrollPageDown(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$373(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onScrollPageUp(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$374()V
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onSelectPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$375()V
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->onSelectNextCell()V

    return-void
.end method

.method private synthetic lambda$new$376(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v2, "listRecreateKey"

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsRebuilt:Z

    .line 171
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->requestLayout()V

    .line 172
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "listRecreateKey"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    :cond_1
    goto :goto_0
.end method

.method private static synthetic lambda$static$364()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    const-string v0, "com.sun.javafx.scene.control.skin.ListViewSkin.pannable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onFocusNextCell()V
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 375
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 377
    goto :goto_0
.end method

.method private onFocusPreviousCell()V
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 369
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 371
    goto :goto_0
.end method

.method private onMoveToFirstCell()V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 409
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 410
    return-void
.end method

.method private onMoveToLastCell()V
    .locals 6

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 418
    .local v2, "endPos":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 419
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 420
    return-void
.end method

.method private onScrollPageDown(Z)I
    .locals 11

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListCell;

    move-object v2, v9

    .line 428
    .local v2, "lastVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, -0x1

    move v0, v9

    .line 465
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :goto_0
    return v0

    .line 430
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 431
    .local v3, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 432
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v4

    if-nez v9, :cond_2

    :cond_1
    const/4 v9, -0x1

    move v0, v9

    goto :goto_0

    .line 434
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    move v5, v9

    .line 438
    .local v5, "lastVisibleCellIndex":I
    const/4 v9, 0x0

    move v6, v9

    .line 439
    .local v6, "isSelected":Z
    move v9, v1

    if-eqz v9, :cond_8

    .line 440
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->isFocused()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 445
    :goto_2
    move v9, v6

    if-eqz v9, :cond_6

    .line 446
    move v9, v1

    if-eqz v9, :cond_4

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v5

    if-eq v9, v10, :cond_5

    :cond_4
    move v9, v1

    if-nez v9, :cond_b

    move-object v9, v3

    .line 447
    invoke-virtual {v9}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_b

    :cond_5
    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 449
    .local v7, "isLeadIndex":Z
    move v9, v7

    if-eqz v9, :cond_6

    .line 452
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsFirst(Ljavafx/scene/control/IndexedCell;)V

    .line 454
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListCell;

    move-object v8, v9

    .line 455
    .local v8, "newLastVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v9, v8

    if-nez v9, :cond_c

    move-object v9, v2

    :goto_4
    move-object v2, v9

    .line 463
    .end local v7    # "isLeadIndex":Z
    .end local v8    # "newLastVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    move v7, v9

    .line 464
    .local v7, "newSelectionIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 465
    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 440
    .end local v7    # "newSelectionIndex":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 442
    :cond_8
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v3

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    :goto_5
    move v6, v9

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 447
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 455
    .local v7, "isLeadIndex":Z
    .restart local v8    # "newLastVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_c
    move-object v9, v8

    goto :goto_4
.end method

.method private onScrollPageUp(Z)I
    .locals 11

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListCell;

    move-object v2, v9

    .line 474
    .local v2, "firstVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, -0x1

    move v0, v9

    .line 510
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :goto_0
    return v0

    .line 476
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 477
    .local v3, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 478
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v4

    if-nez v9, :cond_2

    :cond_1
    const/4 v9, -0x1

    move v0, v9

    goto :goto_0

    .line 480
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    move v5, v9

    .line 483
    .local v5, "firstVisibleCellIndex":I
    const/4 v9, 0x0

    move v6, v9

    .line 484
    .local v6, "isSelected":Z
    move v9, v1

    if-eqz v9, :cond_8

    .line 485
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->isFocused()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 490
    :goto_2
    move v9, v6

    if-eqz v9, :cond_6

    .line 491
    move v9, v1

    if-eqz v9, :cond_4

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v5

    if-eq v9, v10, :cond_5

    :cond_4
    move v9, v1

    if-nez v9, :cond_b

    move-object v9, v3

    .line 492
    invoke-virtual {v9}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_b

    :cond_5
    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 494
    .local v7, "isLeadIndex":Z
    move v9, v7

    if-eqz v9, :cond_6

    .line 497
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsLast(Ljavafx/scene/control/IndexedCell;)V

    .line 499
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListCell;

    move-object v8, v9

    .line 500
    .local v8, "newFirstVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v9, v8

    if-nez v9, :cond_c

    move-object v9, v2

    :goto_4
    move-object v2, v9

    .line 508
    .end local v7    # "isLeadIndex":Z
    .end local v8    # "newFirstVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    move v7, v9

    .line 509
    .local v7, "newSelectionIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 510
    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 485
    .end local v7    # "newSelectionIndex":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 487
    :cond_8
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v3

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    :goto_5
    move v6, v9

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 492
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 500
    .local v7, "isLeadIndex":Z
    .restart local v8    # "newFirstVisibleCell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_c
    move-object v9, v8

    goto :goto_4
.end method

.method private onSelectNextCell()V
    .locals 10

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 395
    .local v2, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 405
    :goto_0
    return-void

    .line 397
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v5

    move v3, v5

    .line 398
    .local v3, "pos":I
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 401
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListCell;

    move-object v4, v5

    .line 402
    .local v4, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v5

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 403
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v3

    int-to-double v6, v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 405
    :cond_2
    goto :goto_0
.end method

.method private onSelectPreviousCell()V
    .locals 10

    .prologue
    .line 380
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 381
    .local v2, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 391
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v5

    move v3, v5

    .line 384
    .local v3, "pos":I
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 387
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v4, v5

    .line 388
    .local v4, "cell":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    move v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 389
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v3

    int-to-double v6, v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 391
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method protected computePrefHeight(DDDDD)D
    .locals 15

    .prologue
    .line 364
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 349
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->checkState()V

    .line 351
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 352
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-nez v12, :cond_0

    .line 353
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updatePlaceholderRegionVisibility()V

    .line 355
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v12, :cond_1

    .line 356
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v12

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .line 360
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :cond_1
    move-object v12, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-virtual/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->computePrefHeight(DDDDD)D

    move-result-wide v12

    const-wide v14, 0x3fe3c6ef363f685cL    # 0.618033987

    mul-double/2addr v12, v14

    move-wide v1, v12

    goto :goto_0
.end method

.method public bridge synthetic createCell()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->createCell()Ljavafx/scene/control/ListCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-object v0
.end method

.method public createCell()Ljavafx/scene/control/ListCell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 285
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListCell;

    move-object v1, v2

    .line 290
    .local v1, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :goto_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListCell;->updateListView(Ljavafx/scene/control/ListView;)V

    .line 292
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return-object v0

    .line 287
    .end local v1    # "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :cond_0
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->createDefaultCellImpl()Ljavafx/scene/control/ListCell;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    goto :goto_0
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 586
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 561
    .local v3, "item":Ljavafx/scene/Node;
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/control/ListCell;

    if-eqz v8, :cond_0

    .line 563
    move-object v8, v3

    check-cast v8, Ljavafx/scene/control/ListCell;

    move-object v4, v8

    .line 564
    .local v4, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 565
    goto :goto_0

    .line 570
    .end local v3    # "item":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :pswitch_1
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 571
    .local v3, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 572
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ListView;

    invoke-virtual {v8}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 573
    .local v4, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 574
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 575
    move-object v8, v3

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 576
    .local v6, "item":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/control/ListCell;

    if-eqz v8, :cond_1

    .line 578
    move-object v8, v6

    check-cast v8, Ljavafx/scene/control/ListCell;

    move-object v7, v8

    .line 579
    .local v7, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 581
    .end local v7    # "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_1
    goto :goto_1

    .line 583
    .end local v6    # "item":Ljavafx/scene/Node;
    :cond_2
    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    return v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 150
    const-string v3, "ITEMS"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updateListViewItems()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v3, "ORIENTATION"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setVertical(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 154
    :cond_3
    const-string v3, "CELL_FACTORY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    goto :goto_0

    .line 156
    :cond_4
    const-string v3, "PARENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->requestLayout()V

    goto :goto_0

    .line 160
    :cond_5
    const-string v3, "PLACEHOLDER"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updatePlaceholderRegionVisibility()V

    goto :goto_0

    .line 162
    :cond_6
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFixedCellSize()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    goto/16 :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 326
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->layoutChildren(DDDD)V

    .line 328
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsRebuilt:Z

    if-eqz v9, :cond_2

    .line 329
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->rebuildCells()V

    .line 334
    :cond_0
    :goto_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsRebuilt:Z

    .line 335
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsReconfigured:Z

    .line 337
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v9

    if-nez v9, :cond_4

    .line 339
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v9, :cond_1

    .line 340
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    move-wide v10, v7

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v9, v10}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 341
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 346
    :cond_1
    :goto_2
    return-void

    .line 330
    :cond_2
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsReconfigured:Z

    if-eqz v9, :cond_0

    .line 331
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->reconfigureCells()V

    goto :goto_0

    .line 340
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 344
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeRelocate(DDDD)V

    goto :goto_2
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 552
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :goto_0
    return-object v0

    .line 517
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    :pswitch_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v3, v9

    .line 518
    .local v3, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<*>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v4, v9

    .line 519
    .local v4, "focusedIndex":I
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 520
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 521
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 523
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 524
    const/4 v9, 0x0

    move v4, v9

    .line 529
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 526
    :cond_2
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 531
    .end local v3    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<*>;"
    .end local v4    # "focusedIndex":I
    :pswitch_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 533
    :pswitch_2
    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Integer;

    move-object v3, v9

    .line 534
    .local v3, "rowIndex":Ljava/lang/Integer;
    move-object v9, v3

    if-nez v9, :cond_3

    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 535
    :cond_3
    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v9, v10, :cond_4

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 536
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 538
    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 541
    .end local v3    # "rowIndex":Ljava/lang/Integer;
    :pswitch_3
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 542
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v4, v9

    .line 543
    .local v4, "indices":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 544
    .local v5, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_1
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v7, v9

    .line 545
    .local v7, "i":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListCell;

    move-object v8, v9

    .line 546
    .local v8, "row":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v9, v8

    if-eqz v9, :cond_5

    move-object v9, v5

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 547
    :cond_5
    goto :goto_1

    .line 548
    .end local v7    # "i":I
    .end local v8    # "row":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :cond_6
    move-object v9, v5

    invoke-static {v9}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 550
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    .end local v4    # "indices":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    .end local v5    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :pswitch_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 551
    :pswitch_5
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 515
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

.method public updateListViewItems()V
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 214
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 217
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    .line 219
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_1

    .line 220
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 223
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->rowCountDirty:Z

    .line 224
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->requestLayout()V

    .line 225
    return-void
.end method

.method protected final updatePlaceholderRegionVisibility()V
    .locals 8

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getItemCount()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 258
    .local v1, "visible":Z
    move v2, v1

    if-eqz v2, :cond_2

    .line 259
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getPlaceholder()Ljavafx/scene/Node;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    .line 260
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    if-nez v2, :cond_0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->EMPTY_LIST_TEXT:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->EMPTY_LIST_TEXT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    .line 262
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    check-cast v2, Ljavafx/scene/control/Label;

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->EMPTY_LIST_TEXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 265
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_2

    .line 266
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-nez v2, :cond_1

    .line 267
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    .line 268
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "placeholder"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 272
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderNode:Ljavafx/scene/Node;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 276
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v3, v1

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setVisible(Z)V

    .line 277
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v2, :cond_3

    .line 278
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 280
    :cond_3
    return-void

    .line 256
    .end local v1    # "visible":Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 276
    .restart local v1    # "visible":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected updateRowCount()V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    if-nez v3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    move v1, v3

    .line 241
    .local v1, "oldCount":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 243
    .local v2, "newCount":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->itemCount:I

    .line 245
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellCount(I)V

    .line 247
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updatePlaceholderRegionVisibility()V

    .line 248
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_2

    .line 249
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsRebuilt:Z

    .line 253
    :goto_2
    goto :goto_0

    .line 241
    .end local v2    # "newCount":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    goto :goto_1

    .line 251
    .restart local v2    # "newCount":I
    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->needCellsReconfigured:Z

    goto :goto_2
.end method

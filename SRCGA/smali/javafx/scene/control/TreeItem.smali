.class public Ljavafx/scene/control/TreeItem;
.super Ljava/lang/Object;
.source "TreeItem.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field private static final BRANCH_COLLAPSED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final BRANCH_EXPANDED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CHILDREN_MODIFICATION_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EXPANDED_ITEM_COUNT_CHANGE_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final GRAPHIC_CHANGED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TREE_NOTIFICATION_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VALUE_CHANGED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field children:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private childrenListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

.field private expanded:Ljavafx/beans/property/BooleanProperty;

.field private expandedDescendentCount:I

.field private expandedDescendentCountDirty:Z

.field private graphic:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSortUpdate:Z

.field private final itemListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field lastComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field lastSortMode:Ljavafx/scene/control/TreeSortMode;

.field private leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private parentLinkCount:I

.field previousExpandedDescendentCount:I

.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 228
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TreeNotificationEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->TREE_NOTIFICATION_EVENT:Ljavafx/event/EventType;

    .line 246
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 247
    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "ExpandedItemCountChangeEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->EXPANDED_ITEM_COUNT_CHANGE_EVENT:Ljavafx/event/EventType;

    .line 259
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 260
    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "BranchExpandedEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_EXPANDED_EVENT:Ljavafx/event/EventType;

    .line 272
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 273
    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "BranchCollapsedEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_COLLAPSED_EVENT:Ljavafx/event/EventType;

    .line 285
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 286
    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "ChildrenModificationEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->CHILDREN_MODIFICATION_EVENT:Ljavafx/event/EventType;

    .line 298
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 299
    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "ValueChangedEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->VALUE_CHANGED_EVENT:Ljavafx/event/EventType;

    .line 311
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 312
    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "GraphicChangedEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeItem;->GRAPHIC_CHANGED_EVENT:Ljavafx/event/EventType;

    .line 311
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Ljavafx/scene/Node;

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/scene/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 352
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeItem$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeItem$1;-><init>(Ljavafx/scene/control/TreeItem;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->itemListener:Ljavafx/event/EventHandler;

    .line 366
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/control/TreeItem;->ignoreSortUpdate:Z

    .line 368
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/control/TreeItem;->expandedDescendentCountDirty:Z

    .line 378
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 385
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    .line 392
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    .line 394
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    .line 395
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->lastSortMode:Ljavafx/scene/control/TreeSortMode;

    .line 399
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    .line 410
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TreeItem$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeItem;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->childrenListener:Ljavafx/collections/ListChangeListener;

    .line 595
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "parent"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeItem;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 346
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setValue(Ljava/lang/Object;)V

    .line 347
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setGraphic(Ljavafx/scene/Node;)V

    .line 349
    move-object v3, v0

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem;->itemListener:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 350
    return-void
.end method

.method static synthetic access$002(Ljavafx/scene/control/TreeItem;Z)Z
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeItem;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeItem;->expandedDescendentCountDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeItem;
    return v0
.end method

.method static synthetic access$100()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Ljavafx/scene/control/TreeItem;->VALUE_CHANGED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeItem;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeItem;->fireEvent(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method static synthetic access$300()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Ljavafx/scene/control/TreeItem;->GRAPHIC_CHANGED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_EXPANDED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_COLLAPSED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$800()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Ljavafx/scene/control/TreeItem;->TREE_NOTIFICATION_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeItem;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeItem;->lambda$new$113(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method public static branchCollapsedEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_COLLAPSED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static branchExpandedEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Ljavafx/scene/control/TreeItem;->BRANCH_EXPANDED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private checkSortState()V
    .locals 8

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TreeItem;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v1, v4

    .line 829
    .local v1, "rootNode":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/TreeItem;->lastSortMode:Ljavafx/scene/control/TreeSortMode;

    move-object v2, v4

    .line 830
    .local v2, "sortMode":Ljavafx/scene/control/TreeSortMode;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    move-object v3, v4

    .line 832
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    if-eq v4, v5, :cond_0

    .line 833
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    .line 834
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeItem;->runSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;Ljavafx/scene/control/TreeSortMode;)V

    .line 836
    :cond_0
    return-void
.end method

.method public static childrenModificationEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Ljavafx/scene/control/TreeItem;->CHILDREN_MODIFICATION_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private doSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, p2

    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/collections/FXCollections;->sort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    .line 875
    :cond_0
    return-void
.end method

.method public static expandedItemCountChangeEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Ljavafx/scene/control/TreeItem;->EXPANDED_ITEM_COUNT_CHANGE_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private fireEvent(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "evt":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 744
    return-void
.end method

.method private getRoot()Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v1, v3

    .line 862
    .local v1, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v0, v3

    .line 866
    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return-object v0

    .line 867
    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .local v2, "newParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v3, v2

    move-object v1, v3

    .line 865
    .end local v2    # "newParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 866
    .restart local v2    # "newParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static graphicChangedEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Ljavafx/scene/control/TreeItem;->GRAPHIC_CHANGED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private synthetic lambda$new$113(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeItem;->expandedDescendentCountDirty:Z

    .line 412
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeItem;->updateChildren(Ljavafx/collections/ListChangeListener$Change;)V

    .line 413
    return-void
.end method

.method private runSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;Ljavafx/scene/control/TreeSortMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/scene/control/TreeSortMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, p2

    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, p3

    .local v3, "sortMode":Ljavafx/scene/control/TreeSortMode;
    move-object v4, v3

    sget-object v5, Ljavafx/scene/control/TreeSortMode;->ALL_DESCENDANTS:Ljavafx/scene/control/TreeSortMode;

    if-ne v4, v5, :cond_1

    .line 840
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeItem;->doSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    move-object v4, v3

    sget-object v5, Ljavafx/scene/control/TreeSortMode;->ONLY_FIRST_LEVEL:Ljavafx/scene/control/TreeSortMode;

    if-ne v4, v5, :cond_0

    .line 846
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    if-nez v4, :cond_0

    .line 847
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeItem;->doSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private setLeaf(Z)V
    .locals 9

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v2, :cond_0

    .line 567
    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v2, :cond_1

    .line 569
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "leaf"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 571
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->setValue(Ljava/lang/Boolean;)V

    .line 572
    goto :goto_0
.end method

.method private setParent(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private sort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;Ljavafx/scene/control/TreeSortMode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/scene/control/TreeSortMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, p2

    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, p3

    .local v3, "sortMode":Ljavafx/scene/control/TreeSortMode;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 824
    :goto_0
    return-void

    .line 815
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeItem;->runSort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;Ljavafx/scene/control/TreeSortMode;)V

    .line 819
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    if-nez v5, :cond_1

    .line 820
    new-instance v5, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-static {}, Ljavafx/scene/control/TreeItem;->childrenModificationEvent()Ljavafx/event/EventType;

    move-result-object v7

    move-object v8, v0

    invoke-direct {v6, v7, v8}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;)V

    move-object v4, v5

    .line 821
    .local v4, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v5, v4

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->access$602(Ljavafx/scene/control/TreeItem$TreeModificationEvent;Z)Z

    move-result v5

    .line 822
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeItem;->fireEvent(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    .line 824
    .end local v4    # "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public static treeNotificationEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Ljavafx/scene/control/TreeItem;->TREE_NOTIFICATION_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private updateChildren(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeItem;->setLeaf(Z)V

    .line 903
    new-instance v4, Ljava/util/ArrayList;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 904
    .local v2, "added":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 906
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 908
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_0

    .line 913
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavafx/scene/control/TreeItem;->updateChildrenParent(Ljava/util/List;Ljavafx/scene/control/TreeItem;)V

    .line 914
    move-object v4, v2

    move-object v5, v0

    invoke-static {v4, v5}, Ljavafx/scene/control/TreeItem;->updateChildrenParent(Ljava/util/List;Ljavafx/scene/control/TreeItem;)V

    .line 916
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 920
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    sget-object v7, Ljavafx/scene/control/TreeItem;->CHILDREN_MODIFICATION_EVENT:Ljavafx/event/EventType;

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;Ljavafx/collections/ListChangeListener$Change;Ljavafx/scene/control/TreeItem$1;)V

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeItem;->fireEvent(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    .line 922
    return-void
.end method

.method private static updateChildrenParent(Ljava/util/List;Ljavafx/scene/control/TreeItem;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "treeItems":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v1, p1

    .local v1, "newParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v0

    if-nez v6, :cond_0

    .line 957
    :goto_0
    return-void

    .line 928
    :cond_0
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeItem;

    move-object v3, v6

    .line 929
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v3

    if-nez v6, :cond_1

    goto :goto_1

    .line 931
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    move-object v4, v6

    .line 944
    .local v4, "currentParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v3

    iget v6, v6, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    if-nez v6, :cond_2

    .line 945
    move-object v6, v3

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/scene/control/TreeItem;->setParent(Ljavafx/scene/control/TreeItem;)V

    .line 948
    :cond_2
    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 949
    .local v5, "parentMatch":Z
    move v6, v5

    if-eqz v6, :cond_3

    .line 950
    move-object v6, v1

    if-nez v6, :cond_5

    .line 951
    move-object v6, v3

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    .line 956
    :cond_3
    :goto_3
    goto :goto_1

    .line 948
    .end local v5    # "parentMatch":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 953
    .restart local v5    # "parentMatch":Z
    :cond_5
    move-object v6, v3

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljavafx/scene/control/TreeItem;->parentLinkCount:I

    goto :goto_3

    .line 957
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v4    # "currentParent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v5    # "parentMatch":Z
    :cond_6
    goto :goto_0
.end method

.method private updateExpandedDescendentCount(Z)V
    .locals 9

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "reset":Z
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    iput v5, v4, Ljavafx/scene/control/TreeItem;->previousExpandedDescendentCount:I

    .line 888
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    .line 890
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem;->ignoreSortUpdate:Z

    .line 891
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 892
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    move-object v3, v4

    .line 893
    .local v3, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeItem;->getExpandedDescendentCount(Z)I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    iput v5, v4, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    .line 895
    goto :goto_0

    .line 894
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 897
    .end local v3    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem;->ignoreSortUpdate:Z

    .line 898
    return-void
.end method

.method public static valueChangedEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 296
    sget-object v0, Ljavafx/scene/control/TreeItem;->VALUE_CHANGED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method


# virtual methods
.method public addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TE;>;",
            "Ljavafx/event/EventHandler",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 781
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 761
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeItem;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    .line 763
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public final expandedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 537
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeItem$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeItem$4;-><init>(Ljavafx/scene/control/TreeItem;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    .line 559
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public getChildren()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    .line 628
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    .line 629
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->childrenListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 634
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .line 645
    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return-object v0

    .line 641
    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeItem;->ignoreSortUpdate:Z

    if-nez v1, :cond_2

    .line 642
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeItem;->checkSortState()V

    .line 645
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    goto :goto_0
.end method

.method getExpandedDescendentCount(Z)I
    .locals 4

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "reset":Z
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TreeItem;->expandedDescendentCountDirty:Z

    if-eqz v2, :cond_1

    .line 880
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeItem;->updateExpandedDescendentCount(Z)V

    .line 881
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TreeItem;->expandedDescendentCountDirty:Z

    .line 883
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TreeItem;->expandedDescendentCount:I

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getParent()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->value:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
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
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 486
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeItem$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeItem$3;-><init>(Ljavafx/scene/control/TreeItem;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 502
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public final isExpanded()Z
    .locals 2

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public isLeaf()Z
    .locals 2

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final leafProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 8

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 588
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "leaf"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 590
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->leaf:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public nextSibling()Ljavafx/scene/control/TreeItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeItem;->nextSibling(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/control/TreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public nextSibling(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/control/TreeItem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "afterNode":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_1

    .line 719
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 731
    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return-object v0

    .line 722
    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 723
    .local v2, "parentChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 724
    .local v3, "childCount":I
    const/4 v6, -0x1

    move v4, v6

    .line 725
    .local v4, "pos":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 726
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 727
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 728
    move v6, v4

    move v7, v3

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    :goto_2
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeItem;

    goto :goto_2

    .line 725
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 731
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public final parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
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
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public previousSibling()Ljavafx/scene/control/TreeItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeItem;->previousSibling(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/control/TreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public previousSibling(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/control/TreeItem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "beforeNode":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_1

    .line 680
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 692
    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :goto_0
    return-object v0

    .line 683
    .restart local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 684
    .local v2, "parentChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 685
    .local v3, "childCount":I
    const/4 v6, -0x1

    move v4, v6

    .line 686
    .local v4, "pos":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 687
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 688
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 689
    move v6, v4

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeItem;

    goto :goto_2

    .line 686
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 692
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TE;>;",
            "Ljavafx/event/EventHandler",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 795
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->expanded:Ljavafx/beans/property/BooleanProperty;

    if-nez v2, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    .line 523
    goto :goto_0
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method sort()V
    .locals 5

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem;->children:Ljavafx/collections/ObservableList;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeItem;->lastSortMode:Ljavafx/scene/control/TreeSortMode;

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/control/TreeItem;->sort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;Ljavafx/scene/control/TreeSortMode;)V

    .line 807
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TreeItem [ value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->value:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 443
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeItem$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeItem$2;-><init>(Ljavafx/scene/control/TreeItem;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeItem;->value:Ljavafx/beans/property/ObjectProperty;

    .line 457
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    return-object v0
.end method

.class public Ljavafx/scene/control/TreeView;
.super Ljavafx/scene/control/Control;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TreeView$TreeViewFocusModel;,
        Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;,
        Ljavafx/scene/control/TreeView$EditEvent;,
        Ljavafx/scene/control/TreeView$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Control;"
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "root"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tree-view"

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


# instance fields
.field private cellFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
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
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private onEditCancel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private onEditCommit:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private onEditStart:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

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

.field private root:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final rootEvent:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private showRoot:Ljavafx/beans/property/BooleanProperty;

.field private treeItemCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private weakRootEventListener:Ljavafx/event/WeakEventHandler;
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
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 218
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TREE_VIEW_EDIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    .line 231
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 232
    invoke-static {}, Ljavafx/scene/control/TreeView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_START"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    .line 245
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 246
    invoke-static {}, Ljavafx/scene/control/TreeView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_CANCEL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    .line 260
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 261
    invoke-static {}, Ljavafx/scene/control/TreeView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_COMMIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    .line 260
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeView;-><init>(Ljavafx/scene/control/TreeItem;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Control;-><init>()V

    .line 348
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    .line 352
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljavafx/scene/control/TreeView;->treeItemCacheMap:Ljava/util/Map;

    .line 364
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TreeView$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeView;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TreeView;->rootEvent:Ljavafx/event/EventHandler;

    .line 437
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeView$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    const-string v8, "root"

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeView$1;-><init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeView;->root:Ljavafx/beans/property/ObjectProperty;

    .line 604
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "expandedItemCount"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v4, v3, Ljavafx/scene/control/TreeView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 324
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const-string v7, "tree-view"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 325
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->TREE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 327
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 328
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 332
    new-instance v3, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeView$TreeViewBitSetSelectionModel;-><init>(Ljavafx/scene/control/TreeView;)V

    move-object v2, v3

    .line 333
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->setSelectionModel(Ljavafx/scene/control/MultipleSelectionModel;)V

    .line 334
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TreeView$TreeViewFocusModel;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeView$TreeViewFocusModel;-><init>(Ljavafx/scene/control/TreeView;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->setFocusModel(Ljavafx/scene/control/FocusModel;)V

    .line 335
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TreeView;)Ljavafx/event/WeakEventHandler;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->weakRootEventListener:Ljavafx/event/WeakEventHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/control/TreeView;Ljavafx/event/WeakEventHandler;)Ljavafx/event/WeakEventHandler;
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/WeakEventHandler;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/TreeView;->weakRootEventListener:Ljavafx/event/WeakEventHandler;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TreeView;)Ljavafx/event/EventHandler;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->rootEvent:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TreeView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return-object v0
.end method

.method static synthetic access$1200()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Ljavafx/scene/control/TreeView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/TreeView;)Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return v0
.end method

.method static synthetic access$202(Ljavafx/scene/control/TreeView;Z)Z
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeView;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TreeView;)V
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeView;->updateRootExpanded()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/control/TreeView;Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeView;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView;->lambda$new$257(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method public static editAnyEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Ljavafx/scene/control/TreeView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCancelEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Ljavafx/scene/control/TreeView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCommitEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Ljavafx/scene/control/TreeView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editStartEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Ljavafx/scene/control/TreeView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private editingItemPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 738
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editingItem"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 740
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
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
    .line 1105
    # getter for: Ljavafx/scene/control/TreeView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TreeView$StyleableProperties;->access$1100()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeLevel(Ljavafx/scene/control/TreeItem;)I
    .locals 4
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
    .line 286
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, -0x1

    move v0, v3

    .line 295
    .end local v0    # "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    .local v1, "level":I
    .local v2, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :goto_0
    return v0

    .line 288
    .end local v1    # "level":I
    .end local v2    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    .restart local v0    # "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 289
    .restart local v1    # "level":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 290
    .restart local v2    # "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 295
    :cond_1
    move v3, v1

    move v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$257(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 6

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v2, v4

    .line 368
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    const/4 v4, 0x0

    move v3, v4

    .line 369
    .local v3, "match":Z
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 370
    move-object v4, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    const/4 v4, 0x1

    move v3, v4

    .line 377
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 378
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    .line 379
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->requestLayout()V

    .line 381
    :cond_1
    return-void

    .line 374
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method private setEditingItem(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeView;->editingItemPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 715
    return-void
.end method

.method private setExpandedItemCount(I)V
    .locals 4

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 610
    return-void
.end method

.method private updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v5

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/TreeUtil;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;ZZ)I

    move-result v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView;->setExpandedItemCount(I)V

    .line 1043
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    if-eqz v2, :cond_0

    .line 1046
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->treeItemCacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1049
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    .line 1050
    return-void
.end method

.method private updateRootExpanded()V
    .locals 3

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 1058
    :cond_0
    return-void
.end method


# virtual methods
.method public final cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 430
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cellFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    .line 432
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
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
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;-><init>(Ljavafx/scene/control/TreeView;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public edit(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 883
    :goto_0
    return-void

    .line 882
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeView;->setEditingItem(Ljavafx/scene/control/TreeItem;)V

    .line 883
    goto :goto_0
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 704
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 706
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final editingItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
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
    .line 733
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeView;->editingItemPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final expandedItemCountProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 670
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 671
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TreeView$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeView$3;-><init>(Ljavafx/scene/control/TreeView;D)V

    iput-object v3, v2, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    .line 685
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v1
.end method

.method public final focusModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 587
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "focusModel"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    .line 589
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final getCellFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

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
    .line 1114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    invoke-static {}, Ljavafx/scene/control/TreeView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final getEditingItem()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editingItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method

.method public final getExpandedItemCount()I
    .locals 3

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    if-eqz v1, :cond_0

    .line 613
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 615
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->expandedItemCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return v0
.end method

.method public final getFixedCellSize()D
    .locals 4

    .prologue
    .line 646
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TreeView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/FocusModel;

    goto :goto_0
.end method

.method public final getOnEditCancel()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnEditCommit()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnEditStart()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

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
    .line 909
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 910
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 912
    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getRoot()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->root:Ljavafx/beans/property/ObjectProperty;

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
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Ljavafx/scene/control/TreeUtil;->getRow(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;ZZ)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return v0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MultipleSelectionModel;

    goto :goto_0
.end method

.method public getTreeItem(I)Ljavafx/scene/control/TreeItem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move v1, p1

    .local v1, "row":I
    move v5, v1

    if-gez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 979
    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :goto_0
    return-object v0

    .line 963
    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    :goto_1
    move v2, v5

    .line 965
    .local v2, "_row":I
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    if-eqz v5, :cond_3

    .line 966
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 977
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move v6, v2

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/TreeUtil;->getItem(Ljavafx/scene/control/TreeItem;IZ)Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v3, v5

    .line 978
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView;->treeItemCacheMap:Ljava/util/Map;

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

    .line 979
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 963
    .end local v2    # "_row":I
    .end local v3    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 968
    .restart local v2    # "_row":I
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView;->treeItemCacheMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 969
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView;->treeItemCacheMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    move-object v3, v5

    .line 970
    .local v3, "treeItemRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeItem;

    move-object v4, v5

    .line 971
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 972
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
    .line 994
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v2, v5

    .line 996
    .local v2, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, -0x1

    move v0, v5

    .line 1011
    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :goto_0
    return v0

    .line 997
    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 999
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 1000
    .local v3, "level":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    .line 1001
    .local v4, "parent":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1002
    add-int/lit8 v3, v3, 0x1

    .line 1004
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_3

    .line 1005
    .line 1011
    :cond_2
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 1008
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isShowRoot()Z
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeView;->expandedItemCountDirty:Z

    if-eqz v1, :cond_0

    .line 864
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TreeView;->updateExpandedItemCount(Ljavafx/scene/control/TreeItem;)V

    .line 867
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/Control;->layoutChildren()V

    .line 868
    return-void
.end method

.method public final onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 843
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeView$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCancel"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeView$6;-><init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    .line 849
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 809
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeView$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCommit"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeView$5;-><init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    .line 815
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final onEditStartProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 769
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeView$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditStart"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeView$4;-><init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    .line 775
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
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
    .line 916
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 917
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeView$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeView$7;-><init>(Ljavafx/scene/control/TreeView;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    .line 933
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/TreeView$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1133
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :goto_0
    return-object v0

    .line 1129
    .restart local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v3, v4

    .line 1130
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v4

    sget-object v5, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1132
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "treeRecreateKey"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1030
    return-void
.end method

.method public final rootProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->root:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public scrollTo(I)V
    .locals 4

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 896
    return-void
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 557
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "selectionModel"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 559
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

.method public final setCellFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeView<TT;>;Ljavafx/scene/control/TreeCell<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 693
    return-void
.end method

.method public final setFixedCellSize(D)V
    .locals 7

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 634
    return-void
.end method

.method public final setFocusModel(Ljavafx/scene/control/FocusModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/FocusModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 571
    return-void
.end method

.method public final setOnEditCancel(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method public final setOnEditCommit(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method public final setOnEditStart(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->onEditStartProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 753
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
    .line 905
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 906
    return-void
.end method

.method public final setRoot(Ljavafx/scene/control/TreeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/MultipleSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public final setShowRoot(Z)V
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 502
    return-void
.end method

.method public final showRootProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 9

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 517
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeView$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "showRoot"

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TreeView$2;-><init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TreeView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    .line 524
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView;->showRoot:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    return-object v0
.end method

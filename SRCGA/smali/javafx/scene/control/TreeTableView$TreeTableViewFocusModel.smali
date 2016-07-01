.class public Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
.super Ljavafx/scene/control/TableFocusModel;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeTableViewFocusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableFocusModel",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field private final EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

.field private focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final rootPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private treeItemListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final treeTableView:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemListener:Ljavafx/event/WeakEventHandler;
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
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 3372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TableFocusModel;-><init>()V

    .line 3395
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 3399
    move-object v4, v0

    new-instance v5, Ljavafx/beans/value/WeakChangeListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->rootPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v6, v7}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 3413
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeItemListener:Ljavafx/event/EventHandler;

    .line 3373
    move-object v4, v1

    if-nez v4, :cond_0

    .line 3374
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "TableView can not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3377
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 3378
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/TreeTablePosition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

    .line 3380
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakRootPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 3381
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 3383
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 3384
    .local v2, "focusRow":I
    new-instance v4, Ljavafx/scene/control/TreeTablePosition;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v3, v4

    .line 3385
    .local v3, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V

    .line 3387
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 3393
    return-void

    .line 3383
    .end local v2    # "focusRow":I
    .end local v3    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method static synthetic access$2700(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;)Ljavafx/scene/control/TreeTableView;
    .locals 2

    .prologue
    .line 3359
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->lambda$new$129(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->lambda$new$128(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
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
    .line 3507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 3508
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;Ljavafx/scene/control/TreeTablePosition;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 3532
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return-object v0
.end method

.method private getColumnCount()I
    .locals 2

    .prologue
    .line 3679
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return v0
.end method

.method private getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;I)",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 3684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafIndex(Ljavafx/scene/control/TreeTableColumn;)I

    move-result v5

    move v3, v5

    .line 3685
    .local v3, "columnIndex":I
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 3686
    .local v4, "newColumnIndex":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return-object v0
.end method

.method private synthetic lambda$new$128(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 3388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->isFocused(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3389
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(I)V

    .line 3390
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(I)V

    .line 3392
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$129(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 7

    .prologue
    .line 3396
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/TreeItem;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/TreeItem;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V

    .line 3397
    return-void
.end method

.method private setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 3503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateTreeEventListener(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 3403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "oldRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, p2

    .local v2, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    if-eqz v3, :cond_0

    .line 3404
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 3407
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 3408
    move-object v3, v0

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeItemListener:Ljavafx/event/EventHandler;

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    .line 3409
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->weakTreeItemListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 3411
    :cond_1
    return-void
.end method


# virtual methods
.method public focus(I)V
    .locals 9

    .prologue
    .line 3598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-static {v2}, Ljavafx/scene/control/TreeTableView;->access$1100(Ljavafx/scene/control/TreeTableView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3599
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/TreeTableView;->access$1300(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeItem;)V

    .line 3602
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 3603
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V

    .line 3607
    :goto_0
    return-void

    .line 3605
    :cond_2
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TreeTablePosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V

    goto :goto_0
.end method

.method public bridge synthetic focus(ILjavafx/scene/control/TableColumnBase;)V
    .locals 6

    .prologue
    .line 3359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    return-void
.end method

.method public focus(ILjavafx/scene/control/TreeTableColumn;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 3543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 3544
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V

    .line 3556
    :cond_1
    :goto_0
    return-void

    .line 3546
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v5

    move-object v3, v5

    .line 3547
    .local v3, "oldFocusCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    new-instance v5, Ljavafx/scene/control/TreeTablePosition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v4, v5

    .line 3548
    .local v4, "newFocusCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedCell(Ljavafx/scene/control/TreeTablePosition;)V

    .line 3550
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTablePosition;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3552
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedIndex(I)V

    .line 3553
    move-object v5, v0

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public focus(Ljavafx/scene/control/TreeTablePosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 3565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, p1

    .local v1, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3567
    :goto_0
    return-void

    .line 3566
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3567
    goto :goto_0
.end method

.method public focusAboveCell()V
    .locals 5

    .prologue
    .line 3613
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3615
    .local v1, "cell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3616
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3620
    :cond_0
    :goto_0
    return-void

    .line 3617
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v2

    if-lez v2, :cond_0

    .line 3618
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    goto :goto_0
.end method

.method public focusBelowCell()V
    .locals 5

    .prologue
    .line 3626
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3627
    .local v1, "cell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3628
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3632
    :cond_0
    :goto_0
    return-void

    .line 3629
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3630
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    goto :goto_0
.end method

.method public focusLeftCell()V
    .locals 7

    .prologue
    .line 3638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3639
    .local v1, "cell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    if-gtz v2, :cond_0

    .line 3641
    :goto_0
    return-void

    .line 3640
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3641
    goto :goto_0
.end method

.method public focusNext()V
    .locals 4

    .prologue
    .line 3663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3664
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(I)V

    .line 3668
    :cond_0
    :goto_0
    return-void

    .line 3665
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3666
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusBelowCell()V

    goto :goto_0
.end method

.method public focusPrevious()V
    .locals 3

    .prologue
    .line 3654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3655
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(I)V

    .line 3659
    :cond_0
    :goto_0
    return-void

    .line 3656
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 3657
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusAboveCell()V

    goto :goto_0
.end method

.method public focusRightCell()V
    .locals 7

    .prologue
    .line 3647
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v2

    move-object v1, v2

    .line 3648
    .local v1, "cell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getColumn()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getColumnCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3650
    :goto_0
    return-void

    .line 3649
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getTableColumn(Ljavafx/scene/control/TreeTableColumn;I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focus(ILjavafx/scene/control/TreeTableColumn;)V

    .line 3650
    goto :goto_0
.end method

.method public final focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
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
    .line 3501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return-object v0
.end method

.method public final getFocusedCell()Ljavafx/scene/control/TreeTablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 3504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->EMPTY_CELL:Ljavafx/scene/control/TreeTablePosition;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCell:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTablePosition;

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 3487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return v0
.end method

.method protected bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 3359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return-object v0
.end method

.method protected getModelItem(I)Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 3492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 3493
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic isFocused(ILjavafx/scene/control/TableColumnBase;)Z
    .locals 6

    .prologue
    .line 3359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->isFocused(ILjavafx/scene/control/TreeTableColumn;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    return v0
.end method

.method public isFocused(ILjavafx/scene/control/TreeTableColumn;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;)Z"
        }
    .end annotation

    .prologue
    .line 3581
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getItemCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 3586
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :goto_0
    return v0

    .line 3583
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v5

    move-object v3, v5

    .line 3584
    .local v3, "cell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 3586
    .local v4, "columnMatch":Z
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_4

    move v5, v4

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    .line 3584
    .end local v4    # "columnMatch":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3586
    .restart local v4    # "columnMatch":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

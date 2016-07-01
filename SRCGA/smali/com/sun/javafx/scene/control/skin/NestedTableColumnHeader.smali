.class public Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
.super Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
.source "NestedTableColumnHeader.java"


# static fields
.field private static final DRAG_RECT_WIDTH:I = 0x4

.field private static final TABLE_COLUMN_HEADER_KEY:Ljava/lang/String; = "TableColumnHeader"

.field private static final TABLE_COLUMN_KEY:Ljava/lang/String; = "TableColumn"

.field private static final rectCursorChangeListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectMouseDragged:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectMousePressed:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectMouseReleased:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnHeaders:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;",
            ">;"
        }
    .end annotation
.end field

.field private columns:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end field

.field private final columnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end field

.field private dragAnchorX:D

.field private dragRects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;",
            "Ljavafx/scene/shape/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

.field private lastX:D

.field updateColumns:Z

.field private final weakColumnsListener:Ljavafx/collections/WeakListChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMousePressed:Ljavafx/event/EventHandler;

    .line 161
    new-instance v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMouseDragged:Ljavafx/event/EventHandler;

    .line 174
    new-instance v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$3;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMouseReleased:Ljavafx/event/EventHandler;

    .line 187
    new-instance v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$4;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$4;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectCursorChangeListener:Ljavafx/event/EventHandler;

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V
    .locals 9

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V

    .line 87
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->lastX:D

    .line 88
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragAnchorX:D

    .line 91
    move-object v3, v0

    new-instance v4, Ljava/util/WeakHashMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    .line 93
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateColumns:Z

    .line 130
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnsListener:Ljavafx/collections/ListChangeListener;

    .line 134
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 106
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "nested-column-header"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 107
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setFocusTraversable(Z)V

    .line 110
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V

    .line 113
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setNestedColumnHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V

    .line 115
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 119
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TABLE_VIEW_COLUMN_RESIZE_POLICY"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->isColumnResizingEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return v0
.end method

.method static synthetic access$102(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;D)D
    .locals 13

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragAnchorX:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-wide v1
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;D)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnResizingStarted(D)V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnResizing(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnResizingComplete(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->lambda$new$76(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private checkState()V
    .locals 3

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateColumns:Z

    if-eqz v1, :cond_0

    .line 544
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateTableColumnHeaders()V

    .line 545
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateColumns:Z

    .line 547
    :cond_0
    return-void
.end method

.method private columnResizing(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragAnchorX:D

    sub-double/2addr v8, v10

    move-wide v3, v8

    .line 578
    .local v3, "draggedX":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v8, v9, :cond_0

    .line 579
    move-wide v8, v3

    neg-double v8, v8

    move-wide v3, v8

    .line 581
    :cond_0
    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->lastX:D

    sub-double/2addr v8, v10

    move-wide v5, v8

    .line 582
    .local v5, "delta":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v8

    move-object v9, v1

    move-wide v10, v5

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->resizeColumn(Ljavafx/scene/control/TableColumnBase;D)Z

    move-result v8

    move v7, v8

    .line 583
    .local v7, "allowed":Z
    move v8, v7

    if-eqz v8, :cond_1

    .line 584
    move-object v8, v0

    move-wide v9, v3

    iput-wide v9, v8, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->lastX:D

    .line 586
    :cond_1
    return-void
.end method

.method private columnResizingComplete(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setCursor(Ljavafx/scene/Cursor;)V

    .line 590
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setTranslateX(D)V

    .line 591
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setLayoutX(D)V

    .line 592
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->lastX:D

    .line 593
    return-void
.end method

.method private columnResizingStarted(D)V
    .locals 7

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-wide v1, p1

    .local v1, "startX":D
    move-object v3, v0

    sget-object v4, Ljavafx/scene/Cursor;->H_RESIZE:Ljavafx/scene/Cursor;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setCursor(Ljavafx/scene/Cursor;)V

    .line 573
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setLayoutX(D)V

    .line 574
    return-void
.end method

.method private createColumnHeader(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 5

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->createTableColumnHeader(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v3

    move-object v2, v3

    .line 551
    .local v2, "newCol":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 552
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V

    .line 553
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-object v0
.end method

.method private isColumnResizingEnabled()Z
    .locals 2

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return v0
.end method

.method private synthetic lambda$new$76(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setHeadersNeedUpdate()V

    .line 132
    return-void
.end method

.method private rebuildDragRects()V
    .locals 15

    .prologue
    .line 491
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v9, v1

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->isColumnResizingEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 540
    :goto_0
    return-void

    .line 493
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v9

    .line 495
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_1
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/shape/Rectangle;

    move-object v3, v9

    .line 496
    .local v3, "rect":Ljavafx/scene/shape/Rectangle;
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/shape/Rectangle;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 497
    goto :goto_1

    .line 498
    .end local v3    # "rect":Ljavafx/scene/shape/Rectangle;
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 500
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v2, v9

    .line 502
    .local v2, "columns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v9, v2

    if-nez v9, :cond_2

    .line 503
    goto :goto_0

    .line 506
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v9

    move-object v3, v9

    .line 507
    .local v3, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<******>;"
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/util/Callback;

    move-object v4, v9

    .line 508
    .local v4, "columnResizePolicy":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ResizeFeaturesBase;Ljava/lang/Boolean;>;"
    move-object v9, v3

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    if-eqz v9, :cond_3

    sget-object v9, Ljavafx/scene/control/TableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    move-object v10, v4

    .line 509
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 510
    :goto_2
    move v5, v9

    .line 515
    .local v5, "isConstrainedResize":Z
    move v9, v5

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 516
    goto :goto_0

    .line 509
    .end local v5    # "isConstrainedResize":Z
    :cond_3
    move-object v9, v3

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    if-eqz v9, :cond_4

    sget-object v9, Ljavafx/scene/control/TreeTableView;->CONSTRAINED_RESIZE_POLICY:Ljavafx/util/Callback;

    move-object v10, v4

    .line 510
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 519
    .restart local v5    # "isConstrainedResize":Z
    :cond_5
    const/4 v9, 0x0

    move v6, v9

    .local v6, "col":I
    :goto_3
    move v9, v6

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 520
    move v9, v5

    if-eqz v9, :cond_7

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_7

    .line 521
    .line 540
    :cond_6
    goto/16 :goto_0

    .line 524
    :cond_7
    move-object v9, v2

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TableColumnBase;

    move-object v7, v9

    .line 525
    .local v7, "c":Ljavafx/scene/control/TableColumnBase;
    new-instance v9, Ljavafx/scene/shape/Rectangle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljavafx/scene/shape/Rectangle;-><init>()V

    move-object v8, v9

    .line 526
    .local v8, "rect":Ljavafx/scene/shape/Rectangle;
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v9

    const-string v10, "TableColumn"

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 527
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v9

    const-string v10, "TableColumnHeader"

    move-object v11, v1

    invoke-interface {v9, v10, v11}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 528
    move-object v9, v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 529
    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getHeight()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 530
    move-object v9, v8

    sget-object v10, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 531
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/shape/Rectangle;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 532
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMousePressed:Ljavafx/event/EventHandler;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 533
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMouseDragged:Ljavafx/event/EventHandler;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 534
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectMouseReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 535
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectCursorChangeListener:Ljavafx/event/EventHandler;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setOnMouseEntered(Ljavafx/event/EventHandler;)V

    .line 536
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rectCursorChangeListener:Ljavafx/event/EventHandler;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->setOnMouseExited(Ljavafx/event/EventHandler;)V

    .line 538
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    move-object v10, v7

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 519
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3
.end method

.method private updateContent()V
    .locals 5

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 475
    .local v1, "content":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 478
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 482
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->isColumnResizingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->rebuildDragRects()V

    .line 484
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 487
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    .line 488
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 427
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-wide v2, p1

    .local v2, "width":D
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->checkState()V

    .line 429
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 431
    .local v4, "height":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 432
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v7, v8

    .line 433
    .local v7, "n":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v8, v4

    move-object v10, v7

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 434
    goto :goto_0

    .line 437
    .end local v7    # "n":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-wide v8, v4

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefHeight(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedTopInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedBottomInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->checkState()V

    .line 413
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 415
    .local v4, "width":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 416
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v7, v8

    .line 417
    .local v7, "c":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    move-wide v8, v4

    move-object v10, v1

    move-object v11, v7

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->computePrefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snapSize(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 420
    :cond_0
    goto :goto_0

    .line 423
    .end local v7    # "c":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-wide v1
.end method

.method protected createTableColumnHeader(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 7

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 443
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V

    .line 444
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-object v0

    .line 443
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    :cond_0
    new-instance v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 444
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V

    goto :goto_0
.end method

.method dispose()V
    .locals 5

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v3, v0

    invoke-super {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dispose()V

    .line 328
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    if-eqz v3, :cond_0

    .line 329
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dispose()V

    .line 332
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 333
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 336
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 337
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v3

    .line 338
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dispose()V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "i":I
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/shape/Rectangle;

    move-object v2, v3

    .line 342
    .local v2, "rect":Ljavafx/scene/shape/Rectangle;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 343
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 345
    :cond_3
    goto :goto_1

    .line 346
    .end local v2    # "rect":Ljavafx/scene/shape/Rectangle;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 347
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 349
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->dispose()V

    .line 350
    return-void
.end method

.method public getColumnHeaders()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnHeaders:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnHeaders:Ljavafx/collections/ObservableList;

    .line 354
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columnHeaders:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-object v0
.end method

.method getColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-object v0
.end method

.method getDragRectHeight()D
    .locals 4

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefHeight(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    return-wide v0
.end method

.method protected handlePropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->handlePropertyChanged(Ljava/lang/String;)V

    .line 211
    const-string v2, "TABLE_VIEW_COLUMN_RESIZE_POLICY"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateContent()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v2, "TABLE_COLUMN_TEXT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setVisible(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 25

    .prologue
    .line 358
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getWidth()D

    move-result-wide v17

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedLeftInset()D

    move-result-wide v19

    sub-double v17, v17, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedRightInset()D

    move-result-wide v19

    sub-double v17, v17, v19

    move-wide/from16 v3, v17

    .line 359
    .local v3, "w":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getHeight()D

    move-result-wide v17

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedTopInset()D

    move-result-wide v19

    sub-double v17, v17, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedBottomInset()D

    move-result-wide v19

    sub-double v17, v17, v19

    move-wide/from16 v5, v17

    .line 361
    .local v5, "h":D
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefHeight(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v7, v17

    .line 363
    .local v7, "labelHeight":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 365
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v17, v0

    move-wide/from16 v18, v3

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->resize(DD)V

    .line 366
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedLeftInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedTopInset()D

    move-result-wide v20

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->relocate(DD)V

    .line 370
    :cond_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedLeftInset()D

    move-result-wide v17

    move-wide/from16 v8, v17

    .line 371
    .local v8, "x":D
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 372
    .local v10, "pos":I
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "i":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljavafx/collections/ObservableList;->size()I

    move-result v17

    move/from16 v12, v17

    .local v12, "max":I
    :goto_0
    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 373
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v17

    move/from16 v18, v11

    invoke-interface/range {v17 .. v18}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v13, v17

    .line 374
    .local v13, "n":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isVisible()Z

    move-result v17

    if-nez v17, :cond_2

    .line 372
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 376
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefWidth(D)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snapSize(D)D

    move-result-wide v17

    move-wide/from16 v14, v17

    .line 380
    .local v14, "prefWidth":D
    move-object/from16 v17, v13

    move-wide/from16 v18, v14

    move-object/from16 v20, v2

    move-wide/from16 v21, v5

    move/from16 v23, v7

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snapSize(D)D

    move-result-wide v20

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->resize(DD)V

    .line 381
    move-object/from16 v17, v13

    move-wide/from16 v18, v8

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedTopInset()D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->relocate(DD)V

    .line 393
    move-wide/from16 v17, v8

    move-wide/from16 v19, v14

    add-double v17, v17, v19

    move-wide/from16 v8, v17

    .line 396
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->dragRects:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/scene/shape/Rectangle;

    move-object/from16 v16, v17

    .line 397
    .local v16, "dragRect":Ljavafx/scene/shape/Rectangle;
    move-object/from16 v17, v16

    if-eqz v17, :cond_1

    .line 398
    move-object/from16 v17, v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getDragRectHeight()D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 399
    move-object/from16 v17, v16

    move-wide/from16 v18, v8

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    sub-double v18, v18, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->snappedTopInset()D

    move-result-wide v20

    move/from16 v22, v7

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    invoke-virtual/range {v17 .. v21}, Ljavafx/scene/shape/Rectangle;->relocate(DD)V

    goto/16 :goto_1

    .line 402
    .end local v13    # "n":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .end local v14    # "prefWidth":D
    .end local v16    # "dragRect":Ljavafx/scene/shape/Rectangle;
    :cond_3
    return-void
.end method

.method setColumns(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "newColumns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    if-eqz v2, :cond_0

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 243
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    .line 245
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    if-eqz v2, :cond_1

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->columns:Ljavafx/collections/ObservableList;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 248
    :cond_1
    return-void
.end method

.method protected setHeadersNeedUpdate()V
    .locals 5

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateColumns:Z

    .line 452
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 453
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v3

    .line 454
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    if-eqz v3, :cond_0

    .line 455
    move-object v3, v2

    check-cast v3, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setHeadersNeedUpdate()V

    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->requestLayout()V

    .line 459
    return-void
.end method

.method public setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "parentHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V

    .line 231
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V

    .line 232
    return-void
.end method

.method public setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v1, p1

    .local v1, "header":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 221
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->label:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 224
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v3, v4

    .line 225
    .local v3, "c":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 226
    goto :goto_0

    .line 227
    .end local v3    # "c":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    return-void
.end method

.method updateTableColumnHeaders()V
    .locals 13

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 253
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setColumns(Ljavafx/collections/ObservableList;)V

    .line 263
    :cond_0
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 265
    const/4 v8, 0x0

    move v1, v8

    .local v1, "i":I
    :goto_1
    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 266
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v8

    .line 267
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dispose()V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v1    # "i":I
    .end local v2    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 255
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setColumns(Ljavafx/collections/ObservableList;)V

    goto :goto_0

    .line 271
    .restart local v1    # "i":I
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v8

    move-object v1, v8

    .line 272
    .local v1, "parentHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v8, v1

    if-eqz v8, :cond_4

    .line 273
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v2, v8

    .line 274
    .local v2, "parentColumnHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    move-object v8, v2

    move-object v9, v0

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move v3, v8

    .line 275
    .local v3, "index":I
    move v8, v3

    if-ltz v8, :cond_3

    move v8, v3

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 276
    move-object v8, v2

    move v9, v3

    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->createColumnHeader(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 278
    .line 282
    .line 317
    .end local v1    # "parentHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .end local v2    # "parentColumnHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v3    # "index":I
    :cond_3
    :goto_2
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->updateContent()V

    .line 320
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v8

    :goto_3
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v8

    .line 321
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->applyCss()V

    .line 322
    goto :goto_3

    .line 280
    .end local v2    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .restart local v1    # "parentHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    :cond_4
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->clear()V

    goto :goto_2

    .line 283
    .end local v1    # "parentHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v8

    .line 284
    .local v1, "oldHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 286
    .local v2, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_4
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 287
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v8

    .line 288
    .local v4, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v8, v4

    if-eqz v8, :cond_6

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v8

    if-nez v8, :cond_7

    .line 286
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 291
    :cond_7
    const/4 v8, 0x0

    move v5, v8

    .line 292
    .local v5, "found":Z
    const/4 v8, 0x0

    move v6, v8

    .local v6, "j":I
    :goto_6
    move v8, v6

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 293
    move-object v8, v1

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v7, v8

    .line 294
    .local v7, "oldColumn":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v9

    if-ne v8, v9, :cond_9

    .line 295
    move-object v8, v2

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 296
    const/4 v8, 0x1

    move v5, v8

    .line 302
    .end local v7    # "oldColumn":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_8
    move v8, v5

    if-nez v8, :cond_6

    .line 303
    move-object v8, v2

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->createColumnHeader(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_5

    .line 292
    .restart local v7    # "oldColumn":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 307
    .end local v4    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v5    # "found":Z
    .end local v6    # "j":I
    .end local v7    # "oldColumn":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_a
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v8

    .line 310
    move-object v8, v1

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v8

    .line 311
    const/4 v8, 0x0

    move v3, v8

    :goto_7
    move v8, v3

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 312
    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dispose()V

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 323
    .end local v1    # "oldHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v2    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v3    # "i":I
    :cond_b
    return-void
.end method

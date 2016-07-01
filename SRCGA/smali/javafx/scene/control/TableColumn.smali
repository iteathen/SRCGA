.class public Ljavafx/scene/control/TableColumn;
.super Ljavafx/scene/control/TableColumnBase;
.source "TableColumn.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TableColumn$SortType;,
        Ljavafx/scene/control/TableColumn$CellEditEvent;,
        Ljavafx/scene/control/TableColumn$CellDataFeatures;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableColumnBase",
        "<TS;TT;>;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<**>;",
            "Ljavafx/scene/control/TableCell",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "table-column"

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
.field private DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final cellFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;>;"
        }
    .end annotation
.end field

.field private cellValueFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

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

.field private columnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation
.end field

.field private sortType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableColumn$SortType;",
            ">;"
        }
    .end annotation
.end field

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

.field private weakColumnsListener:Ljavafx/collections/WeakListChangeListener;
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
    .locals 5

    .prologue
    .line 151
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TABLE_COLUMN_EDIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    .line 163
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 164
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_START"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TableColumn;->EDIT_START_EVENT:Ljavafx/event/EventType;

    .line 174
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 175
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_CANCEL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TableColumn;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    .line 186
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 187
    invoke-static {}, Ljavafx/scene/control/TableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_COMMIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TableColumn;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    .line 199
    new-instance v0, Ljavafx/scene/control/TableColumn$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/scene/control/TableColumn$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/TableColumn;->DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableColumnBase;-><init>()V

    .line 280
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableColumn$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TableColumn;)Ljavafx/event/EventHandler;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    .line 292
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableColumn$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TableColumn;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->columnsListener:Ljavafx/collections/ListChangeListener;

    .line 316
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableColumn;->columnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 328
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->columns:Ljavafx/collections/ObservableList;

    .line 342
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "tableView"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 414
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableColumn$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "cellFactory"

    sget-object v7, Ljavafx/scene/control/TableColumn;->DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TableColumn$2;-><init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    .line 237
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "table-column"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 239
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableColumn;->setOnEditCommit(Ljavafx/event/EventHandler;)V

    .line 244
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 246
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->tableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TableColumn$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TableColumn;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableColumn;-><init>()V

    .line 269
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumn;->setText(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method static synthetic access$000()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Ljavafx/scene/control/TableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TableColumn;Ljavafx/scene/control/TableColumn$CellEditEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumn;->lambda$new$32(Ljavafx/scene/control/TableColumn$CellEditEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TableColumn;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumn;->lambda$new$33(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TableColumn;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumn;->lambda$new$31(Ljavafx/beans/Observable;)V

    return-void
.end method

.method public static editAnyEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Ljavafx/scene/control/TableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCancelEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Ljavafx/scene/control/TableColumn;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editCommitEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Ljavafx/scene/control/TableColumn;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static editStartEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Ljavafx/scene/control/TableColumn;->EDIT_START_EVENT:Ljavafx/event/EventType;

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
    .line 626
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$31(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

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

    check-cast v4, Ljavafx/scene/control/TableColumn;

    move-object v3, v4

    .line 250
    .local v3, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableColumn;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 251
    goto :goto_0

    .line 259
    .end local v3    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$32(Ljavafx/scene/control/TableColumn$CellEditEvent;)V
    .locals 8

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/TableColumn$CellEditEvent;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn$CellEditEvent;->getTablePosition()Ljavafx/scene/control/TablePosition;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v6

    move v2, v6

    .line 282
    .local v2, "index":I
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumn$CellEditEvent;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v3, v6

    .line 283
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    move-object v6, v3

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 285
    .local v4, "rowData":Ljava/lang/Object;, "TS;"
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TableColumn;->getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;

    move-result-object v6

    move-object v5, v6

    .line 287
    .local v5, "ov":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v6, v5

    instance-of v6, v6, Ljavafx/beans/value/WritableValue;

    if-eqz v6, :cond_2

    .line 288
    move-object v6, v5

    check-cast v6, Ljavafx/beans/value/WritableValue;

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumn$CellEditEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/beans/value/WritableValue;->setValue(Ljava/lang/Object;)V

    .line 290
    :cond_2
    goto :goto_0
.end method

.method private synthetic lambda$new$33(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableColumn;

    move-object v3, v4

    .line 303
    .local v3, "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableColumn;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 306
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableColumn;->setParentColumn(Ljavafx/scene/control/TableColumnBase;)V

    .line 307
    goto :goto_1

    .line 308
    .end local v3    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableColumn;

    move-object v3, v4

    .line 309
    .restart local v3    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableColumn;->setTableView(Ljavafx/scene/control/TableView;)V

    .line 310
    goto :goto_2

    .line 312
    .end local v3    # "tc":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->updateColumnWidths()V

    goto :goto_0

    .line 314
    :cond_3
    return-void
.end method

.method private scan(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 8

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    move-object v5, v1

    move-object v0, v5

    .line 662
    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :goto_0
    return-object v0

    .line 652
    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    if-eqz v5, :cond_2

    .line 653
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v2, v5

    .line 654
    .local v2, "parent":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 655
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-direct {v5, v6}, Ljavafx/scene/control/TableColumn;->scan(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v5

    move-object v4, v5

    .line 656
    .local v4, "result":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 657
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 654
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    .end local v2    # "parent":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .end local v3    # "i":I
    .end local v4    # "result":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public final cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final cellValueFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 393
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cellValueFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    .line 395
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getCellFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move v1, p1

    .local v1, "index":I
    move v5, v1

    if-gez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 563
    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :goto_0
    return-object v0

    .line 555
    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v2, v5

    .line 556
    .local v2, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 559
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v3, v5

    .line 560
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move v5, v1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 562
    :cond_3
    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 563
    .local v4, "rowData":Ljava/lang/Object;, "TS;"
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public final getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TS;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getCellValueFactory()Ljavafx/util/Callback;

    move-result-object v5

    move-object v2, v5

    .line 570
    .local v2, "factory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;Ljavafx/beans/value/ObservableValue<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 578
    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :goto_0
    return-object v0

    .line 573
    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v5

    move-object v3, v5

    .line 574
    .local v3, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 577
    :cond_1
    new-instance v5, Ljavafx/scene/control/TableColumn$CellDataFeatures;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TableColumn$CellDataFeatures;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Object;)V

    move-object v4, v5

    .line 578
    .local v4, "cdf":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/beans/value/ObservableValue;

    move-object v0, v5

    goto :goto_0
.end method

.method public final getCellValueFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

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
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->columns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
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
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    invoke-static {}, Ljavafx/scene/control/TableColumn;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getOnEditCancel()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getSortType()Ljavafx/scene/control/TableColumn$SortType;
    .locals 2

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumn$SortType;

    goto :goto_0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
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
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    const-string v1, "TableColumn"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public impl_styleableGetNode()Ljavafx/scene/Node;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 643
    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<*>;"
    .local v2, "tableHeader":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .local v3, "rootHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    :goto_0
    return-object v0

    .line 637
    .end local v1    # "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<*>;"
    .end local v2    # "tableHeader":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .end local v3    # "rootHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .restart local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    move-object v1, v4

    .line 639
    .restart local v1    # "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkin;, "Lcom/sun/javafx/scene/control/skin/TableViewSkin<*>;"
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v4

    move-object v2, v4

    .line 640
    .restart local v2    # "tableHeader":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v4

    move-object v3, v4

    .line 643
    .restart local v3    # "rootHeader":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/scene/control/TableColumn;->scan(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 528
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableColumn$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCancel"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TableColumn$5;-><init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    .line 534
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 505
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableColumn$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCommit"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TableColumn$4;-><init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    .line 511
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
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
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 481
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableColumn$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditStart"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TableColumn$3;-><init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    .line 487
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final setCellFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn<TS;TT;>;Ljavafx/scene/control/TableCell<TS;TT;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public final setCellValueFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;Ljavafx/beans/value/ObservableValue<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn;->cellValueFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public final setOnEditCancel(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public final setOnEditCommit(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn;->onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public final setOnEditStart(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn;->onEditStartProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public final setSortType(Ljavafx/scene/control/TableColumn$SortType;)V
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableColumn$SortType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method final setTableView(Ljavafx/scene/control/TableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final sortTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TableColumn$SortType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 454
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "sortType"

    sget-object v6, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    .line 456
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
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
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->tableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    return-object v0
.end method

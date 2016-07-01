.class public Ljavafx/scene/control/TreeTableColumn;
.super Ljavafx/scene/control/TableColumnBase;
.source "TreeTableColumn.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TreeTableColumn$SortType;,
        Ljavafx/scene/control/TreeTableColumn$CellEditEvent;,
        Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;
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
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;TT;>;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<**>;",
            "Ljavafx/scene/control/TreeTableCell",
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
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
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
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
            "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
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
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private columnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation
.end field

.field private sortType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$SortType;",
            ">;"
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

.field private weakColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 142
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TREE_TABLE_COLUMN_EDIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    .line 155
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 156
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_START"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_START_EVENT:Ljavafx/event/EventType;

    .line 166
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 167
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_CANCEL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    .line 178
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 179
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_COMMIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    .line 191
    new-instance v0, Ljavafx/scene/control/TreeTableColumn$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableColumn$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/TreeTableColumn;->DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableColumnBase;-><init>()V

    .line 273
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableColumn$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/event/EventHandler;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    .line 281
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableColumn$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeTableColumn$2;-><init>(Ljavafx/scene/control/TreeTableColumn;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->columnsListener:Ljavafx/collections/ListChangeListener;

    .line 307
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableColumn;->columnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 318
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->columns:Ljavafx/collections/ObservableList;

    .line 333
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "treeTableView"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 407
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableColumn$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "cellFactory"

    sget-object v7, Ljavafx/scene/control/TreeTableColumn;->DEFAULT_CELL_FACTORY:Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableColumn$3;-><init>(Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "table-column"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 230
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableColumn;->setOnEditCommit(Ljavafx/event/EventHandler;)V

    .line 235
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn;->weakColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 237
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->treeTableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/TreeTableColumn$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableColumn;-><init>()V

    .line 262
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableColumn;->setText(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method static synthetic access$000()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableColumn;Ljavafx/scene/control/TreeTableColumn$CellEditEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableColumn;->lambda$new$112(Ljavafx/scene/control/TreeTableColumn$CellEditEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TreeTableColumn;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TreeTableColumn;->lambda$new$111(Ljavafx/beans/Observable;)V

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 164
    sget-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Ljavafx/scene/control/TreeTableColumn;->EDIT_START_EVENT:Ljavafx/event/EventType;

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
    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$111(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->getColumns()Ljavafx/collections/ObservableList;

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

    check-cast v4, Ljavafx/scene/control/TreeTableColumn;

    move-object v3, v4

    .line 241
    .local v3, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableColumn;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 242
    goto :goto_0

    .line 250
    .end local v3    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$112(Ljavafx/scene/control/TreeTableColumn$CellEditEvent;)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->getRowValue()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v2, v3

    .line 276
    .local v2, "ov":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/value/WritableValue;

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v2

    check-cast v3, Ljavafx/beans/value/WritableValue;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/beans/value/WritableValue;->setValue(Ljava/lang/Object;)V

    .line 279
    :cond_0
    return-void
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
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
            "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 385
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cellValueFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    .line 387
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getCellFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move v1, p1

    .local v1, "index":I
    move v4, v1

    if-gez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 548
    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :goto_0
    return-object v0

    .line 543
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v4

    move-object v2, v4

    .line 544
    .local v2, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 547
    :cond_2
    move-object v4, v2

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v3, v4

    .line 548
    .local v3, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public bridge synthetic getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getCellObservableValue(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getCellValueFactory()Ljavafx/util/Callback;

    move-result-object v5

    move-object v2, v5

    .line 555
    .local v2, "factory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;Ljavafx/beans/value/ObservableValue<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 563
    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :goto_0
    return-object v0

    .line 558
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    move-object v3, v5

    .line 559
    .local v3, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 562
    :cond_1
    new-instance v5, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;-><init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljavafx/scene/control/TreeItem;)V

    move-object v4, v5

    .line 563
    .local v4, "cdf":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
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
            "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->cellValueFactory:Ljavafx/beans/property/ObjectProperty;

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
    .line 535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->columns:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final getOnEditCancel()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getSortType()Ljavafx/scene/control/TreeTableColumn$SortType;
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableColumn$SortType;

    goto :goto_0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    const-string v1, "TreeTableColumn"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public impl_styleableGetNode()Ljavafx/scene/Node;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 516
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableColumn$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCancel"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableColumn$6;-><init>(Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    .line 522
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 493
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableColumn$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditCommit"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableColumn$5;-><init>(Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    .line 499
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 469
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TreeTableColumn$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onEditStart"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeTableColumn$4;-><init>(Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    .line 475
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

.method public final setCellFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableColumn<TS;TT;>;Ljavafx/scene/control/TreeTableCell<TS;TT;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method public final setCellValueFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;Ljavafx/beans/value/ObservableValue<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn;->cellValueFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public final setOnEditCancel(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public final setOnEditCommit(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn;->onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public final setOnEditStart(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn;->onEditStartProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public final setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableColumn$SortType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method final setTreeTableView(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

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
            "Ljavafx/scene/control/TreeTableColumn$SortType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 443
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "sortType"

    sget-object v6, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TreeTableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    .line 445
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->sortType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
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
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn;->treeTableView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    return-object v0
.end method

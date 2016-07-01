.class public Ljavafx/scene/control/ListView;
.super Ljavafx/scene/control/Control;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ListView$ListViewFocusModel;,
        Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;,
        Ljavafx/scene/control/ListView$EditEvent;,
        Ljavafx/scene/control/ListView$StyleableProperties;
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
    value = "items"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "list-view"

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

.field private static final PSEUDO_CLASS_HORIZONTAL:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_VERTICAL:Ljavafx/css/PseudoClass;


# instance fields
.field private DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private cellFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private fixedCellSize:Ljavafx/beans/property/DoubleProperty;

.field private focusModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
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
            "Ljavafx/scene/control/ListView$EditEvent",
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
            "Ljavafx/scene/control/ListView$EditEvent",
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
            "Ljavafx/scene/control/ListView$EditEvent",
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

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
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

.field private selectFirstRowByDefault:Z

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 245
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "LIST_VIEW_EDIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ListView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    .line 256
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 257
    invoke-static {}, Ljavafx/scene/control/ListView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_START"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ListView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    .line 267
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 268
    invoke-static {}, Ljavafx/scene/control/ListView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_CANCEL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ListView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

    .line 278
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 279
    invoke-static {}, Ljavafx/scene/control/ListView;->editAnyEvent()Ljavafx/event/EventType;

    move-result-object v2

    const-string v3, "EDIT_COMMIT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ListView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

    .line 1056
    const-string v0, "vertical"

    .line 1057
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ListView;->PSEUDO_CLASS_VERTICAL:Ljavafx/css/PseudoClass;

    .line 1058
    const-string v0, "horizontal"

    .line 1059
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ListView;->PSEUDO_CLASS_HORIZONTAL:Ljavafx/css/PseudoClass;

    .line 1058
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/ListView;-><init>(Ljavafx/collections/ObservableList;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 292
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/ListView;->selectFirstRowByDefault:Z

    .line 364
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ListView$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ListView;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ListView;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    .line 439
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "selectionModel"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ListView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 328
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "list-view"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 329
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->LIST_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 331
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setItems(Ljavafx/collections/ObservableList;)V

    .line 335
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;-><init>(Ljavafx/scene/control/ListView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setSelectionModel(Ljavafx/scene/control/MultipleSelectionModel;)V

    .line 338
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ListView$ListViewFocusModel;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ListView$ListViewFocusModel;-><init>(Ljavafx/scene/control/ListView;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setFocusModel(Ljavafx/scene/control/FocusModel;)V

    .line 341
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ListView;->DEFAULT_EDIT_COMMIT_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setOnEditCommit(Ljavafx/event/EventHandler;)V

    .line 347
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ListView$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ListView;)Ljavafx/collections/MapChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 354
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ljavafx/scene/control/ListView;->PSEUDO_CLASS_VERTICAL:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ljavafx/scene/control/ListView;->PSEUDO_CLASS_HORIZONTAL:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1100()Ljavafx/event/EventType;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ljavafx/scene/control/ListView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/control/ListView;)Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ListView;->selectFirstRowByDefault:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListView;
    return v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ListView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ListView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ListView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ListView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/control/ListView;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListView;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/ListView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListView;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ListView;Ljavafx/scene/control/ListView$EditEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListView;->lambda$new$156(Ljavafx/scene/control/ListView$EditEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ListView;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListView;->lambda$new$155(Ljavafx/collections/MapChangeListener$Change;)V

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Ljavafx/scene/control/ListView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Ljavafx/scene/control/ListView;->EDIT_CANCEL_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 276
    sget-object v0, Ljavafx/scene/control/ListView;->EDIT_COMMIT_EVENT:Ljavafx/event/EventType;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Ljavafx/scene/control/ListView;->EDIT_START_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private editingIndexPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    .locals 8

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    .line 709
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editingIndex"

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 711
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
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
    .line 1044
    # getter for: Ljavafx/scene/control/ListView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/ListView$StyleableProperties;->access$1000()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$155(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "selectFirstRowByDefault"

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 350
    .local v2, "_selectFirstRowByDefault":Ljava/lang/Boolean;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 353
    .end local v2    # "_selectFirstRowByDefault":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 351
    .restart local v2    # "_selectFirstRowByDefault":Ljava/lang/Boolean;
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Ljavafx/scene/control/ListView;->selectFirstRowByDefault:Z

    .line 353
    .end local v2    # "_selectFirstRowByDefault":Ljava/lang/Boolean;
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$new$156(Ljavafx/scene/control/ListView$EditEvent;)V
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/ListView$EditEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ListView$EditEvent;->getIndex()I

    move-result v4

    move v2, v4

    .line 366
    .local v2, "index":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v3, v4

    .line 367
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    move-object v4, v3

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$EditEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 369
    goto :goto_0
.end method

.method private setEditingIndex(I)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView;->editingIndexPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 686
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
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 584
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cellFactory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    .line 586
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
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
    .line 951
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;-><init>(Ljavafx/scene/control/ListView;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public edit(I)V
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v1, p1

    .local v1, "itemIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListView;->setEditingIndex(I)V

    .line 884
    goto :goto_0
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 675
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 677
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final editingIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ListView;->editingIndexPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 641
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 642
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/ListView$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ListView$2;-><init>(Ljavafx/scene/control/ListView;D)V

    iput-object v3, v2, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    .line 656
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
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
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 494
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "focusModel"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    .line 496
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final getCellFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->cellFactory:Ljavafx/beans/property/ObjectProperty;

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
    .line 1053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    invoke-static {}, Ljavafx/scene/control/ListView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final getEditingIndex()I
    .locals 2

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editingIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getFixedCellSize()D
    .locals 4

    .prologue
    .line 617
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ListView;->fixedCellSize:Ljavafx/beans/property/DoubleProperty;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->focusModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/FocusModel;

    goto :goto_0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->items:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    goto :goto_0
.end method

.method public final getOnEditCancel()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

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
    .line 924
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    .line 925
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .line 927
    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method public final getPlaceholder()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MultipleSelectionModel;

    goto :goto_0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->items:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 409
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "items"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->items:Ljavafx/beans/property/ObjectProperty;

    .line 411
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 843
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListView$5;-><init>(Ljavafx/scene/control/ListView;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    .line 859
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCancel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 799
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListView$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListView$4;-><init>(Ljavafx/scene/control/ListView;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    .line 815
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditCommit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final onEditStartProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 744
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListView$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListView$3;-><init>(Ljavafx/scene/control/ListView;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    .line 760
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onEditStart:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
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
    .line 931
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 932
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListView$6;-><init>(Ljavafx/scene/control/ListView;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    .line 946
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->onScrollTo:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 525
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListView$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ListView$1;-><init>(Ljavafx/scene/control/ListView;Ljavafx/geometry/Orientation;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 548
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
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
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 426
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "placeholder"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ListView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    .line 428
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->placeholder:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/ListView$7;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1076
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :goto_0
    return-object v0

    .line 1073
    .restart local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v3, v4

    .line 1074
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
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

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "listRecreateKey"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 965
    return-void
.end method

.method public scrollTo(I)V
    .locals 4

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 896
    return-void
.end method

.method public scrollTo(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 905
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 906
    .local v2, "idx":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 907
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/control/ControlUtils;->scrollToIndex(Ljavafx/scene/control/Control;I)V

    .line 910
    .end local v2    # "idx":I
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
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    return-object v0
.end method

.method public final setCellFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ListView<TT;>;Ljavafx/scene/control/ListCell<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 664
    return-void
.end method

.method public final setFixedCellSize(D)V
    .locals 7

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 605
    return-void
.end method

.method public final setFocusModel(Ljavafx/scene/control/FocusModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public final setOnEditCancel(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;

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
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->onEditCommitProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method public final setOnEditStart(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->onEditStartProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 728
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
    .line 920
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ScrollToEvent<Ljava/lang/Integer;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 921
    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public final setPlaceholder(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/MultipleSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

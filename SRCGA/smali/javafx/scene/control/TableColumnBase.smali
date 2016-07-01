.class public abstract Ljavafx/scene/control/TableColumnBase;
.super Ljava/lang/Object;
.source "TableColumnBase.java"

# interfaces
.implements Ljavafx/event/EventTarget;
.implements Ljavafx/css/Styleable;


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/event/EventTarget;",
        "Ljavafx/css/Styleable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPARATOR:Ljava/util/Comparator;

.field static final DEFAULT_MAX_WIDTH:D = 5000.0

.field static final DEFAULT_MIN_WIDTH:D = 10.0

.field static final DEFAULT_WIDTH:D = 80.0

.field private static final USER_DATA_KEY:Ljava/lang/Object;


# instance fields
.field private comparator:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/Comparator",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private contextMenu:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation
.end field

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

.field private fixed:Ljavafx/beans/property/BooleanProperty;

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

.field private id:Ljavafx/beans/property/StringProperty;

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private final prefWidth:Ljavafx/beans/property/DoubleProperty;

.field private properties:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reorderable:Ljavafx/beans/property/BooleanProperty;

.field private resizable:Ljavafx/beans/property/BooleanProperty;

.field private sortNode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sortable:Ljavafx/beans/property/BooleanProperty;

.field private style:Ljavafx/beans/property/StringProperty;

.field private final styleClass:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljavafx/beans/property/StringProperty;

.field private visible:Ljavafx/beans/property/BooleanProperty;

.field private width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Ljavafx/scene/control/TableColumnBase$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TableColumnBase;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 613
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/control/TableColumnBase;->USER_DATA_KEY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    const-string v2, ""

    invoke-direct {v1, v2}, Ljavafx/scene/control/TableColumnBase;-><init>(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 174
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 189
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleStringProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const-string v6, "text"

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->text:Ljavafx/beans/property/StringProperty;

    .line 200
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableColumnBase$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v0

    const-string v7, "visible"

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/TableColumnBase$1;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->visible:Ljavafx/beans/property/BooleanProperty;

    .line 333
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->styleClass:Ljavafx/collections/ObservableList;

    .line 383
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const-string v6, "sortNode"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->sortNode:Ljavafx/beans/property/ObjectProperty;

    .line 400
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const-string v6, "width"

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 433
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableColumnBase$4;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v0

    const-string v7, "prefWidth"

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TableColumnBase$4;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 449
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TableColumnBase$5;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v0

    const-string v7, "maxWidth"

    const-wide v8, 0x40b3880000000000L    # 5000.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TableColumnBase$5;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 155
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumnBase;->setText(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/TableColumnBase;->lambda$static$15(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$static$15(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "obj1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "obj2":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 130
    .end local v0    # "obj1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 123
    .restart local v0    # "obj1":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 124
    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 126
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Comparable;

    if-eqz v2, :cond_5

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    check-cast v2, Ljava/lang/Comparable;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    .line 130
    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private parentColumnPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 247
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "parentColumn"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 249
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
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
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 771
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final comparatorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/Comparator",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->comparator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 579
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "comparator"

    sget-object v6, Ljavafx/scene/control/TableColumnBase;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->comparator:Ljavafx/beans/property/ObjectProperty;

    .line 581
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->comparator:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final contextMenuProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 263
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TableColumnBase$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "contextMenu"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TableColumnBase$2;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    .line 285
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 606
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 608
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getCellData(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumnBase;->getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v2, v3

    .line 699
    .local v2, "result":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public final getCellData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TS;"
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumnBase;->getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v2, v3

    .line 711
    .local v2, "result":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getCellObservableValue(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getColumns()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;>;"
        }
    .end annotation
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->comparator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TableColumnBase;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->comparator:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    goto :goto_0
.end method

.method public final getContextMenu()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContextMenu;

    goto :goto_0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->graphic:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->id:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 3

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-wide v0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 409
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase;->minWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getParentColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->parentColumn:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumnBase;

    goto :goto_0
.end method

.method public final getPrefWidth()D
    .locals 3

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-wide v0
.end method

.method public final getProperties()Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 627
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->properties:Ljavafx/collections/ObservableMap;

    .line 629
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getPseudoClassStates()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getSortNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortNode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->style:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStyleClass()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->styleClass:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumnBase;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/TableColumnBase;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-wide v0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 361
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "graphic"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 363
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final idProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 302
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "id"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->id:Ljavafx/beans/property/StringProperty;

    .line 304
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->id:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final impl_fixedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->fixed:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 548
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "fixed"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->fixed:Ljavafx/beans/property/BooleanProperty;

    .line 550
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->fixed:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final impl_isFixed()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->fixed:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->fixed:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final impl_isReorderable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->reorderable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->reorderable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final impl_reorderableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->reorderable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 515
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "reorderable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->reorderable:Ljavafx/beans/property/BooleanProperty;

    .line 517
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->reorderable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final impl_setFixed(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->impl_fixedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 559
    return-void
.end method

.method public final impl_setReorderable(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->impl_reorderableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 526
    return-void
.end method

.method public impl_setWidth(D)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableColumnBase;->setWidth(D)V

    .line 802
    return-void
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isResizable()Z
    .locals 2

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->resizable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->resizable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSortable()Z
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->visible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return v0
.end method

.method public final maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 412
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TableColumnBase$3;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "minWidth"

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/control/TableColumnBase$3;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBase;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 422
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v1
.end method

.method public final parentColumnProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableColumnBase;->parentColumnPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final prefWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
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
    .line 784
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 785
    return-void
.end method

.method public final resizableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->resizable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 464
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "resizable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->resizable:Ljavafx/beans/property/BooleanProperty;

    .line 466
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->resizable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final setComparator(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method public final setContextMenu(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->contextMenuProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 600
    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method setParentColumn(Ljavafx/scene/control/TableColumnBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;*>;)V"
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableColumnBase;->parentColumnPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefWidth(D)V
    .locals 7

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setResizable(Z)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 470
    return-void
.end method

.method public final setSortNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->sortNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSortable(Z)V
    .locals 4

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->sortableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 499
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase;->text:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/TableColumnBase;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 653
    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method setWidth(D)V
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    return-void
.end method

.method public final sortNodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortNode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final sortableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 493
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "sortable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->sortable:Ljavafx/beans/property/BooleanProperty;

    .line 495
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->sortable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final styleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 326
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "style"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableColumnBase;->style:Ljavafx/beans/property/StringProperty;

    .line 328
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->style:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method updateColumnWidths()V
    .locals 14

    .prologue
    .line 805
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 809
    const-wide/16 v10, 0x0

    move-wide v2, v10

    .line 810
    .local v2, "_minWidth":D
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 811
    .local v4, "_prefWidth":D
    const-wide/16 v10, 0x0

    move-wide v6, v10

    .line 813
    .local v6, "_maxWidth":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_0
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TableColumnBase;

    move-object v9, v10

    .line 814
    .local v9, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TableColumnBase;->setParentColumn(Ljavafx/scene/control/TableColumnBase;)V

    .line 816
    move-wide v10, v2

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v2, v10

    .line 817
    move-wide v10, v4

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/control/TableColumnBase;->getPrefWidth()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v4, v10

    .line 818
    move-wide v10, v6

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v6, v10

    .line 819
    goto :goto_0

    .line 821
    .end local v9    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    :cond_0
    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableColumnBase;->setMinWidth(D)V

    .line 822
    move-object v10, v1

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableColumnBase;->setPrefWidth(D)V

    .line 823
    move-object v10, v1

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableColumnBase;->setMaxWidth(D)V

    .line 825
    .end local v2    # "_minWidth":D
    .end local v4    # "_prefWidth":D
    .end local v6    # "_maxWidth":D
    :cond_1
    return-void
.end method

.method public final visibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->visible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    return-object v0
.end method

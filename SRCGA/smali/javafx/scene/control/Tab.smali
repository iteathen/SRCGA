.class public Ljavafx/scene/control/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljavafx/event/EventTarget;
.implements Ljavafx/css/Styleable;


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "content"
.end annotation


# static fields
.field public static final CLOSED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "tab"

.field public static final SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAB_CLOSE_REQUEST_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_DATA_KEY:Ljava/lang/Object;


# instance fields
.field private closable:Ljavafx/beans/property/BooleanProperty;

.field private content:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
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

.field private disable:Ljavafx/beans/property/BooleanProperty;

.field private disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

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

.field private onCloseRequest:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onClosed:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSelectionChanged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

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

.field private selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

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

.field private tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TabPane;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljavafx/beans/property/StringProperty;

.field private tooltip:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Tooltip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 452
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "SELECTION_CHANGED_EVENT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Tab;->SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;

    .line 499
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TAB_CLOSED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Tab;->CLOSED_EVENT:Ljavafx/event/EventType;

    .line 678
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TAB_CLOSE_REQUEST_EVENT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Tab;->TAB_CLOSE_REQUEST_EVENT:Ljavafx/event/EventType;

    .line 719
    new-instance v0, Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/control/Tab;->USER_DATA_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/Tab;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/Tab;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 269
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/Tab$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Tab;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/Tab;->parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

    .line 565
    move-object v3, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/Tab;->styleClass:Ljavafx/collections/ObservableList;

    .line 789
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/Tab;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Tab;->setText(Ljava/lang/String;)V

    .line 112
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Tab;->setContent(Ljavafx/scene/Node;)V

    .line 113
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tab;->styleClass:Ljavafx/collections/ObservableList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "tab"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 114
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Tab;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/Tab;)V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Tab;->updateDisabled()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Tab;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tab;->lambda$new$14(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 646
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab$7;-><init>(Ljavafx/scene/control/Tab;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 658
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
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
    .line 896
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$14(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Tab;->updateDisabled()V

    .line 271
    return-void
.end method

.method private selectedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 206
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab$1;-><init>(Ljavafx/scene/control/Tab;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 224
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method private final setDisabled(Z)V
    .locals 4

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Tab;->disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 621
    return-void
.end method

.method private tabPanePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TabPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 249
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "tabPane"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tab$2;-><init>(Ljavafx/scene/control/Tab;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 266
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method private updateDisabled()V
    .locals 5

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getTabPane()Ljavafx/scene/control/TabPane;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getTabPane()Ljavafx/scene/control/TabPane;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 663
    .local v1, "disabled":Z
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab;->setDisabled(Z)V

    .line 666
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 667
    .local v2, "content":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 668
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setDisable(Z)V

    .line 670
    :cond_1
    return-void

    .line 662
    .end local v1    # "disabled":Z
    .end local v2    # "content":Ljavafx/scene/Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tab;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final closableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->closable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 443
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "closable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->closable:Ljavafx/beans/property/BooleanProperty;

    .line 445
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->closable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final contentProperty()Ljavafx/beans/property/ObjectProperty;
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

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 361
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "content"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->content:Ljavafx/beans/property/ObjectProperty;

    .line 363
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
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
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 390
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "contextMenu"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tab$3;-><init>(Ljavafx/scene/control/Tab;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    .line 412
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final disableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 597
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Tab$6;-><init>(Ljavafx/scene/control/Tab;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->disable:Ljavafx/beans/property/BooleanProperty;

    .line 614
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Tab;->disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->content:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getContextMenu()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContextMenu;

    goto :goto_0
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
    .line 887
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    invoke-static {}, Ljavafx/scene/control/Tab;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->graphic:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->id:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOnCloseRequest()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 708
    const/4 v1, 0x0

    move-object v0, v1

    .line 710
    .end local v0    # "this":Ljavafx/scene/control/Tab;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getOnClosed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onClosed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onClosed:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnSelectionChanged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onSelectionChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onSelectionChanged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
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
    .line 733
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 734
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/Tab;->properties:Ljavafx/collections/ObservableMap;

    .line 736
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
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
    .line 878
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->style:Ljavafx/beans/property/StringProperty;

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
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->styleClass:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->getTabPane()Ljavafx/scene/control/TabPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final getTabPane()Ljavafx/scene/control/TabPane;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tabPane:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    goto :goto_0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTooltip()Ljavafx/scene/control/Tooltip;
    .locals 2

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tooltip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tooltip:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Tooltip;

    goto :goto_0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    const-string v1, "Tab"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/Tab;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
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
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 331
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "graphic"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 333
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final idProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 144
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "id"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->id:Ljavafx/beans/property/StringProperty;

    .line 146
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->id:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final isClosable()Z
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->closable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->closable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisable()Z
    .locals 2

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisabled()Z
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method lookup(Ljava/lang/String;)Ljavafx/scene/Node;
    .locals 5

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 821
    .end local v0    # "this":Ljavafx/scene/control/Tab;
    :goto_0
    return-object v0

    .line 814
    .restart local v0    # "this":Ljavafx/scene/control/Tab;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    .line 815
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 816
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 818
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 819
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 821
    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method lookupAll(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 829
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 830
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->lookupAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object v3, v4

    .line 831
    .local v3, "set":Ljava/util/Set;
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 832
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 835
    .end local v3    # "set":Ljava/util/Set;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 836
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->lookupAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object v3, v4

    .line 837
    .restart local v3    # "set":Ljava/util/Set;
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 838
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 841
    .end local v3    # "set":Ljava/util/Set;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 689
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab$8;-><init>(Ljavafx/scene/control/Tab;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    .line 703
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final onClosedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onClosed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 523
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab$5;-><init>(Ljavafx/scene/control/Tab;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->onClosed:Ljavafx/beans/property/ObjectProperty;

    .line 539
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onClosed:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final onSelectionChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onSelectionChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 477
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tab$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tab$4;-><init>(Ljavafx/scene/control/Tab;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->onSelectionChanged:Ljavafx/beans/property/ObjectProperty;

    .line 493
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->onSelectionChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final selectedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Tab;->selectedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final setClosable(Z)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->closableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 427
    return-void
.end method

.method public final setContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public final setContextMenu(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->contextMenuProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public final setDisable(Z)V
    .locals 4

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 579
    return-void
.end method

.method protected setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
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
    .line 806
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tab;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 807
    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnCloseRequest(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 715
    return-void
.end method

.method public final setOnClosed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->onClosedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public final setOnSelectionChanged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->onSelectionChangedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method final setSelected(Z)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Tab;->selectedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 186
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setTabPane(Ljavafx/scene/control/TabPane;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TabPane;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Tab;->tabPanePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public final setTooltip(Ljavafx/scene/control/Tooltip;)V
    .locals 4

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/Tab;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 762
    return-void
.end method

.method public final styleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 177
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "style"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->style:Ljavafx/beans/property/StringProperty;

    .line 179
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->style:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final tabPaneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TabPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Tab;->tabPanePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 298
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "text"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->text:Ljavafx/beans/property/StringProperty;

    .line 300
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

.method public final tooltipProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Tooltip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tooltip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 560
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "tooltip"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Tab;->tooltip:Ljavafx/beans/property/ObjectProperty;

    .line 562
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab;->tooltip:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab;
    return-object v0
.end method

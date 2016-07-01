.class public Ljavafx/scene/control/Menu;
.super Ljavafx/scene/control/MenuItem;
.source "Menu.java"


# annotations
.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "items"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "menu"

.field public static final ON_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLE_CLASS_SHOWING:Ljava/lang/String; = "showing"


# instance fields
.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/beans/property/ObjectProperty;
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

.field private onHiding:Ljavafx/beans/property/ObjectProperty;
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

.field private onShowing:Ljavafx/beans/property/ObjectProperty;
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

.field private onShown:Ljavafx/beans/property/ObjectProperty;
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

.field private showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 91
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_ON_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Menu;->ON_SHOWING:Ljavafx/event/EventType;

    .line 99
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_ON_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    .line 107
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_ON_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Menu;->ON_HIDING:Ljavafx/event/EventType;

    .line 115
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_ON_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/Menu;->ON_HIDDEN:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    const-string v2, ""

    invoke-direct {v1, v2}, Ljavafx/scene/control/Menu;-><init>(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/Menu;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, [Ljavafx/scene/control/MenuItem;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Menu;-><init>(Ljava/lang/String;Ljavafx/scene/Node;[Ljavafx/scene/control/MenuItem;)V

    .line 150
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;[Ljavafx/scene/control/MenuItem;)V
    .locals 9

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "items":[Ljavafx/scene/control/MenuItem;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 262
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Menu$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/Menu$2;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v5, v4, Ljavafx/scene/control/Menu;->onShowing:Ljavafx/beans/property/ObjectProperty;

    .line 286
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Menu$3;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/Menu$3;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v5, v4, Ljavafx/scene/control/Menu;->onShown:Ljavafx/beans/property/ObjectProperty;

    .line 310
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Menu$4;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/Menu$4;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v5, v4, Ljavafx/scene/control/Menu;->onHiding:Ljavafx/beans/property/ObjectProperty;

    .line 334
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Menu$5;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/Menu$5;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v5, v4, Ljavafx/scene/control/Menu;->onHidden:Ljavafx/beans/property/ObjectProperty;

    .line 358
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Menu$6;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/Menu$6;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v5, v4, Ljavafx/scene/control/Menu;->items:Ljavafx/collections/ObservableList;

    .line 164
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "menu"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 166
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 167
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    .line 170
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->parentPopupProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/control/Menu$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Menu;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Menu;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Menu;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Menu;->lambda$new$10(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$10(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 172
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 173
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentPopup(Ljavafx/scene/control/ContextMenu;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    :cond_0
    return-void
.end method

.method private setShowing(Z)V
    .locals 9

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move v1, p1

    .local v1, "value":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    move v4, v1

    if-eqz v4, :cond_4

    .line 198
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 199
    move-object v4, v0

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Menu;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 200
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 201
    .local v3, "m":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-nez v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 202
    move-object v4, v3

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 204
    :cond_2
    goto :goto_1

    .line 206
    .end local v3    # "m":Ljavafx/scene/control/MenuItem;
    :cond_3
    move-object v4, v0

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Menu;->ON_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 210
    :goto_2
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/Menu;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 211
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_5

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_3
    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 213
    goto :goto_0

    .line 208
    :cond_4
    move-object v4, v0

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Menu;->ON_HIDING:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    goto :goto_2

    .line 211
    :cond_5
    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Menu;->ON_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_3
.end method

.method private showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 225
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Menu$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Menu$1;-><init>(Ljavafx/scene/control/Menu;)V

    iput-object v2, v1, Ljavafx/scene/control/Menu;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 249
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
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
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Menu;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 431
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Menu;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final getOnHidden()Ljavafx/event/EventHandler;
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
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final getOnHiding()Ljavafx/event/EventHandler;
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
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final getOnShowing()Ljavafx/event/EventHandler;
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
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final getOnShown()Ljavafx/event/EventHandler;
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
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public hide()V
    .locals 6

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v2, v4

    .line 420
    .local v2, "i":Ljavafx/scene/control/MenuItem;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_1

    .line 421
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 422
    .local v3, "m":Ljavafx/scene/control/Menu;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->hide()V

    .line 424
    .end local v3    # "m":Ljavafx/scene/control/Menu;
    :cond_1
    goto :goto_1

    .line 425
    .end local v2    # "i":Ljavafx/scene/control/MenuItem;
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Menu;->setShowing(Z)V

    .line 426
    goto :goto_0
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Menu;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->onHidden:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->onHiding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->onShowing:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method public final onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu;->onShown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
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
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Menu;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 436
    return-void
.end method

.method public final setOnHidden(Ljavafx/event/EventHandler;)V
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
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHiding(Ljavafx/event/EventHandler;)V
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
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShowing(Ljavafx/event/EventHandler;)V
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
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShown(Ljavafx/event/EventHandler;)V
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
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/Menu;->setShowing(Z)V

    .line 409
    goto :goto_0
.end method

.method public final showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Menu;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu;
    return-object v0
.end method

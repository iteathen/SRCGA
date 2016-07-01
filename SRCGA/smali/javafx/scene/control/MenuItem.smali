.class public Ljavafx/scene/control/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"

# interfaces
.implements Ljavafx/event/EventTarget;
.implements Ljavafx/css/Styleable;


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "menu-item"

.field public static final MENU_VALIDATION_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accelerator:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            ">;"
        }
    .end annotation
.end field

.field private disable:Ljavafx/beans/property/BooleanProperty;

.field final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

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

.field private mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMenuValidation:Ljavafx/beans/property/ObjectProperty;
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

.field private parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation
.end field

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

.field private userData:Ljava/lang/Object;

.field private visible:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 338
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_VALIDATION_EVENT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v3, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/MenuItem;->styleClass:Ljavafx/collections/ObservableList;

    .line 148
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/MenuItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 133
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MenuItem;->setText(Ljava/lang/String;)V

    .line 134
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MenuItem;->setGraphic(Ljavafx/scene/Node;)V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MenuItem;->styleClass:Ljavafx/collections/ObservableList;

    const-string v4, "menu-item"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 136
    return-void
.end method

.method private parentMenuPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/Menu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "parentMenu"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method private parentPopupPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 244
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "parentPopup"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 246
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method


# virtual methods
.method public final acceleratorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->accelerator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 417
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "accelerator"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->accelerator:Ljavafx/beans/property/ObjectProperty;

    .line 419
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->accelerator:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

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
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MenuItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 477
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenu;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    .line 501
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 502
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Menu;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    .line 505
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MenuItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final disableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 384
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "disable"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->disable:Ljavafx/beans/property/BooleanProperty;

    .line 386
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->disable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public fire()V
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 463
    return-void
.end method

.method public final getAccelerator()Ljavafx/scene/input/KeyCombination;
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->accelerator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->accelerator:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/KeyCombination;

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
    .line 590
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onAction:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onAction:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMenuValidation()Ljavafx/event/EventHandler;
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
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onMenuValidation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onMenuValidation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getParentMenu()Ljavafx/scene/control/Menu;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentMenu:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Menu;

    goto :goto_0
.end method

.method public final getParentPopup()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->parentPopup:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContextMenu;

    goto :goto_0
.end method

.method public getProperties()Ljavafx/collections/ObservableMap;
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
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 541
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->properties:Ljavafx/collections/ObservableMap;

    .line 543
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
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
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->style:Ljavafx/beans/property/StringProperty;

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
    .line 455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->styleClass:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v1

    if-nez v1, :cond_0

    .line 574
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v1

    move-object v0, v1

    .line 576
    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    const-string v1, "MenuItem"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->userData:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
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
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 290
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "graphic"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 292
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final idProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 169
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "id"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public impl_styleableGetNode()Ljavafx/scene/Node;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v9

    move-object v1, v9

    .line 602
    .local v1, "parentPopup":Ljavafx/scene/control/ContextMenu;
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v9

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    move-object v0, v9

    .line 623
    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    :goto_0
    return-object v0

    .line 604
    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v2, v9

    .line 605
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    if-nez v9, :cond_2

    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 607
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v9

    .line 608
    .local v3, "content":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItemsContainer()Ljavafx/scene/layout/VBox;

    move-result-object v9

    move-object v4, v9

    .line 610
    .local v4, "nodes":Ljavafx/scene/Parent;
    move-object v9, v0

    move-object v5, v9

    .line 611
    .local v5, "desiredMenuItem":Ljavafx/scene/control/MenuItem;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v6, v9

    .line 612
    .local v6, "childrenNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 613
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-nez v9, :cond_4

    .line 612
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 615
    :cond_4
    move-object v9, v6

    move v10, v7

    .line 616
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    move-object v8, v9

    .line 618
    .local v8, "MenuRow":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getItem()Ljavafx/scene/control/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 619
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 623
    .end local v8    # "MenuRow":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public final isDisable()Z
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->disable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isMnemonicParsing()Z
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->visible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->visible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 443
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "mnemonicParsing"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    .line 445
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onAction:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 315
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/MenuItem$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/MenuItem$1;-><init>(Ljavafx/scene/control/MenuItem;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 331
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final onMenuValidationProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onMenuValidation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 359
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/MenuItem$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/MenuItem$2;-><init>(Ljavafx/scene/control/MenuItem;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->onMenuValidation:Ljavafx/beans/property/ObjectProperty;

    .line 371
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->onMenuValidation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final parentMenuProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/Menu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItem;->parentMenuPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final parentPopupProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItem;->parentPopupPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
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
    .line 491
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TE;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MenuItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 492
    return-void
.end method

.method public final setAccelerator(Ljavafx/scene/input/KeyCombination;)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/input/KeyCombination;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public final setDisable(Z)V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMnemonicParsing(Z)V
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 437
    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public final setOnMenuValidation(Ljavafx/event/EventHandler;)V
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
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->onMenuValidationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method protected final setParentMenu(Ljavafx/scene/control/Menu;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Menu;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MenuItem;->parentMenuPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method protected final setParentPopup(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MenuItem;->parentPopupPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItem;->userData:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final styleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "style"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->style:Ljavafx/beans/property/StringProperty;

    .line 187
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->style:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 266
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "text"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->text:Ljavafx/beans/property/StringProperty;

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 629
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuItem;->id:Ljavafx/beans/property/StringProperty;

    if-eqz v4, :cond_2

    const-string v4, ""

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 630
    .local v2, "hasId":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 632
    .local v3, "hasStyleClass":Z
    move v4, v2

    if-nez v4, :cond_4

    .line 633
    move-object v4, v1

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 634
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 641
    :cond_0
    :goto_2
    move v4, v3

    if-eqz v4, :cond_1

    .line 642
    move v4, v2

    if-nez v4, :cond_5

    move-object v4, v1

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 644
    :goto_3
    move-object v4, v1

    const-string v5, "styleClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 645
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 646
    move-object v4, v1

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 648
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0

    .line 629
    .end local v2    # "hasId":Z
    .end local v3    # "hasStyleClass":Z
    .restart local v0    # "this":Ljavafx/scene/control/MenuItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 630
    .restart local v2    # "hasId":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 636
    .restart local v3    # "hasStyleClass":Z
    :cond_4
    move-object v4, v1

    const-string v5, "[id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 637
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 638
    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 643
    :cond_5
    move-object v4, v1

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_3
.end method

.method public final visibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->visible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 399
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "visible"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/MenuItem;->visible:Ljavafx/beans/property/BooleanProperty;

    .line 401
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->visible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem;
    return-object v0
.end method

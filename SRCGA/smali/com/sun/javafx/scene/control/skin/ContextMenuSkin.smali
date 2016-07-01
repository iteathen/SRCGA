.class public Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
.super Ljava/lang/Object;
.source "ContextMenuSkin.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<",
        "Ljavafx/scene/control/ContextMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private popupMenu:Ljavafx/scene/control/ContextMenu;

.field private final root:Ljavafx/scene/layout/Region;

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ContextMenu;)V
    .locals 9

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, p1

    .local v1, "popupMenu":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->keyListener:Ljavafx/event/EventHandler;

    .line 78
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->popupMenu:Ljavafx/scene/control/ContextMenu;

    .line 82
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;Ljavafx/scene/control/ContextMenu;)V

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ContextMenu;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 96
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Menu;->ON_HIDDEN:Ljavafx/event/EventType;

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;Ljavafx/scene/control/ContextMenu;)V

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ContextMenu;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 108
    move-object v2, v1

    sget-object v3, Ljavafx/stage/WindowEvent;->WINDOW_HIDING:Ljavafx/event/EventType;

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;Ljavafx/scene/control/ContextMenu;)V

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ContextMenu;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 118
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 119
    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-input-context-menu"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;-><init>(Ljavafx/scene/control/ContextMenu;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    .line 124
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 129
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;-><init>(Ljavafx/scene/control/PopupControl;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    .line 132
    :cond_0
    return-void

    .line 122
    :cond_1
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;-><init>(Ljavafx/scene/control/ContextMenu;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->popupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/event/EventHandler;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->keyListener:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 145
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->dispose()V

    .line 146
    :cond_0
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->root:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method

.method public getSkinnable()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->popupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->getSkinnable()Ljavafx/scene/control/ContextMenu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    return-object v0
.end method

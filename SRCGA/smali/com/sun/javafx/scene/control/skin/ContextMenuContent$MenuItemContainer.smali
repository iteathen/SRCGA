.class public Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
.super Ljavafx/scene/layout/Region;
.source "ContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuItemContainer"
.end annotation


# instance fields
.field private actionEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private customMenuItemMouseClickedHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private graphic:Ljavafx/scene/Node;

.field private final item:Ljavafx/scene/control/MenuItem;

.field private label:Ljavafx/scene/Node;

.field private left:Ljavafx/scene/Node;

.field private final listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

.field private mouseEnteredEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mouseReleasedEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private right:Ljavafx/scene/Node;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V
    .locals 9

    .prologue
    .line 1134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    .line 1115
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/util/Callback;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 1135
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1136
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "MenuItem can not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1139
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 1140
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setId(Ljava/lang/String;)V

    .line 1141
    move-object v4, v0

    move-object v5, v2

    instance-of v5, v5, Ljavafx/scene/control/CustomMenuItem;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setFocusTraversable(Z)V

    .line 1142
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    .line 1144
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->createChildren()V

    .line 1148
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_2

    .line 1149
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v3, v4

    .line 1150
    .local v3, "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v5, v3

    const-string v6, "MENU_SHOWING"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1151
    move-object v4, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1400()Ljavafx/css/PseudoClass;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1152
    move-object v4, v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->MENU:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1167
    .end local v3    # "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    :goto_1
    move-object v4, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1600()Ljavafx/css/PseudoClass;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1168
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    const-string v6, "DISABLE"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1172
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-class v5, Ljavafx/scene/control/MenuItem;

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1174
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    const-string v6, "GRAPHIC"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1176
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/control/MenuItem;)Ljavafx/event/EventHandler;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->actionEventHandler:Ljavafx/event/EventHandler;

    .line 1190
    move-object v4, v0

    sget-object v5, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->actionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1191
    return-void

    .line 1141
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1153
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v4, :cond_3

    .line 1154
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v4}, Ljavafx/scene/control/RadioMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v3, v4

    .line 1155
    .restart local v3    # "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v5, v3

    const-string v6, "RADIO_ITEM_SELECTED"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1156
    move-object v4, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1500()Ljavafx/css/PseudoClass;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1157
    move-object v4, v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->RADIO_MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    goto :goto_1

    .line 1158
    .end local v3    # "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    :cond_3
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v4, :cond_4

    .line 1159
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v4}, Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v3, v4

    .line 1160
    .restart local v3    # "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v5, v3

    const-string v6, "CHECK_ITEM_SELECTED"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1161
    move-object v4, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1500()Ljavafx/css/PseudoClass;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1162
    move-object v4, v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->CHECK_MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    goto/16 :goto_1

    .line 1164
    .end local v3    # "pseudoProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    :cond_4
    move-object v4, v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->MENU_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$new$337(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$new$338(Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createChildren$339(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createChildren$340(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createChildren$341(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createChildren$342(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createChildren$343(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/control/CustomMenuItem;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->lambda$createNodeMenuItemChildren$344(Ljavafx/scene/control/CustomMenuItem;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private createChildren()V
    .locals 12

    .prologue
    .line 1239
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 1244
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v5, v5, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v5, :cond_1

    .line 1245
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v6, Ljavafx/scene/control/CustomMenuItem;

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->createNodeMenuItemChildren(Ljavafx/scene/control/CustomMenuItem;)V

    .line 1247
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    if-nez v5, :cond_0

    .line 1248
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    .line 1254
    :goto_0
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1370
    :goto_1
    return-void

    .line 1252
    :cond_0
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_0

    .line 1257
    :cond_1
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getLeftGraphic(Ljavafx/scene/control/MenuItem;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v2, v5

    .line 1258
    .local v2, "leftNode":Ljavafx/scene/Node;
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 1259
    new-instance v5, Ljavafx/scene/layout/StackPane;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v3, v5

    .line 1260
    .local v3, "leftPane":Ljavafx/scene/layout/StackPane;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "left-container"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1261
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1262
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    .line 1263
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1264
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    sget-object v6, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 1267
    .end local v3    # "leftPane":Ljavafx/scene/layout/StackPane;
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1268
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 1269
    .local v3, "graphicNode":Ljavafx/scene/Node;
    new-instance v5, Ljavafx/scene/layout/StackPane;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v4, v5

    .line 1270
    .local v4, "graphicPane":Ljavafx/scene/layout/StackPane;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "graphic-container"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1271
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1272
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    .line 1273
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1277
    .end local v3    # "graphicNode":Ljavafx/scene/Node;
    .end local v4    # "graphicPane":Ljavafx/scene/layout/StackPane;
    :cond_3
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    .line 1278
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setStyle(Ljava/lang/String;)V

    .line 1281
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    check-cast v5, Ljavafx/scene/control/Label;

    invoke-virtual {v5}, Ljavafx/scene/control/Label;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1283
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setMouseTransparent(Z)V

    .line 1284
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1286
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V

    .line 1290
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v6

    const-string v7, "FOCUSED"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1295
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v5, v5, Ljavafx/scene/control/Menu;

    if-eqz v5, :cond_6

    .line 1297
    new-instance v5, Ljavafx/scene/layout/Region;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v3, v5

    .line 1298
    .local v3, "rightNode":Ljavafx/scene/layout/Region;
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 1299
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "arrow"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1301
    new-instance v5, Ljavafx/scene/layout/StackPane;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v4, v5

    .line 1302
    .local v4, "rightPane":Ljavafx/scene/layout/StackPane;
    move-object v5, v4

    move-object v6, v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setMaxWidth(D)V

    .line 1303
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setMouseTransparent(Z)V

    .line 1304
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "right-container"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1305
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1306
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    .line 1307
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1309
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    if-nez v5, :cond_4

    .line 1310
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    .line 1327
    :goto_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    if-nez v5, :cond_5

    .line 1328
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    .line 1336
    :goto_3
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1337
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1338
    goto/16 :goto_1

    .line 1324
    :cond_4
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_2

    .line 1332
    :cond_5
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_3

    .line 1340
    .end local v3    # "rightNode":Ljavafx/scene/layout/Region;
    .end local v4    # "rightPane":Ljavafx/scene/layout/StackPane;
    :cond_6
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V

    .line 1343
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->updateAccelerator()V

    .line 1345
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    if-nez v5, :cond_7

    .line 1346
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    .line 1356
    :goto_4
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    if-nez v5, :cond_8

    .line 1357
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    .line 1364
    :goto_5
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1365
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1367
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ACCELERATOR"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1353
    :cond_7
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseEnteredEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_4

    .line 1361
    :cond_8
    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->mouseReleasedEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_5
.end method

.method private createNodeMenuItemChildren(Ljavafx/scene/control/CustomMenuItem;)V
    .locals 6

    .prologue
    .line 1420
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/CustomMenuItem;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 1421
    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1424
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;Ljavafx/scene/control/CustomMenuItem;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->customMenuItemMouseClickedHandler:Ljavafx/event/EventHandler;

    .line 1432
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->customMenuItemMouseClickedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1433
    return-void
.end method

.method private getLeftGraphic(Ljavafx/scene/control/MenuItem;)Ljavafx/scene/Node;
    .locals 6

    .prologue
    .line 1508
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/MenuItem;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v3, :cond_0

    .line 1509
    new-instance v3, Ljavafx/scene/layout/Region;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v2, v3

    .line 1510
    .local v2, "_graphic":Ljavafx/scene/layout/Region;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "radio"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1511
    move-object v3, v2

    move-object v0, v3

    .line 1518
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    .end local v2    # "_graphic":Ljavafx/scene/layout/Region;
    :goto_0
    return-object v0

    .line 1512
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v3, :cond_1

    .line 1513
    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v2, v3

    .line 1514
    .local v2, "_graphic":Ljavafx/scene/layout/StackPane;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "check"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1515
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 1518
    .end local v2    # "_graphic":Ljavafx/scene/layout/StackPane;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private handlePropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v3, "MENU_SHOWING"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1216
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v3, Ljavafx/scene/control/Menu;

    move-object v2, v3

    .line 1217
    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1400()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1218
    .line 1236
    .end local v2    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    const-string v3, "RADIO_ITEM_SELECTED"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1219
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v3, Ljavafx/scene/control/RadioMenuItem;

    move-object v2, v3

    .line 1220
    .local v2, "radioItem":Ljavafx/scene/control/RadioMenuItem;
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1500()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1221
    goto :goto_0

    .end local v2    # "radioItem":Ljavafx/scene/control/RadioMenuItem;
    :cond_2
    const-string v3, "CHECK_ITEM_SELECTED"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1222
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v3, Ljavafx/scene/control/CheckMenuItem;

    move-object v2, v3

    .line 1223
    .local v2, "checkItem":Ljavafx/scene/control/CheckMenuItem;
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1500()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/CheckMenuItem;->isSelected()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1224
    goto :goto_0

    .end local v2    # "checkItem":Ljavafx/scene/control/CheckMenuItem;
    :cond_3
    const-string v3, "DISABLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1225
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1600()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->isDisable()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    goto :goto_0

    .line 1226
    :cond_4
    const-string v3, "GRAPHIC"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1227
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->createChildren()V

    .line 1228
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    goto :goto_0

    .line 1229
    :cond_5
    const-string v3, "ACCELERATOR"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1230
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->updateAccelerator()V

    goto :goto_0

    .line 1231
    :cond_6
    const-string v3, "FOCUSED"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1233
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1802(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;I)I

    move-result v3

    goto/16 :goto_0
.end method

.method private synthetic lambda$createChildren$339(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->requestFocus()V

    .line 1250
    return-void
.end method

.method private synthetic lambda$createChildren$340(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 1314
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 1317
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v3, Ljavafx/scene/control/Menu;

    move-object v2, v3

    .line 1318
    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1322
    :goto_0
    return-void

    .line 1319
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v4, v0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 1320
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->show()V

    .line 1321
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->requestFocus()V

    .line 1322
    goto :goto_0
.end method

.method private synthetic lambda$createChildren$341(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->fire()V

    .line 1330
    return-void
.end method

.method private synthetic lambda$createChildren$342(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1348
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->hide()V

    .line 1350
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->requestFocus()V

    .line 1351
    return-void
.end method

.method private synthetic lambda$createChildren$343(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->doSelect()V

    .line 1359
    return-void
.end method

.method private synthetic lambda$createNodeMenuItemChildren$344(Ljavafx/scene/control/CustomMenuItem;Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/CustomMenuItem;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->isDisable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->fire()V

    .line 1428
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->isHideOnClick()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1429
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    .line 1431
    :cond_2
    goto :goto_0
.end method

.method private synthetic lambda$new$337(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "param":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->handlePropertyChanged(Ljava/lang/String;)V

    .line 1118
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method private synthetic lambda$new$338(Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/MenuItem;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_2

    .line 1178
    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 1179
    .local v3, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v4

    move-object v5, v3

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :goto_0
    return-void

    .line 1180
    .restart local v3    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1181
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 1184
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v0

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 1185
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/Menu;)V

    .line 1186
    .line 1189
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :goto_1
    goto :goto_0

    .line 1187
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->doSelect()V

    goto :goto_1
.end method

.method private updateAccelerator()V
    .locals 7

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1374
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    if-eqz v2, :cond_0

    .line 1375
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1378
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1379
    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    .line 1380
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setStyle(Ljava/lang/String;)V

    .line 1381
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "accelerator-text"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1382
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1383
    .line 1386
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 1384
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 1481
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-wide v2, p1

    .local v2, "width":D
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 1482
    .local v4, "prefHeight":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v6, v6, Ljavafx/scene/control/CustomMenuItem;

    if-nez v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v6, v6, Ljavafx/scene/control/SeparatorMenuItem;

    if-eqz v6, :cond_2

    .line 1483
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    move-wide v4, v6

    .line 1490
    :goto_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedTopInset()D

    move-result-wide v6

    move-wide v8, v4

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-wide v1

    .line 1483
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v6

    goto :goto_0

    .line 1485
    :cond_2
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    if-eqz v8, :cond_3

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    :goto_2
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 1486
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    :goto_3
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 1487
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    if-eqz v8, :cond_5

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    :goto_4
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 1488
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    if-eqz v8, :cond_6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    :goto_5
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    goto :goto_1

    .line 1485
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 1486
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_3

    .line 1487
    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 1488
    :cond_6
    const-wide/16 v8, 0x0

    goto :goto_5
.end method

.method protected computePrefWidth(D)D
    .locals 13

    .prologue
    .line 1494
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-wide v2, p1

    .local v2, "height":D
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 1495
    .local v4, "nodeMenuItemWidth":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v6, v6, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v6, v6, Ljavafx/scene/control/SeparatorMenuItem;

    if-nez v6, :cond_0

    .line 1496
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v8, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v8}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v8

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v1

    .line 1497
    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 1499
    :cond_0
    move-wide v6, v4

    move-object v8, v1

    .line 1500
    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1501
    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedRightInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 1499
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-wide v1
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v2, v2, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v2, :cond_0

    .line 1195
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v2, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 1196
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1197
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->customMenuItemMouseClickedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1201
    .end local v1    # "node":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->dispose()V

    .line 1202
    move-object v2, v0

    sget-object v3, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->actionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1204
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    .line 1205
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    check-cast v2, Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 1208
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    .line 1209
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    .line 1210
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    .line 1211
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    .line 1212
    return-void
.end method

.method doSelect()V
    .locals 4

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    :goto_0
    return-void

    .line 1392
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v2, v2, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v2, :cond_4

    .line 1393
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v2, Ljavafx/scene/control/CheckMenuItem;

    move-object v1, v2

    .line 1394
    .local v1, "checkItem":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckMenuItem;->setSelected(Z)V

    .line 1395
    .line 1405
    .end local v1    # "checkItem":Ljavafx/scene/control/CheckMenuItem;
    :cond_1
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->fire()V

    .line 1407
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v2, v2, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v2, :cond_7

    .line 1408
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v2, Ljavafx/scene/control/CustomMenuItem;

    move-object v1, v2

    .line 1409
    .local v1, "customMenuItem":Ljavafx/scene/control/CustomMenuItem;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/CustomMenuItem;->isHideOnClick()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1410
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    .line 1412
    .line 1415
    .end local v1    # "customMenuItem":Ljavafx/scene/control/CustomMenuItem;
    :cond_2
    :goto_3
    goto :goto_0

    .line 1394
    .local v1, "checkItem":Ljavafx/scene/control/CheckMenuItem;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1395
    .end local v1    # "checkItem":Ljavafx/scene/control/CheckMenuItem;
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v2, v2, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v2, :cond_1

    .line 1400
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v2, Ljavafx/scene/control/RadioMenuItem;

    move-object v1, v2

    .line 1401
    .local v1, "radioItem":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    goto :goto_2

    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1413
    .end local v1    # "radioItem":Ljavafx/scene/control/RadioMenuItem;
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    goto :goto_3
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1592
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/Region;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1579
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_0

    .line 1580
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 1581
    .local v3, "menuItem":Ljavafx/scene/control/Menu;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1582
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->hide()V

    .line 1586
    :goto_1
    goto :goto_0

    .line 1584
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->show()V

    goto :goto_1

    .line 1590
    .end local v3    # "menuItem":Ljavafx/scene/control/Menu;
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->doSelect()V

    .line 1591
    goto :goto_0

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method protected getLabel()Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    check-cast v1, Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    .line 1438
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v8, v0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->prefHeight(D)D

    move-result-wide v8

    move-wide v3, v8

    .line 1439
    .local v3, "prefHeight":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    if-eqz v8, :cond_0

    .line 1440
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v8

    move-wide v1, v8

    .line 1441
    .local v1, "xOffset":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1442
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->left:Ljavafx/scene/Node;

    move-wide v10, v1

    const-wide/16 v12, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1443
    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1442
    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1445
    .end local v1    # "xOffset":D
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    if-eqz v8, :cond_1

    .line 1446
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .line 1447
    .restart local v1    # "xOffset":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1448
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    move-wide v10, v1

    const-wide/16 v12, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1449
    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1448
    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1452
    .end local v1    # "xOffset":D
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    if-eqz v8, :cond_2

    .line 1453
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .line 1454
    .restart local v1    # "xOffset":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1455
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->label:Ljavafx/scene/Node;

    move-wide v10, v1

    const-wide/16 v12, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1456
    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1455
    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1459
    .end local v1    # "xOffset":D
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    if-eqz v8, :cond_3

    .line 1460
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .line 1461
    .restart local v1    # "xOffset":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1462
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->right:Ljavafx/scene/Node;

    move-wide v10, v1

    const-wide/16 v12, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1463
    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1462
    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1466
    .end local v1    # "xOffset":D
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v8, v8, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v8, :cond_4

    .line 1467
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v8, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v8}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v8

    move-object v5, v8

    .line 1468
    .local v5, "n":Ljavafx/scene/Node;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v8, v8, Ljavafx/scene/control/SeparatorMenuItem;

    if-eqz v8, :cond_5

    .line 1469
    move-object v8, v0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->prefWidth(D)D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedRightInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 1470
    .local v6, "width":D
    move-object v8, v5

    move-wide v9, v6

    move-object v11, v5

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1471
    move-object v8, v0

    move-object v9, v5

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/16 v12, 0x0

    move-object v14, v0

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->prefWidth(D)D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1472
    .line 1478
    .end local v5    # "n":Ljavafx/scene/Node;
    .end local v6    # "width":D
    :cond_4
    :goto_0
    return-void

    .line 1473
    .restart local v5    # "n":Ljavafx/scene/Node;
    :cond_5
    move-object v8, v5

    move-object v9, v5

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v5

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1475
    move-object v8, v0

    move-object v9, v5

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->snappedLeftInset()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getWidth()D

    move-result-wide v14

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    sget-object v20, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v21, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v8 .. v21}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1571
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Ljavafx/scene/layout/Region;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :goto_0
    return-object v0

    .line 1525
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v7, v7, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v7, :cond_0

    .line 1526
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v7, Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v7}, Ljavafx/scene/control/CheckMenuItem;->isSelected()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 1528
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v7, v7, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v7, :cond_1

    .line 1529
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v7, Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v7}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 1531
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 1532
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v7}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 1534
    :pswitch_2
    const-string v7, ""

    move-object v3, v7

    .line 1535
    .local v3, "title":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    if-eqz v7, :cond_2

    .line 1536
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->graphic:Ljavafx/scene/Node;

    sget-object v8, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 1537
    .local v4, "t":Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1539
    .end local v4    # "t":Ljava/lang/String;
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getLabel()Ljavafx/scene/control/Label;

    move-result-object v7

    move-object v4, v7

    .line 1540
    .local v4, "label":Ljavafx/scene/control/Label;
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 1541
    move-object v7, v4

    sget-object v8, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Label;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 1542
    .local v5, "t":Ljava/lang/String;
    move-object v7, v5

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1544
    .end local v5    # "t":Ljava/lang/String;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    instance-of v7, v7, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v7, :cond_4

    .line 1545
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    check-cast v7, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v7}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 1546
    .local v5, "content":Ljavafx/scene/Node;
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 1547
    move-object v7, v5

    sget-object v8, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1548
    .local v6, "t":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1551
    .end local v5    # "content":Ljavafx/scene/Node;
    .end local v6    # "t":Ljava/lang/String;
    :cond_4
    move-object v7, v3

    move-object v0, v7

    goto/16 :goto_0

    .line 1554
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "label":Ljavafx/scene/control/Label;
    :pswitch_3
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getLabel()Ljavafx/scene/control/Label;

    move-result-object v7

    move-object v3, v7

    .line 1555
    .local v3, "label":Ljavafx/scene/control/Label;
    move-object v7, v3

    if-eqz v7, :cond_5

    .line 1556
    move-object v7, v3

    sget-object v8, Ljavafx/scene/AccessibleAttribute;->MNEMONIC:Ljavafx/scene/AccessibleAttribute;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Label;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 1557
    .local v4, "mnemonic":Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_5

    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_0

    .line 1559
    .end local v4    # "mnemonic":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 1561
    .end local v3    # "label":Ljavafx/scene/control/Label;
    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v7}, Ljavafx/scene/control/MenuItem;->isDisable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 1563
    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$2400(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    .line 1566
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1567
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->impl_styleableGetNode()Ljavafx/scene/Node;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->impl_processCSS(Z)V

    .line 1569
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v7

    .line 1570
    .local v3, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-object v0, v7

    goto/16 :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

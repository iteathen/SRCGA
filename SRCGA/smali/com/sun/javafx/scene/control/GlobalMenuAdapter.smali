.class public Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
.super Ljavafx/scene/control/Menu;
.source "GlobalMenuAdapter.java"

# interfaces
.implements Lcom/sun/javafx/menu/MenuBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CustomMenuItemAdapter;,
        Lcom/sun/javafx/scene/control/GlobalMenuAdapter$SeparatorMenuItemAdapter;,
        Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;,
        Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;,
        Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;
    }
.end annotation


# instance fields
.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/menu/MenuItemBase;",
            ">;"
        }
    .end annotation
.end field

.field private menu:Ljavafx/scene/control/Menu;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/Menu;)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/Menu;-><init>(Ljava/lang/String;)V

    .line 57
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;-><init>(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->items:Ljavafx/collections/ObservableList;

    .line 65
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->menu:Ljavafx/scene/control/Menu;

    .line 67
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->bindMenuItemProperties(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V

    .line 69
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/Menu;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 76
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/Menu;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 90
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;-><init>(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 108
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

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

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 109
    .local v3, "menuItem":Ljavafx/scene/control/MenuItem;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->items:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->insertItem(Ljavafx/scene/control/MenuItem;I)V

    .line 110
    goto :goto_0

    .line 111
    .end local v3    # "menuItem":Ljavafx/scene/control/MenuItem;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/MenuItem;I)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/MenuItem;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->insertItem(Ljavafx/scene/control/MenuItem;I)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->bindMenuItemProperties(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->lambda$new$18(Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->lambda$new$19(Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->lambda$bindMenuItemProperties$20(Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method public static adapt(Ljavafx/scene/control/Menu;)Lcom/sun/javafx/menu/MenuBase;
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "menu":Ljavafx/scene/control/Menu;
    new-instance v1, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;-><init>(Ljavafx/scene/control/Menu;)V

    move-object v0, v1

    .end local v0    # "menu":Ljavafx/scene/control/Menu;
    return-object v0
.end method

.method private static bindMenuItemProperties(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "adapter":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "menuItem":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 141
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 142
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 144
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 145
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 146
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 148
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/MenuItem;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 151
    return-void
.end method

.method private insertItem(Ljavafx/scene/control/MenuItem;I)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, p1

    .local v1, "menuItem":Ljavafx/scene/control/MenuItem;
    move v2, p2

    .local v2, "pos":I
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_0

    .line 117
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/Menu;

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;-><init>(Ljavafx/scene/control/Menu;)V

    move-object v3, v4

    .line 130
    .local v3, "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->items:Ljavafx/collections/ObservableList;

    move v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 131
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    move-object v6, v3

    check-cast v6, Ljavafx/scene/control/MenuItem;

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 132
    return-void

    .line 118
    .end local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v4, :cond_1

    .line 119
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/CheckMenuItem;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;-><init>(Ljavafx/scene/control/CheckMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V

    move-object v3, v4

    .restart local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    goto :goto_0

    .line 120
    .end local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v4, :cond_2

    .line 121
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/RadioMenuItem;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;-><init>(Ljavafx/scene/control/RadioMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V

    move-object v3, v4

    .restart local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    goto :goto_0

    .line 122
    .end local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/SeparatorMenuItem;

    if-eqz v4, :cond_3

    .line 123
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$SeparatorMenuItemAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/SeparatorMenuItem;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$SeparatorMenuItemAdapter;-><init>(Ljavafx/scene/control/SeparatorMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V

    move-object v3, v4

    .restart local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    goto :goto_0

    .line 124
    .end local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v4, :cond_4

    .line 125
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CustomMenuItemAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/CustomMenuItem;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CustomMenuItemAdapter;-><init>(Ljavafx/scene/control/CustomMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V

    move-object v3, v4

    .restart local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    goto :goto_0

    .line 127
    .end local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_4
    new-instance v4, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;-><init>(Ljavafx/scene/control/MenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V

    move-object v3, v4

    .restart local v3    # "mib":Lcom/sun/javafx/menu/MenuItemBase;
    goto :goto_0
.end method

.method private static synthetic lambda$bindMenuItemProperties$20(Ljavafx/scene/control/MenuItem;Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "menuItem":Ljavafx/scene/control/MenuItem;
    move-object v1, p1

    .local v1, "ev":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->fire()V

    .line 150
    return-void
.end method

.method private synthetic lambda$new$18(Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v2, p2

    .local v2, "property":Ljavafx/beans/Observable;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->show()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->hide()V

    goto :goto_0
.end method

.method private synthetic lambda$new$19(Ljavafx/scene/control/Menu;Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v2, p2

    .local v2, "property":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->show()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public fireValidation()V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->menu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->menu:Ljavafx/scene/control/Menu;

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 158
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->menu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 159
    .local v1, "target":Ljavafx/scene/control/Menu;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    move-object v2, v1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 162
    :cond_1
    return-void
.end method

.method public final getItemsBase()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/menu/MenuItemBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    return-object v0
.end method

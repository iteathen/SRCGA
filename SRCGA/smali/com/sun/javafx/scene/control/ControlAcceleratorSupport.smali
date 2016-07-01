.class public Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;
.super Ljava/lang/Object;
.source "ControlAcceleratorSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/ObservableList;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->doAcceleratorInstall(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Scene;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->lambda$doAcceleratorInstall$11(Ljavafx/scene/Scene;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/MenuItem;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->lambda$doAcceleratorInstall$12(Ljavafx/scene/control/MenuItem;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/Scene;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/input/KeyCombination;Ljavafx/scene/input/KeyCombination;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->lambda$doAcceleratorInstall$13(Ljavafx/scene/Scene;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/input/KeyCombination;Ljavafx/scene/input/KeyCombination;)V

    return-void
.end method

.method private static addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Anchor cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->getControlProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v2, v4

    .line 100
    .local v2, "controlProperty":Ljavafx/beans/property/ReadOnlyObjectProperty;, "Ljavafx/beans/property/ReadOnlyObjectProperty<+Ljavafx/scene/control/Control;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Control;

    move-object v3, v4

    .line 101
    .local v3, "control":Ljavafx/scene/control/Control;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 102
    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;-><init>(Ljavafx/beans/property/ReadOnlyObjectProperty;Ljavafx/collections/ObservableList;)V

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method public static addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/Node;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 68
    .line 91
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Anchor cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-nez v3, :cond_2

    .line 79
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;-><init>(Ljavafx/scene/Node;Ljavafx/collections/ObservableList;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 91
    :goto_1
    goto :goto_0

    .line 89
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->doAcceleratorInstall(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V

    goto :goto_1
.end method

.method public static addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/control/Tab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/control/Tab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableColumnBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private static doAcceleratorInstall(Ljava/util/List;Ljavafx/scene/Scene;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/Scene;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/MenuItem;

    move-object v3, v6

    .line 139
    .local v3, "menuitem":Ljavafx/scene/control/MenuItem;
    move-object v6, v3

    instance-of v6, v6, Ljavafx/scene/control/Menu;

    if-eqz v6, :cond_0

    .line 141
    move-object v6, v3

    check-cast v6, Ljavafx/scene/control/Menu;

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->doAcceleratorInstall(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V

    .line 185
    :goto_1
    goto :goto_0

    .line 146
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 147
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v6

    move-object v4, v6

    .line 149
    .local v4, "accelerators":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    move-object v6, v3

    invoke-static {v6}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/MenuItem;)Ljava/lang/Runnable;

    move-result-object v6

    move-object v5, v6

    .line 168
    .local v5, "acceleratorRunnable":Ljava/lang/Runnable;
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    .end local v4    # "accelerators":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    .end local v5    # "acceleratorRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$$Lambda$3;->lambdaFactory$(Ljavafx/scene/Scene;)Ljavafx/beans/value/ChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_1

    .line 186
    .end local v3    # "menuitem":Ljavafx/scene/control/MenuItem;
    :cond_2
    return-void
.end method

.method private static doAcceleratorInstall(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/Scene;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Scene;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 133
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->doAcceleratorInstall(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 134
    return-void
.end method

.method private static getControlProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<+",
            "Ljavafx/scene/control/Control;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/TableColumn;

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->tableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .line 249
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 243
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v1, :cond_1

    .line 244
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->treeTableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 245
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/Tab;

    if-eqz v1, :cond_2

    .line 246
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/Tab;

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->tabPaneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static synthetic lambda$doAcceleratorInstall$11(Ljavafx/scene/Scene;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v2

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 127
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v2

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->doAcceleratorInstall(Ljava/util/List;Ljavafx/scene/Scene;)V

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method

.method private static synthetic lambda$doAcceleratorInstall$12(Ljavafx/scene/control/MenuItem;)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "menuitem":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v0

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 153
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 154
    .local v1, "target":Ljavafx/scene/control/Menu;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    move-object v2, v1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 157
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->isDisable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    move-object v2, v0

    instance-of v2, v2, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v2, :cond_5

    .line 159
    move-object v2, v0

    check-cast v2, Ljavafx/scene/control/RadioMenuItem;

    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 165
    :cond_2
    :goto_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->fire()V

    .line 167
    :cond_3
    return-void

    .line 159
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    :cond_5
    move-object v2, v0

    instance-of v2, v2, Ljavafx/scene/control/CheckMenuItem;

    if-eqz v2, :cond_2

    .line 162
    move-object v2, v0

    check-cast v2, Ljavafx/scene/control/CheckMenuItem;

    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckMenuItem;->setSelected(Z)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static synthetic lambda$doAcceleratorInstall$13(Ljavafx/scene/Scene;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/input/KeyCombination;Ljavafx/scene/input/KeyCombination;)V
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/input/KeyCombination;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/input/KeyCombination;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v6

    move-object v4, v6

    .line 177
    .local v4, "accelerators":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    move-object v5, v6

    .line 180
    .local v5, "_acceleratorRunnable":Ljava/lang/Runnable;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 181
    move-object v6, v4

    move-object v7, v3

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 183
    :cond_0
    return-void
.end method

.method public static removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 213
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 214
    return-void
.end method

.method public static removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/Scene;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 218
    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v3, v5

    .line 222
    .local v3, "menuitem":Ljavafx/scene/control/MenuItem;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/control/Menu;

    if-eqz v5, :cond_1

    .line 226
    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/Menu;

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 233
    :goto_2
    goto :goto_1

    .line 230
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v4, v5

    .line 231
    .local v4, "accelerators":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 234
    .end local v3    # "menuitem":Ljavafx/scene/control/MenuItem;
    .end local v4    # "accelerators":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    :cond_2
    goto :goto_0
.end method

.method public static removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/control/Tab;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/control/Tab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/control/Tab;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getTabPane()Ljavafx/scene/control/TabPane;

    move-result-object v4

    move-object v2, v4

    .line 194
    .local v2, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 197
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 198
    goto :goto_0
.end method

.method public static removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/control/TableColumnBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->getControlProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v2, v5

    .line 202
    .local v2, "controlProperty":Ljavafx/beans/property/ReadOnlyObjectProperty;, "Ljavafx/beans/property/ReadOnlyObjectProperty<+Ljavafx/scene/control/Control;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Control;

    move-object v3, v5

    .line 205
    .local v3, "control":Ljavafx/scene/control/Control;
    move-object v5, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 208
    .local v4, "scene":Ljavafx/scene/Scene;
    move-object v5, v0

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/Scene;)V

    .line 209
    goto :goto_0
.end method

.class public Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ChoiceBoxSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ChoiceBox",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private choiceBoxItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final choiceBoxItemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsObserver:Ljavafx/beans/InvalidationListener;

.field private label:Ljavafx/scene/control/Label;

.field private openButton:Ljavafx/scene/layout/StackPane;

.field private popup:Ljavafx/scene/control/ContextMenu;

.field private selectionChangeListener:Ljavafx/beans/InvalidationListener;

.field private selectionModel:Ljavafx/scene/control/SelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SelectionModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final toggleGroup:Ljavafx/scene/control/ToggleGroup;

.field private final weakChoiceBoxItemsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ChoiceBox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;-><init>(Ljavafx/scene/control/ChoiceBox;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 79
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ToggleGroup;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/control/ToggleGroup;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    .line 89
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItemsListener:Ljavafx/collections/ListChangeListener;

    .line 112
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItemsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->weakChoiceBoxItemsListener:Ljavafx/collections/WeakListChangeListener;

    .line 291
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionChangeListener:Ljavafx/beans/InvalidationListener;

    .line 59
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->initialize()V

    .line 61
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->itemsObserver:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->itemsObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 64
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->requestLayout()V

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "SELECTION_MODEL"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    const-string v4, "SHOWING"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 67
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "ITEMS"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    const-string v4, "SELECTION_CHANGED"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 69
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "CONVERTER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/scene/control/ToggleGroup;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->addPopupItem(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelection()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->lambda$new$285(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->lambda$new$282(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->lambda$initialize$283(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljava/lang/Object;Ljavafx/scene/control/RadioMenuItem;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->lambda$addPopupItem$284(Ljava/lang/Object;Ljavafx/scene/control/RadioMenuItem;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private addPopupItem(Ljava/lang/Object;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "i":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 247
    .local v3, "popupItem":Ljavafx/scene/control/MenuItem;
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/control/Separator;

    if-eqz v7, :cond_0

    .line 249
    new-instance v7, Ljavafx/scene/control/SeparatorMenuItem;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/scene/control/SeparatorMenuItem;-><init>()V

    move-object v3, v7

    .line 266
    :goto_0
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MenuItem;->setMnemonicParsing(Z)V

    .line 267
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 268
    return-void

    .line 250
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/control/SeparatorMenuItem;

    if-eqz v7, :cond_1

    .line 251
    move-object v7, v1

    check-cast v7, Ljavafx/scene/control/SeparatorMenuItem;

    move-object v3, v7

    goto :goto_0

    .line 253
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v7}, Ljavafx/scene/control/ChoiceBox;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v7

    move-object v4, v7

    .line 254
    .local v4, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v7, v4

    if-nez v7, :cond_3

    move-object v7, v1

    if-nez v7, :cond_2

    const-string v7, ""

    :goto_1
    move-object v5, v7

    .line 255
    .local v5, "displayString":Ljava/lang/String;
    new-instance v7, Ljavafx/scene/control/RadioMenuItem;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    invoke-direct {v8, v9}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 256
    .local v6, "item":Ljavafx/scene/control/RadioMenuItem;
    move-object v7, v6

    const-string v8, "choice-box-menu-item"

    invoke-virtual {v7, v8}, Ljavafx/scene/control/RadioMenuItem;->setId(Ljava/lang/String;)V

    .line 257
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v7, v8}, Ljavafx/scene/control/RadioMenuItem;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 258
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljava/lang/Object;Ljavafx/scene/control/RadioMenuItem;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/RadioMenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 264
    move-object v7, v6

    move-object v3, v7

    goto :goto_0

    .line 254
    .end local v5    # "displayString":Ljava/lang/String;
    .end local v6    # "item":Ljavafx/scene/control/RadioMenuItem;
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateChoiceBoxItems()V

    .line 120
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setMnemonicParsing(Z)V

    .line 123
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "open-button"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 126
    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v1, v2

    .line 127
    .local v1, "region":Ljavafx/scene/layout/StackPane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "arrow"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 131
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ContextMenu;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    const-string v3, "choice-box-popup-menu"

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenu;->setId(Ljava/lang/String;)V

    .line 155
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 157
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updatePopupItems()V

    .line 159
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelectionModel()V

    .line 160
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelection()V

    .line 161
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 162
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method private synthetic lambda$addPopupItem$284(Ljava/lang/Object;Ljavafx/scene/control/RadioMenuItem;Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/control/RadioMenuItem;
    move-object v3, p3

    .local v3, "e":Ljavafx/event/ActionEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-nez v5, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v4, v5

    .line 261
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SelectionModel;->select(I)V

    .line 262
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 263
    goto :goto_0
.end method

.method private synthetic lambda$initialize$283(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "ov":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "nv":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->hide()V

    .line 139
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$282(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateChoiceBoxItems()V

    return-void
.end method

.method private synthetic lambda$new$285(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelection()V

    .line 293
    return-void
.end method

.method private updateChoiceBoxItems()V
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 168
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->weakChoiceBoxItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 170
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->weakChoiceBoxItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 174
    :cond_1
    return-void
.end method

.method private updatePopupItems()V
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 273
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 275
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 276
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 277
    .local v2, "o":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v2

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->addPopupItem(Ljava/lang/Object;I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "o":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method private updateSelection()V
    .locals 6

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/SelectionModel;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 298
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v3

    move v1, v3

    .line 301
    .local v1, "selectedIndex":I
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 302
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 303
    goto :goto_0

    .line 305
    :cond_4
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 306
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuItem;

    move-object v2, v3

    .line 307
    .local v2, "selectedItem":Ljavafx/scene/control/MenuItem;
    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v3, :cond_5

    .line 308
    move-object v3, v2

    check-cast v3, Ljavafx/scene/control/RadioMenuItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 309
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 312
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSelectionModel()V
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-eqz v1, :cond_0

    .line 283
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/SelectionModel;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 285
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    .line 286
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-eqz v1, :cond_1

    .line 287
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/SelectionModel;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 363
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ChoiceBox;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 367
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ChoiceBox;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 336
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/Label;->minHeight(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 337
    .local v12, "displayHeight":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 338
    .local v14, "openButtonHeight":D
    move-wide/from16 v16, v4

    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 330
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/Label;->minWidth(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 331
    .local v12, "boxWidth":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/ContextMenu;->minWidth(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 332
    .local v14, "popupWidth":D
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 355
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 356
    .local v12, "displayHeight":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 357
    .local v14, "openButtonHeight":D
    move-wide/from16 v16, v4

    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    .line 358
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 342
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 343
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 344
    .local v12, "boxWidth":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/ContextMenu;->prefWidth(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 345
    .local v14, "popupWidth":D
    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_0

    .line 346
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 347
    new-instance v16, Ljavafx/scene/text/Text;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/MenuItem;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/text/Text;-><init>(Ljava/lang/String;)V

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/text/Text;->prefWidth(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 350
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->size()I

    move-result v16

    if-nez v16, :cond_1

    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    :goto_0
    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    :cond_1
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    goto :goto_0
.end method

.method getChoiceBoxSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 183
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-object/from16 v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v12, v1

    move-object v13, v2

    invoke-super {v12, v13}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 184
    const-string v12, "ITEMS"

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 185
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateChoiceBoxItems()V

    .line 186
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updatePopupItems()V

    .line 187
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelectionModel()V

    .line 188
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelection()V

    .line 189
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->selectionModel:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v12}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 190
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v12, "SELECTION_MODEL"

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 193
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateSelectionModel()V

    goto :goto_0

    .line 194
    :cond_2
    const-string v12, "SELECTION_CHANGED"

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 195
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v12}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 196
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v12}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v12

    move v3, v12

    .line 197
    .local v3, "index":I
    move v12, v3

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 198
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v12

    move v13, v3

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuItem;

    move-object v4, v12

    .line 199
    .local v4, "item":Ljavafx/scene/control/MenuItem;
    move-object v12, v4

    instance-of v12, v12, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v12, :cond_3

    move-object v12, v4

    check-cast v12, Ljavafx/scene/control/RadioMenuItem;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 201
    .end local v4    # "item":Ljavafx/scene/control/MenuItem;
    :cond_3
    goto :goto_0

    .line 202
    .end local v3    # "index":I
    :cond_4
    const-string v12, "SHOWING"

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 203
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v12}, Ljavafx/scene/control/ChoiceBox;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 204
    const/4 v12, 0x0

    move-object v3, v12

    .line 206
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v12}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v12

    move-object v4, v12

    .line 207
    .local v4, "sm":Ljavafx/scene/control/SelectionModel;
    move-object v12, v4

    if-nez v12, :cond_5

    goto :goto_0

    .line 209
    :cond_5
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v12

    int-to-long v12, v12

    move-wide v5, v12

    .line 210
    .local v5, "currentSelectedIndex":J
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->choiceBoxItems:Ljavafx/collections/ObservableList;

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move v7, v12

    .line 211
    .local v7, "itemInControlCount":I
    move-wide v12, v5

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_8

    move-wide v12, v5

    move v14, v7

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_8

    const/4 v12, 0x1

    :goto_1
    move v8, v12

    .line 212
    .local v8, "hasSelection":Z
    move v12, v8

    if-eqz v12, :cond_9

    .line 213
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-wide v13, v5

    long-to-int v13, v13

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuItem;

    move-object v3, v12

    .line 214
    move-object v12, v3

    if-eqz v12, :cond_6

    move-object v12, v3

    instance-of v12, v12, Ljavafx/scene/control/RadioMenuItem;

    if-eqz v12, :cond_6

    move-object v12, v3

    check-cast v12, Ljavafx/scene/control/RadioMenuItem;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 223
    :cond_6
    :goto_2
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v12}, Ljavafx/scene/control/ChoiceBox;->autosize()V

    .line 226
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 228
    .local v9, "y":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 229
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v11, v12

    .line 230
    .local v11, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v12, v11

    if-eqz v12, :cond_7

    move-wide v12, v5

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    .line 231
    move-object v12, v11

    move-wide v13, v5

    long-to-int v13, v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getMenuYOffset(I)D

    move-result-wide v12

    neg-double v12, v12

    move-wide v9, v12

    .line 235
    .end local v11    # "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :cond_7
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    move-wide/from16 v17, v9

    invoke-virtual/range {v12 .. v18}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 236
    goto/16 :goto_0

    .line 211
    .end local v8    # "hasSelection":Z
    .end local v9    # "y":D
    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    .line 216
    .restart local v8    # "hasSelection":Z
    :cond_9
    move v12, v7

    if-lez v12, :cond_6

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuItem;

    move-object v3, v12

    goto :goto_2

    .line 237
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    .end local v4    # "sm":Ljavafx/scene/control/SelectionModel;
    .end local v5    # "currentSelectedIndex":J
    .end local v7    # "itemInControlCount":I
    .end local v8    # "hasSelection":Z
    :cond_a
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v12}, Ljavafx/scene/control/ContextMenu;->hide()V

    goto/16 :goto_0

    .line 239
    :cond_b
    const-string v12, "CONVERTER"

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 240
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updateChoiceBoxItems()V

    .line 241
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->updatePopupItems()V

    goto/16 :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 27

    .prologue
    .line 320
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v13

    move-wide v10, v13

    .line 322
    .local v10, "obw":D
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ChoiceBox;

    move-object v12, v13

    .line 323
    .local v12, "control":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->label:Ljavafx/scene/control/Label;

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-virtual/range {v13 .. v21}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 324
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-wide v14, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    invoke-virtual/range {v13 .. v17}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 325
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->openButton:Ljavafx/scene/layout/StackPane;

    move-wide v15, v2

    move-wide/from16 v17, v6

    add-double v15, v15, v17

    move-wide/from16 v17, v10

    sub-double v15, v15, v17

    move-wide/from16 v17, v4

    move-wide/from16 v19, v10

    move-wide/from16 v21, v8

    const-wide/16 v23, 0x0

    sget-object v25, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v26, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v13 .. v26}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 327
    return-void
.end method

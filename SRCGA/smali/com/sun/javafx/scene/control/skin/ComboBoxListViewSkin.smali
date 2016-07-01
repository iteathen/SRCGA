.class public Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
.super Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
.source "ComboBoxListViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final COMBO_BOX_ROWS_TO_MEASURE_WIDTH_KEY:Ljava/lang/String; = "comboBoxRowsToMeasureWidth"

.field private static final PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;


# instance fields
.field private buttonCell:Ljavafx/scene/control/ListCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ListCell",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cellFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final comboBox:Ljavafx/scene/control/ComboBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation
.end field

.field private comboBoxItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private itemCountDirty:Z

.field private final itemsObserver:Ljavafx/beans/InvalidationListener;

.field private listSelectionLock:Z

.field private final listView:Ljavafx/scene/control/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private listViewItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listViewItemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private listViewSelectionDirty:Z

.field private final weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 562
    const-string v0, "selected"

    .line 563
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    .line 564
    const-string v0, "empty"

    .line 565
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

    .line 566
    const-string v0, "filled"

    .line 567
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

    .line 566
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ComboBox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "comboBox":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;-><init>(Ljavafx/scene/control/ComboBox;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;-><init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewSelectionDirty:Z

    .line 91
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItemsListener:Ljavafx/collections/ListChangeListener;

    .line 100
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItemsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    .line 112
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 113
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateComboBoxItems()V

    .line 115
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->itemsObserver:Ljavafx/beans/InvalidationListener;

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->itemsObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 122
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->createListView()Ljavafx/scene/control/ListView;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setManaged(Z)V

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateListViewItems()V

    .line 130
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateCellFactory()V

    .line 132
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateButtonCell()V

    .line 135
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateValue()V

    .line 137
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "ITEMS"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 138
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    const-string v4, "PROMPT_TEXT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 139
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "CELL_FACTORY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->visibleRowCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    const-string v4, "VISIBLE_ROW_COUNT"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 141
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "CONVERTER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 142
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->buttonCellProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "BUTTON_CELL"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 143
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "VALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 144
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "EDITABLE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 145
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->show()V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->itemCountDirty:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    return v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Z)Z
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->itemCountDirty:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    return v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/scene/control/ListCell;Ljava/lang/Object;Z)Z
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/ListCell;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Object;
    move v3, p3

    .local v3, "x3":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayText(Ljavafx/scene/control/ListCell;Ljava/lang/Object;Z)Z

    move-result v4

    move v0, v4

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/scene/control/ComboBox;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getListViewPrefHeight()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    return-wide v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->lambda$new$322(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->lambda$createListView$323(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->lambda$createListView$324(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->lambda$createListView$325(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->lambda$createListView$326(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method private createListView()Ljavafx/scene/control/ListView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V

    move-object v1, v2

    .line 477
    .local v1, "_listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v1

    const-string v3, "list-view"

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setId(Ljava/lang/String;)V

    .line 478
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 479
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModel;->setSelectionMode(Ljavafx/scene/control/SelectionMode;)V

    .line 480
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setFocusTraversable(Z)V

    .line 482
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 490
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 494
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ListView;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 514
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    .line 523
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0
.end method

.method private getDefaultCellFactory()Ljavafx/util/Callback;
    .locals 5
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
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0
.end method

.method private getIndexOfComboBoxValueInItemsList()I
    .locals 5

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 398
    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 399
    .local v2, "index":I
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return v0
.end method

.method private getListViewPrefHeight()D
    .locals 10

    .prologue
    .line 528
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    instance-of v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;

    if-eqz v6, :cond_0

    .line 529
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getVisibleRowCount()I

    move-result v6

    move v4, v6

    .line 530
    .local v4, "maxRows":I
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;

    move-object v5, v6

    .line 531
    .local v5, "skin":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<***>;"
    move-object v6, v5

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->getVirtualFlowPreferredHeight(I)D

    move-result-wide v6

    move-wide v2, v6

    .line 537
    .end local v4    # "maxRows":I
    .end local v5    # "skin":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<***>;"
    .local v2, "ph":D
    :goto_0
    move-wide v6, v2

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v1

    .line 533
    .end local v2    # "ph":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    const/16 v7, 0x19

    mul-int/lit8 v6, v6, 0x19

    int-to-double v6, v6

    move-wide v4, v6

    .line 534
    .local v4, "ch":D
    move-wide v6, v4

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide v2, v6

    .restart local v2    # "ph":D
    goto :goto_0
.end method

.method private synthetic lambda$createListView$323(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    if-eqz v3, :cond_0

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v3

    move v2, v3

    .line 485
    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 486
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayNode()V

    .line 487
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 488
    goto :goto_0
.end method

.method private synthetic lambda$createListView$324(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewSelectionDirty:Z

    .line 492
    return-void
.end method

.method private synthetic lambda$createListView$325(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    move-object v2, v4

    .line 499
    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-eqz v4, :cond_1

    .line 500
    move-object v4, v2

    check-cast v4, Ljavafx/scene/Parent;

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v3, v4

    .line 501
    .local v3, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v3

    const-string v5, "thumb"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    const-string v5, "track"

    .line 502
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    const-string v5, "decrement-arrow"

    .line 503
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    const-string v5, "increment-arrow"

    .line 504
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    .line 512
    .end local v3    # "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->isHideOnClickEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox;->hide()V

    .line 512
    :cond_2
    goto :goto_0
.end method

.method private synthetic lambda$createListView$326(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 517
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 518
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v2, v3, :cond_1

    .line 519
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->hide()V

    .line 521
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$322(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateComboBoxItems()V

    .line 117
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateListViewItems()V

    .line 118
    return-void
.end method

.method private updateButtonCell()V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getButtonCell()Ljavafx/scene/control/ListCell;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 404
    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getButtonCell()Ljavafx/scene/control/ListCell;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    .line 405
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListCell;->setMouseTransparent(Z)V

    .line 406
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListCell;->updateListView(Ljavafx/scene/control/ListView;)V

    .line 407
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayArea()V

    .line 411
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    sget-object v2, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 412
    return-void

    .line 404
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getDefaultCellFactory()Ljavafx/util/Callback;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-interface {v2, v3}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListCell;

    goto :goto_0
.end method

.method private updateCellFactory()V
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v2

    move-object v1, v2

    .line 416
    .local v1, "cf":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ListView<TT;>;Ljavafx/scene/control/ListCell<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->cellFactory:Ljavafx/util/Callback;

    .line 417
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->cellFactory:Ljavafx/util/Callback;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->setCellFactory(Ljavafx/util/Callback;)V

    .line 418
    return-void

    .line 416
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getDefaultCellFactory()Ljavafx/util/Callback;

    move-result-object v3

    goto :goto_0
.end method

.method private updateDisplayText(Ljavafx/scene/control/ListCell;Ljava/lang/Object;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;, "TT;"
    move v3, p3

    .local v3, "empty":Z
    move v6, v3

    if-eqz v6, :cond_1

    .line 374
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x1

    move v0, v6

    .line 392
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :goto_0
    return v0

    .line 375
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 376
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setText(Ljava/lang/String;)V

    .line 377
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 378
    :cond_1
    move-object v6, v2

    instance-of v6, v6, Ljavafx/scene/Node;

    if-eqz v6, :cond_5

    .line 379
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListCell;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    move-object v4, v6

    .line 380
    .local v4, "currentNode":Ljavafx/scene/Node;
    move-object v6, v2

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 381
    .local v5, "newNode":Ljavafx/scene/Node;
    move-object v6, v4

    if-eqz v6, :cond_2

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 382
    :cond_2
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setText(Ljava/lang/String;)V

    .line 383
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 385
    :cond_3
    move-object v6, v5

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 388
    .end local v4    # "currentNode":Ljavafx/scene/Node;
    .end local v5    # "newNode":Ljavafx/scene/Node;
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v4, v6

    .line 389
    .local v4, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v2

    if-nez v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getPromptText()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v5, v6

    .line 390
    .local v5, "s":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setText(Ljava/lang/String;)V

    .line 391
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 392
    move-object v6, v5

    if-eqz v6, :cond_6

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_6
    const/4 v6, 0x1

    :goto_3
    move v0, v6

    goto :goto_0

    .line 389
    .end local v5    # "s":Ljava/lang/String;
    :cond_7
    move-object v6, v4

    if-nez v6, :cond_8

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 392
    .restart local v5    # "s":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private updateValue()V
    .locals 8

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 306
    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v2, v6

    .line 308
    .local v2, "listViewSM":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 309
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/SelectionModel;->clearSelection()V

    .line 341
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getIndexOfComboBoxValueInItemsList()I

    move-result v6

    move v3, v6

    .line 315
    .local v3, "indexOfNewValue":I
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 316
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    .line 317
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/SelectionModel;->clearSelection()V

    .line 318
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    goto :goto_0

    .line 320
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v6

    move v4, v6

    .line 321
    .local v4, "index":I
    move v6, v4

    if-ltz v6, :cond_3

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 322
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 323
    .local v5, "itemsObj":Ljava/lang/Object;, "TT;"
    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SelectionModel;->select(I)V

    .line 328
    :goto_1
    goto :goto_0

    .line 326
    :cond_2
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SelectionModel;->select(Ljava/lang/Object;)V

    goto :goto_1

    .line 330
    .end local v5    # "itemsObj":Ljava/lang/Object;, "TT;"
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    .line 331
    .local v5, "listViewIndex":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 334
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayNode()V

    goto :goto_0

    .line 336
    :cond_4
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SelectionModel;->select(I)V

    goto :goto_0
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 23

    .prologue
    .line 268
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 269
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-super/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computeMaxHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v0
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 23

    .prologue
    .line 253
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 254
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-super/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computeMaxWidth(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 258
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 259
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-super/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computeMinHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 15

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
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

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 239
    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 263
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 264
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-super/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computePrefHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 29

    .prologue
    .line 243
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
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
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    invoke-super/range {v18 .. v28}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computePrefWidth(DDDDD)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 244
    .local v12, "superPrefWidth":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ListView;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 245
    .local v14, "listViewWidth":D
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 247
    .local v16, "pw":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->reconfigurePopup()V

    .line 249
    move-wide/from16 v18, v16

    move-wide/from16 v1, v18

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-wide v1
.end method

.method protected getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0
.end method

.method public getDisplayNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditableInputNode()Ljavafx/scene/control/TextField;

    move-result-object v2

    move-object v1, v2

    .line 207
    .local v1, "displayNode":Ljavafx/scene/Node;
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayNode()V

    .line 209
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0

    .line 204
    .end local v1    # "displayNode":Ljavafx/scene/Node;
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    move-object v1, v2

    .restart local v1    # "displayNode":Ljavafx/scene/Node;
    goto :goto_0
.end method

.method protected getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListView()Ljavafx/scene/control/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0
.end method

.method public getPopupContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 162
    const-string v2, "ITEMS"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateComboBoxItems()V

    .line 164
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateListViewItems()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v2, "PROMPT_TEXT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayNode()V

    goto :goto_0

    .line 167
    :cond_2
    const-string v2, "CELL_FACTORY"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateCellFactory()V

    goto :goto_0

    .line 169
    :cond_3
    const-string v2, "VISIBLE_ROW_COUNT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    if-nez v2, :cond_4

    goto :goto_0

    .line 171
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->requestLayout()V

    goto :goto_0

    .line 172
    :cond_5
    const-string v2, "CONVERTER"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateListViewItems()V

    goto :goto_0

    .line 174
    :cond_6
    const-string v2, "EDITOR"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 175
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditableInputNode()Ljavafx/scene/control/TextField;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_7
    const-string v2, "BUTTON_CELL"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateButtonCell()V

    goto :goto_0

    .line 178
    :cond_8
    const-string v2, "VALUE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 179
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateValue()V

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    new-instance v3, Ljavafx/event/ActionEvent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox;->fireEvent(Ljavafx/event/Event;)V

    goto :goto_0

    .line 181
    :cond_9
    const-string v2, "EDITABLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateEditable()V

    goto/16 :goto_0
.end method

.method protected isHideOnClickEnabled()Z
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    return v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 21

    .prologue
    .line 274
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewSelectionDirty:Z

    if-eqz v11, :cond_0

    .line 276
    move-object v11, v0

    const/4 v12, 0x1

    :try_start_0
    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    .line 277
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v11}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 278
    .local v9, "item":Ljava/lang/Object;, "TT;"
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v11}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 279
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    invoke-virtual {v11}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/scene/control/MultipleSelectionModel;->select(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    .line 282
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewSelectionDirty:Z

    .line 283
    .line 286
    .end local v9    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-super/range {v11 .. v19}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->layoutChildren(DDDD)V

    .line 287
    return-void

    .line 281
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listSelectionLock:Z

    .line 282
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewSelectionDirty:Z

    move-object v11, v10

    throw v11
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 596
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :goto_0
    return-object v0

    .line 575
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 581
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ListView;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 583
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 586
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getAccessibleText()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 587
    .local v3, "accText":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 588
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v4, v5

    .line 589
    .local v4, "title":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 590
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getPromptText()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 592
    :cond_3
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 588
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 594
    .end local v3    # "accText":Ljava/lang/String;
    :pswitch_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 595
    :pswitch_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateComboBoxItems()V
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    .line 214
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    if-nez v2, :cond_0

    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    .line 215
    return-void

    .line 214
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    goto :goto_0
.end method

.method protected updateDisplayNode()V
    .locals 8

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 346
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->updateDisplayNode()V

    .line 369
    :goto_0
    return-void

    .line 348
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 349
    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getIndexOfComboBoxValueInItemsList()I

    move-result v4

    move v2, v4

    .line 350
    .local v2, "index":I
    move v4, v2

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 351
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListCell;->setItem(Ljava/lang/Object;)V

    .line 352
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    move v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListCell;->updateIndex(I)V

    goto :goto_0

    .line 356
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListCell;->updateIndex(I)V

    .line 357
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->updateDisplayText(Ljavafx/scene/control/ListCell;Ljava/lang/Object;Z)Z

    move-result v4

    move v3, v4

    .line 364
    .local v3, "empty":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    sget-object v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/ListCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 365
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    sget-object v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

    move v6, v3

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/ListCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 366
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->buttonCell:Ljavafx/scene/control/ListCell;

    sget-object v5, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/ListCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    goto :goto_0

    .line 365
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public updateListViewItems()V
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 219
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 222
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->comboBoxItems:Ljavafx/collections/ObservableList;

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    .line 223
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listView:Ljavafx/scene/control/ListView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListView;->setItems(Ljavafx/collections/ObservableList;)V

    .line 225
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_1

    .line 226
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->listViewItems:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->weakListViewItemsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 229
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->itemCountDirty:Z

    .line 230
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->requestLayout()V

    .line 231
    return-void
.end method

.class Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
.super Ljavafx/scene/control/SingleSelectionModel;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComboBoxSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/SingleSelectionModel",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final comboBox:Ljavafx/scene/control/ComboBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsContentObserver:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsObserver:Ljavafx/beans/InvalidationListener;

.field private weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ComboBox;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "cb":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/SingleSelectionModel;-><init>()V

    .line 520
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;-><init>(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    .line 555
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    .line 485
    move-object v2, v1

    if-nez v2, :cond_0

    .line 486
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "ComboBox can not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 490
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 504
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;-><init>(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    .line 513
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->itemsObserver:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 514
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 515
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 517
    :cond_1
    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "x2":Ljavafx/collections/ObservableList;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->lambda$new$154(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$154(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method private updateItemsObserver(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 562
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 564
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 565
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 570
    :cond_1
    const/4 v5, -0x1

    move v3, v5

    .line 571
    .local v3, "newValueIndex":I
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 572
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 573
    .local v4, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 574
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 577
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->setSelectedIndex(I)V

    .line 578
    return-void
.end method


# virtual methods
.method protected getItemCount()I
    .locals 3

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 590
    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    goto :goto_0
.end method

.method protected getModelItem(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 583
    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 585
    .end local v0    # "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    :goto_0
    return-object v0

    .line 584
    .restart local v0    # "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel<TT;>;"
    :cond_0
    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 585
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

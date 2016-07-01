.class Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;
.super Ljavafx/scene/control/SingleSelectionModel;
.source "ChoiceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ChoiceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceBoxSelectionModel"
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
.field private final choiceBox:Ljavafx/scene/control/ChoiceBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ChoiceBox",
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
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "cb":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/SingleSelectionModel;-><init>()V

    .line 499
    move-object v4, v1

    if-nez v4, :cond_0

    .line 500
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ChoiceBox can not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    .line 514
    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    move-object v2, v4

    .line 524
    .local v2, "itemsContentObserver":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 525
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 529
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;Ljavafx/collections/ListChangeListener;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    move-object v3, v4

    .line 544
    .local v3, "itemsObserver":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljavafx/collections/ObservableList<TT;>;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 545
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->lambda$new$139(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;Ljavafx/collections/ListChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->lambda$new$140(Ljavafx/collections/ListChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method private synthetic lambda$new$139(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    :cond_0
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->setSelectedIndex(I)V

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getSelectedIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 518
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 519
    .local v2, "newIndex":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 520
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->setSelectedIndex(I)V

    goto :goto_0
.end method

.method private synthetic lambda$new$140(Ljavafx/collections/ListChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 8

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "itemsContentObserver":Ljavafx/collections/ListChangeListener;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldList":Ljavafx/collections/ObservableList;
    move-object v4, p4

    .local v4, "newList":Ljavafx/collections/ObservableList;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 531
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 533
    :cond_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 534
    move-object v6, v4

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 536
    :cond_1
    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->setSelectedIndex(I)V

    .line 537
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 538
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v6}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    .line 539
    .local v5, "newIndex":I
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 540
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->setSelectedIndex(I)V

    .line 543
    .end local v5    # "newIndex":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected getItemCount()I
    .locals 3

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 557
    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
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
    .line 549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 550
    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 552
    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    :goto_0
    return-object v0

    .line 551
    .restart local v0    # "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
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

    .line 552
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;, "Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 570
    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/control/Separator;

    if-eqz v3, :cond_1

    .line 571
    move-object v3, v0

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->select(I)V

    .line 576
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$ChoiceBoxSelectionModel;->choiceBox:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->hide()V

    .line 579
    :cond_0
    return-void

    .line 573
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    goto :goto_0
.end method

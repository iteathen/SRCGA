.class Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
.super Ljavafx/scene/control/SingleSelectionModel;
.source "TabPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TabPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabPaneSelectionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/SingleSelectionModel",
        "<",
        "Ljavafx/scene/control/Tab;",
        ">;"
    }
.end annotation


# instance fields
.field private final tabPane:Ljavafx/scene/control/TabPane;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TabPane;)V
    .locals 7

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/TabPane;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/SingleSelectionModel;-><init>()V

    .line 660
    move-object v3, v1

    if-nez v3, :cond_0

    .line 661
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "TabPane can not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 663
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    .line 666
    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TabPane$TabPaneSelectionModel;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    move-object v2, v3

    .line 696
    .local v2, "itemsContentObserver":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<Ljavafx/scene/control/Tab;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 697
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 699
    :cond_1
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TabPane$TabPaneSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->lambda$new$17(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private findNearestAvailableTab(IZ)Ljavafx/scene/control/Tab;
    .locals 11

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move v1, p1

    .local v1, "tabIndex":I
    move v2, p2

    .local v2, "doSelect":Z
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getItemCount()I

    move-result v9

    move v3, v9

    .line 760
    .local v3, "tabCount":I
    const/4 v9, 0x1

    move v4, v9

    .line 761
    .local v4, "i":I
    const/4 v9, 0x0

    move-object v5, v9

    .line 764
    .local v5, "bestTab":Ljavafx/scene/control/Tab;
    :goto_0
    move v9, v1

    move v10, v4

    sub-int/2addr v9, v10

    move v6, v9

    .line 765
    .local v6, "downPos":I
    move v9, v6

    if-ltz v9, :cond_1

    .line 766
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v9

    move-object v7, v9

    .line 767
    .local v7, "_tab":Ljavafx/scene/control/Tab;
    move-object v9, v7

    if-eqz v9, :cond_1

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v9

    if-nez v9, :cond_1

    .line 768
    move-object v9, v7

    move-object v5, v9

    .line 793
    .end local v7    # "_tab":Ljavafx/scene/control/Tab;
    :goto_1
    move v9, v2

    if-eqz v9, :cond_0

    move-object v9, v5

    if-eqz v9, :cond_0

    .line 794
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->select(Ljavafx/scene/control/Tab;)V

    .line 797
    :cond_0
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    return-object v0

    .line 778
    .restart local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    :cond_1
    move v9, v1

    move v10, v4

    add-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    .line 779
    .local v7, "upPos":I
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_2

    .line 780
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v9

    move-object v8, v9

    .line 781
    .local v8, "_tab":Ljavafx/scene/control/Tab;
    move-object v9, v8

    if-eqz v9, :cond_2

    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 782
    move-object v9, v8

    move-object v5, v9

    .line 783
    goto :goto_1

    .line 787
    .end local v8    # "_tab":Ljavafx/scene/control/Tab;
    :cond_2
    move v9, v6

    if-gez v9, :cond_3

    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_3

    .line 788
    goto :goto_1

    .line 790
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 791
    goto :goto_0
.end method

.method private synthetic lambda$new$17(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 668
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

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

    check-cast v5, Ljavafx/scene/control/Tab;

    move-object v3, v5

    .line 669
    .local v3, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 670
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tab;->setSelected(Z)V

    .line 672
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move v4, v5

    .line 676
    .local v4, "tabIndex":I
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->findNearestAvailableTab(IZ)Ljavafx/scene/control/Tab;

    move-result-object v5

    .line 679
    .end local v4    # "tabIndex":I
    :cond_1
    goto :goto_1

    .line 680
    .end local v3    # "tab":Ljavafx/scene/control/Tab;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 684
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->clearAndSelect(I)V

    goto/16 :goto_0

    .line 688
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 691
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->findNearestAvailableTab(IZ)Ljavafx/scene/control/Tab;

    move-result-object v5

    .line 695
    :cond_5
    :goto_2
    return-void

    .line 692
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 693
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->clearSelection()V

    goto :goto_2
.end method


# virtual methods
.method protected getItemCount()I
    .locals 3

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 753
    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Tab;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    goto :goto_0
.end method

.method protected bridge synthetic getModelItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    return-object v0
.end method

.method protected getModelItem(I)Ljavafx/scene/control/Tab;
    .locals 5

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 746
    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Tab;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 748
    .end local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    :goto_0
    return-object v0

    .line 747
    .restart local v0    # "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
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

    .line 748
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Tab;

    move-object v0, v3

    goto :goto_0
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move v3, v1

    move-object v4, v0

    .line 704
    invoke-virtual {v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    .line 727
    :cond_1
    :goto_0
    return-void

    .line 709
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v3

    if-ltz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 710
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Tab;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Tab;->setSelected(Z)V

    .line 713
    :cond_3
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->setSelectedIndex(I)V

    .line 715
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v3

    move-object v2, v3

    .line 716
    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 717
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 721
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v3

    if-ltz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 722
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getSelectedIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Tab;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Tab;->setSelected(Z)V

    .line 726
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->tabPane:Ljavafx/scene/control/TabPane;

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->FOCUS_ITEM:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 727
    goto :goto_0
.end method

.method public bridge synthetic select(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Tab;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->select(Ljavafx/scene/control/Tab;)V

    return-void
.end method

.method public select(Ljavafx/scene/control/Tab;)V
    .locals 7

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabPaneSelectionModel;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getItemCount()I

    move-result v5

    move v2, v5

    .line 732
    .local v2, "itemCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 733
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->getModelItem(I)Ljavafx/scene/control/Tab;

    move-result-object v5

    move-object v4, v5

    .line 734
    .local v4, "value":Ljavafx/scene/control/Tab;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->select(I)V

    .line 736
    .line 742
    .end local v4    # "value":Ljavafx/scene/control/Tab;
    :goto_1
    return-void

    .line 732
    .restart local v4    # "value":Ljavafx/scene/control/Tab;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 739
    .end local v4    # "value":Ljavafx/scene/control/Tab;
    :cond_1
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 740
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 742
    :cond_2
    goto :goto_1
.end method

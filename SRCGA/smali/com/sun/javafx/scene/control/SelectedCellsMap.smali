.class public abstract Lcom/sun/javafx/scene/control/SelectedCellsMap;
.super Ljava/lang/Object;
.source "SelectedCellsMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/TablePositionBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final selectedCellBitSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedCells:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sortedSelectedCells:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ListChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    .line 58
    move-object v2, v0

    new-instance v3, Ljavafx/collections/transformation/SortedList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    invoke-static {}, Lcom/sun/javafx/scene/control/SelectedCellsMap$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;-><init>(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->sortedSelectedCells:Ljavafx/collections/ObservableList;

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->sortedSelectedCells:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 64
    move-object v2, v0

    new-instance v3, Ljava/util/TreeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-static {}, Lcom/sun/javafx/scene/control/SelectedCellsMap$$Lambda$2;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TablePositionBase;Ljavafx/scene/control/TablePositionBase;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->lambda$new$21(Ljavafx/scene/control/TablePositionBase;Ljavafx/scene/control/TablePositionBase;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->lambda$new$22(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$new$21(Ljavafx/scene/control/TablePositionBase;Ljavafx/scene/control/TablePositionBase;)I
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "o1":Ljavafx/scene/control/TablePositionBase;
    move-object v1, p1

    .local v1, "o2":Ljavafx/scene/control/TablePositionBase;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    .line 60
    .local v2, "result":I
    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_0
    move v0, v3

    .end local v0    # "o1":Ljavafx/scene/control/TablePositionBase;
    return v0

    .restart local v0    # "o1":Ljavafx/scene/control/TablePositionBase;
    :cond_0
    move v3, v2

    goto :goto_0
.end method

.method private static synthetic lambda$new$22(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "o1":Ljava/lang/Integer;
    move-object v1, p1

    .local v1, "o2":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    move v0, v2

    .end local v0    # "o1":Ljava/lang/Integer;
    return v0
.end method


# virtual methods
.method public add(Ljavafx/scene/control/TablePositionBase;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v8

    move v2, v8

    .line 82
    .local v2, "row":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v8

    move v3, v8

    .line 85
    .local v3, "columnIndex":I
    const/4 v8, 0x0

    move v4, v8

    .line 87
    .local v4, "isNewBitSet":Z
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 88
    new-instance v8, Ljava/util/BitSet;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/BitSet;-><init>()V

    move-object v5, v8

    .line 89
    .local v5, "bitset":Ljava/util/BitSet;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 90
    const/4 v8, 0x1

    move v4, v8

    .line 95
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->isCellSelectionEnabled()Z

    move-result v8

    move v6, v8

    .line 97
    .local v6, "cellSelectionModeEnabled":Z
    move v8, v6

    if-eqz v8, :cond_3

    .line 98
    move v8, v3

    if-ltz v8, :cond_2

    .line 99
    move-object v8, v5

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    move v7, v8

    .line 101
    .local v7, "isAlreadySet":Z
    move v8, v7

    if-nez v8, :cond_0

    .line 102
    move-object v8, v5

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 105
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 107
    .line 121
    .end local v7    # "isAlreadySet":Z
    :cond_0
    :goto_1
    return-void

    .line 92
    .end local v5    # "bitset":Ljava/util/BitSet;
    .end local v6    # "cellSelectionModeEnabled":Z
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    move-object v5, v8

    .restart local v5    # "bitset":Ljava/util/BitSet;
    goto :goto_0

    .line 109
    .restart local v6    # "cellSelectionModeEnabled":Z
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 114
    :cond_3
    move v8, v4

    if-eqz v8, :cond_0

    .line 115
    move v8, v3

    if-ltz v8, :cond_4

    .line 116
    move-object v8, v5

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 118
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "cells":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TablePositionBase;

    move-object v3, v7

    .line 126
    .local v3, "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v4, v7

    .line 127
    .local v4, "row":I
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v7

    move v5, v7

    .line 131
    .local v5, "columnIndex":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    new-instance v7, Ljava/util/BitSet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    move-object v6, v7

    .line 133
    .local v6, "bitset":Ljava/util/BitSet;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 138
    :goto_1
    move v7, v5

    if-gez v7, :cond_1

    .line 139
    goto :goto_0

    .line 135
    .end local v6    # "bitset":Ljava/util/BitSet;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    move-object v6, v7

    .restart local v6    # "bitset":Ljava/util/BitSet;
    goto :goto_1

    .line 142
    :cond_1
    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 143
    goto :goto_0

    .line 146
    .end local v3    # "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    .end local v4    # "row":I
    .end local v5    # "columnIndex":I
    .end local v6    # "bitset":Ljava/util/BitSet;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 147
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 202
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 203
    return-void
.end method

.method public get(I)Ljavafx/scene/control/TablePositionBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move v1, p1

    .local v1, "i":I
    move v2, v1

    if-gez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    move-object v0, v2

    .line 77
    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->sortedSelectedCells:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TablePositionBase;

    move-object v0, v2

    goto :goto_0
.end method

.method public getSelectedCells()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    return-object v0
.end method

.method public indexOf(Ljavafx/scene/control/TablePositionBase;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SelectedCellsMap;->sortedSelectedCells:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    return v0
.end method

.method public abstract isCellSelectionEnabled()Z
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    return v0
.end method

.method public isSelected(II)Z
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move v1, p1

    .local v1, "row":I
    move v2, p2

    .local v2, "columnIndex":I
    move v3, v2

    if-gez v3, :cond_0

    .line 207
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 209
    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove(Ljavafx/scene/control/TablePositionBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move v2, v5

    .line 178
    .local v2, "row":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v5

    move v3, v5

    .line 181
    .local v3, "columnIndex":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    move-object v4, v5

    .line 184
    .local v4, "bitset":Ljava/util/BitSet;
    move v5, v3

    if-ltz v5, :cond_0

    .line 185
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->clear(I)V

    .line 188
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Ljava/util/BitSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 194
    .end local v4    # "bitset":Ljava/util/BitSet;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 195
    return-void
.end method

.method public setAll(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, p1

    .local v1, "cells":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 152
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TablePositionBase;

    move-object v3, v7

    .line 153
    .local v3, "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v4, v7

    .line 154
    .local v4, "row":I
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v7

    move v5, v7

    .line 158
    .local v5, "columnIndex":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 159
    new-instance v7, Ljava/util/BitSet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    move-object v6, v7

    .line 160
    .local v6, "bitset":Ljava/util/BitSet;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 165
    :goto_1
    move v7, v5

    if-gez v7, :cond_1

    .line 166
    goto :goto_0

    .line 162
    .end local v6    # "bitset":Ljava/util/BitSet;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCellBitSetMap:Ljava/util/Map;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    move-object v6, v7

    .restart local v6    # "bitset":Ljava/util/BitSet;
    goto :goto_1

    .line 169
    :cond_1
    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 170
    goto :goto_0

    .line 173
    .end local v3    # "tp":Ljavafx/scene/control/TablePositionBase;, "TT;"
    .end local v4    # "row":I
    .end local v5    # "columnIndex":I
    .end local v6    # "bitset":Ljava/util/BitSet;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v7

    .line 174
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SelectedCellsMap;->selectedCells:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SelectedCellsMap;, "Lcom/sun/javafx/scene/control/SelectedCellsMap<TT;>;"
    return v0
.end method

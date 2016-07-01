.class public abstract Ljavafx/scene/control/MultipleSelectionModelBuilder;
.super Ljava/lang/Object;
.source "MultipleSelectionModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/MultipleSelectionModelBuilder",
        "<TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private selectedIndices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItems:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private selectionMode:Ljavafx/scene/control/SelectionMode;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/MultipleSelectionModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    move v2, v3

    .line 44
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedIndices:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 45
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedItems:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 46
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectionMode:Ljavafx/scene/control/SelectionMode;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->setSelectionMode(Ljavafx/scene/control/SelectionMode;)V

    .line 47
    :cond_2
    return-void
.end method

.method public selectedIndices(Ljava/util/Collection;)Ljavafx/scene/control/MultipleSelectionModelBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Integer;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedIndices:Ljava/util/Collection;

    .line 56
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    .line 57
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    return-object v0
.end method

.method public varargs selectedIndices([Ljava/lang/Integer;)Ljavafx/scene/control/MultipleSelectionModelBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedIndices(Ljava/util/Collection;)Ljavafx/scene/control/MultipleSelectionModelBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    return-object v0
.end method

.method public selectedItems(Ljava/util/Collection;)Ljavafx/scene/control/MultipleSelectionModelBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedItems:Ljava/util/Collection;

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    return-object v0
.end method

.method public varargs selectedItems([Ljava/lang/Object;)Ljavafx/scene/control/MultipleSelectionModelBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectedItems(Ljava/util/Collection;)Ljavafx/scene/control/MultipleSelectionModelBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    return-object v0
.end method

.method public selectionMode(Ljavafx/scene/control/SelectionMode;)Ljavafx/scene/control/MultipleSelectionModelBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SelectionMode;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/SelectionMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->selectionMode:Ljavafx/scene/control/SelectionMode;

    .line 92
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/MultipleSelectionModelBuilder;->__set:I

    .line 93
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBuilder;, "Ljavafx/scene/control/MultipleSelectionModelBuilder<TT;TB;>;"
    return-object v0
.end method

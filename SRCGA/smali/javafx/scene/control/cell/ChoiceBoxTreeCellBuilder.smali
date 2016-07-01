.class public Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;
.super Ljavafx/scene/control/TreeCellBuilder;
.source "ChoiceBoxTreeCellBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/TreeCellBuilder",
        "<TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeCellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/cell/ChoiceBoxTreeCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/cell/ChoiceBoxTreeCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/cell/ChoiceBoxTreeCell;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCell<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeCellBuilder;->applyTo(Ljavafx/scene/control/TreeCell;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ChoiceBoxTreeCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ChoiceBoxTreeCell;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->items:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->build()Ljavafx/scene/control/cell/ChoiceBoxTreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->build()Ljavafx/scene/control/cell/ChoiceBoxTreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->build()Ljavafx/scene/control/cell/ChoiceBoxTreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/TreeCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->build()Ljavafx/scene/control/cell/ChoiceBoxTreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/cell/ChoiceBoxTreeCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/cell/ChoiceBoxTreeCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/cell/ChoiceBoxTreeCell;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/cell/ChoiceBoxTreeCell;-><init>()V

    move-object v1, v2

    .line 88
    .local v1, "x":Ljavafx/scene/control/cell/ChoiceBoxTreeCell;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->applyTo(Ljavafx/scene/control/cell/ChoiceBoxTreeCell;)V

    .line 89
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public converter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->converter:Ljavafx/util/StringConverter;

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public items(Ljava/util/Collection;)Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->items:Ljava/util/Collection;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public varargs items([Ljava/lang/Object;)Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TB;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;->items(Ljava/util/Collection;)Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder;, "Ljavafx/scene/control/cell/ChoiceBoxTreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

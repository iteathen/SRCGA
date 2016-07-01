.class public Ljavafx/scene/control/ComboBoxBuilder;
.super Ljavafx/scene/control/ComboBoxBaseBuilder;
.source "ComboBoxBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/ComboBoxBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/ComboBoxBaseBuilder",
        "<TT;TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/ComboBox",
        "<TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

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

.field private converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/scene/control/SingleSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private visibleRowCount:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ComboBoxBaseBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/ComboBoxBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/ComboBoxBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ComboBoxBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ComboBoxBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ComboBox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/ComboBoxBaseBuilder;->applyTo(Ljavafx/scene/control/ComboBoxBase;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->buttonCell:Ljavafx/scene/control/ListCell;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setButtonCell(Ljavafx/scene/control/ListCell;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->cellFactory:Ljavafx/util/Callback;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setCellFactory(Ljavafx/util/Callback;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setConverter(Ljavafx/util/StringConverter;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->items:Ljavafx/collections/ObservableList;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setItems(Ljavafx/collections/ObservableList;)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/ComboBoxBuilder;->visibleRowCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox;->setVisibleRowCount(I)V

    .line 56
    :cond_5
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBuilder;->build()Ljavafx/scene/control/ComboBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ComboBox;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/ComboBox;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ComboBox;-><init>()V

    move-object v1, v2

    .line 130
    .local v1, "x":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBuilder;->applyTo(Ljavafx/scene/control/ComboBox;)V

    .line 131
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public buttonCell(Ljavafx/scene/control/ListCell;)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->buttonCell:Ljavafx/scene/control/ListCell;

    .line 66
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 67
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public cellFactory(Ljavafx/util/Callback;)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ListView<TT;>;Ljavafx/scene/control/ListCell<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->cellFactory:Ljavafx/util/Callback;

    .line 77
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public converter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->converter:Ljavafx/util/StringConverter;

    .line 88
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 89
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public items(Ljavafx/collections/ObservableList;)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->items:Ljavafx/collections/ObservableList;

    .line 99
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public selectionModel(Ljavafx/scene/control/SingleSelectionModel;)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    .line 110
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 111
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public visibleRowCount(I)Ljavafx/scene/control/ComboBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->visibleRowCount:I

    .line 121
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Ljavafx/scene/control/ComboBoxBuilder;->__set:I

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBuilder;, "Ljavafx/scene/control/ComboBoxBuilder<TT;TB;>;"
    return-object v0
.end method

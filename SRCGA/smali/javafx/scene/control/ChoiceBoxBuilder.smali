.class public Ljavafx/scene/control/ChoiceBoxBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "ChoiceBoxBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/ChoiceBoxBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/ChoiceBox",
        "<TT;>;>;"
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

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/ChoiceBoxBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/ChoiceBoxBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ChoiceBoxBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ChoiceBoxBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ChoiceBox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBoxBuilder;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox;->setConverter(Ljavafx/util/StringConverter;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBoxBuilder;->items:Ljavafx/collections/ObservableList;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox;->setItems(Ljavafx/collections/ObservableList;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBoxBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBoxBuilder;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ChoiceBox;->setValue(Ljava/lang/Object;)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBoxBuilder;->build()Ljavafx/scene/control/ChoiceBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ChoiceBox;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/ChoiceBox;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ChoiceBox;-><init>()V

    move-object v1, v2

    .line 107
    .local v1, "x":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBoxBuilder;->applyTo(Ljavafx/scene/control/ChoiceBox;)V

    .line 108
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public converter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/ChoiceBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->converter:Ljavafx/util/StringConverter;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public items(Ljavafx/collections/ObservableList;)Ljavafx/scene/control/ChoiceBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->items:Ljavafx/collections/ObservableList;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public selectionModel(Ljavafx/scene/control/SingleSelectionModel;)Ljavafx/scene/control/ChoiceBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    .line 86
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    .line 87
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljavafx/scene/control/ChoiceBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->value:Ljava/lang/Object;

    .line 98
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/ChoiceBoxBuilder;->__set:I

    .line 99
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBoxBuilder;, "Ljavafx/scene/control/ChoiceBoxBuilder<TT;TB;>;"
    return-object v0
.end method

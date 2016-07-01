.class public Ljavafx/scene/layout/GridPaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "GridPaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/GridPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private alignment:Ljavafx/geometry/Pos;

.field private columnConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private gridLinesVisible:Z

.field private hgap:D

.field private rowConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/layout/RowConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private vgap:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/GridPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/GridPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/GridPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/GridPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 65
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 66
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/layout/GridPane;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/GridPane;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/GridPane;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->columnConstraints:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->gridLinesVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/GridPane;->setGridLinesVisible(Z)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->hgap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/GridPane;->setHgap(D)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->rowConstraints:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->vgap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/GridPane;->setVgap(D)V

    .line 56
    :cond_5
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPaneBuilder;->build()Ljavafx/scene/layout/GridPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/GridPane;
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/GridPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/GridPane;-><init>()V

    move-object v1, v2

    .line 143
    .local v1, "x":Ljavafx/scene/layout/GridPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/GridPaneBuilder;->applyTo(Ljavafx/scene/layout/GridPane;)V

    .line 144
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPaneBuilder;->build()Ljavafx/scene/layout/GridPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPaneBuilder;->build()Ljavafx/scene/layout/GridPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public columnConstraints(Ljava/util/Collection;)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/layout/ColumnConstraints;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->columnConstraints:Ljava/util/Collection;

    .line 76
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public varargs columnConstraints([Ljavafx/scene/layout/ColumnConstraints;)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/GridPaneBuilder;->columnConstraints(Ljava/util/Collection;)Ljavafx/scene/layout/GridPaneBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public gridLinesVisible(Z)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->gridLinesVisible:Z

    .line 94
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hgap(D)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/GridPaneBuilder;->hgap:D

    .line 105
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 106
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public rowConstraints(Ljava/util/Collection;)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/layout/RowConstraints;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/layout/RowConstraints;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->rowConstraints:Ljava/util/Collection;

    .line 116
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 117
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public varargs rowConstraints([Ljavafx/scene/layout/RowConstraints;)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/layout/RowConstraints;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/layout/RowConstraints;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/GridPaneBuilder;->rowConstraints(Ljava/util/Collection;)Ljavafx/scene/layout/GridPaneBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vgap(D)Ljavafx/scene/layout/GridPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/GridPaneBuilder;->vgap:D

    .line 134
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/layout/GridPaneBuilder;->__set:I

    .line 135
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/GridPaneBuilder;, "Ljavafx/scene/layout/GridPaneBuilder<TB;>;"
    return-object v0
.end method

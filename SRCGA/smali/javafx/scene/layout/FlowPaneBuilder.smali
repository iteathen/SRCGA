.class public Ljavafx/scene/layout/FlowPaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "FlowPaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/FlowPaneBuilder",
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

.field private columnHalignment:Ljavafx/geometry/HPos;

.field private hgap:D

.field private orientation:Ljavafx/geometry/Orientation;

.field private prefWrapLength:D

.field private rowValignment:Ljavafx/geometry/VPos;

.field private vgap:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/FlowPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/FlowPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/FlowPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 66
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 67
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/layout/FlowPane;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/FlowPane;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/FlowPane;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->columnHalignment:Ljavafx/geometry/HPos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/FlowPane;->setColumnHalignment(Ljavafx/geometry/HPos;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->hgap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/FlowPane;->setHgap(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->orientation:Ljavafx/geometry/Orientation;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/FlowPane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->prefWrapLength:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/FlowPane;->setPrefWrapLength(D)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->rowValignment:Ljavafx/geometry/VPos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/FlowPane;->setRowValignment(Ljavafx/geometry/VPos;)V

    .line 56
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->vgap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/FlowPane;->setVgap(D)V

    .line 57
    :cond_6
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPaneBuilder;->build()Ljavafx/scene/layout/FlowPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/FlowPane;
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/FlowPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/FlowPane;-><init>()V

    move-object v1, v2

    .line 141
    .local v1, "x":Ljavafx/scene/layout/FlowPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/FlowPaneBuilder;->applyTo(Ljavafx/scene/layout/FlowPane;)V

    .line 142
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPaneBuilder;->build()Ljavafx/scene/layout/FlowPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPaneBuilder;->build()Ljavafx/scene/layout/FlowPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public columnHalignment(Ljavafx/geometry/HPos;)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/HPos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/HPos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->columnHalignment:Ljavafx/geometry/HPos;

    .line 77
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hgap(D)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->hgap:D

    .line 88
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public orientation(Ljavafx/geometry/Orientation;)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Orientation;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->orientation:Ljavafx/geometry/Orientation;

    .line 99
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefWrapLength(D)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->prefWrapLength:D

    .line 110
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 111
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public rowValignment(Ljavafx/geometry/VPos;)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/VPos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/VPos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->rowValignment:Ljavafx/geometry/VPos;

    .line 121
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vgap(D)Ljavafx/scene/layout/FlowPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->vgap:D

    .line 132
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    const/16 v5, 0x40

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Ljavafx/scene/layout/FlowPaneBuilder;->__set:I

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/FlowPaneBuilder;, "Ljavafx/scene/layout/FlowPaneBuilder<TB;>;"
    return-object v0
.end method

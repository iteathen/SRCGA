.class public Ljavafx/scene/layout/TilePaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "TilePaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/TilePaneBuilder",
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

.field private hgap:D

.field private orientation:Ljavafx/geometry/Orientation;

.field private prefColumns:I

.field private prefRows:I

.field private prefTileHeight:D

.field private prefTileWidth:D

.field private tileAlignment:Ljavafx/geometry/Pos;

.field private vgap:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/layout/TilePaneBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/layout/TilePaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/TilePaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/TilePaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/TilePaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/layout/TilePane;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/layout/TilePane;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/layout/TilePaneBuilder;->__set:I

    move v3, v5

    .line 53
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 54
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 55
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 56
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 67
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/TilePane;->setAlignment(Ljavafx/geometry/Pos;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->hgap:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setHgap(D)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->orientation:Ljavafx/geometry/Orientation;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/TilePane;->setOrientation(Ljavafx/geometry/Orientation;)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->prefColumns:I

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/TilePane;->setPrefColumns(I)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->prefRows:I

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/TilePane;->setPrefRows(I)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->prefTileHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setPrefTileHeight(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->prefTileWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setPrefTileWidth(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->tileAlignment:Ljavafx/geometry/Pos;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/TilePane;->setTileAlignment(Ljavafx/geometry/Pos;)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/TilePaneBuilder;->vgap:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setVgap(D)V

    goto :goto_1

    .line 68
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePaneBuilder;->build()Ljavafx/scene/layout/TilePane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePaneBuilder;->build()Ljavafx/scene/layout/TilePane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePaneBuilder;->build()Ljavafx/scene/layout/TilePane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/TilePane;
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/TilePane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/TilePane;-><init>()V

    move-object v1, v2

    .line 174
    .local v1, "x":Ljavafx/scene/layout/TilePane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->applyTo(Ljavafx/scene/layout/TilePane;)V

    .line 175
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public hgap(D)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/TilePaneBuilder;->hgap:D

    .line 88
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public orientation(Ljavafx/geometry/Orientation;)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 4
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

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->orientation:Ljavafx/geometry/Orientation;

    .line 99
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefColumns(I)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->prefColumns:I

    .line 110
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 111
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefRows(I)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->prefRows:I

    .line 121
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefTileHeight(D)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/TilePaneBuilder;->prefTileHeight:D

    .line 132
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefTileWidth(D)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/TilePaneBuilder;->prefTileWidth:D

    .line 143
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 144
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public tileAlignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/TilePaneBuilder;->tileAlignment:Ljavafx/geometry/Pos;

    .line 154
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 155
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

.method public vgap(D)Ljavafx/scene/layout/TilePaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/TilePaneBuilder;->vgap:D

    .line 165
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePaneBuilder;->__set(I)V

    .line 166
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/TilePaneBuilder;, "Ljavafx/scene/layout/TilePaneBuilder<TB;>;"
    return-object v0
.end method

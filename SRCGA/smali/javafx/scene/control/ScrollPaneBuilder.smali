.class public Ljavafx/scene/control/ScrollPaneBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "ScrollPaneBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/ScrollPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/ScrollPane;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private content:Ljavafx/scene/Node;

.field private fitToHeight:Z

.field private fitToWidth:Z

.field private hbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

.field private hmax:D

.field private hmin:D

.field private hvalue:D

.field private pannable:Z

.field private prefViewportHeight:D

.field private prefViewportWidth:D

.field private vbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

.field private viewportBounds:Ljavafx/geometry/Bounds;

.field private vmax:D

.field private vmin:D

.field private vvalue:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/ScrollPaneBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ScrollPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ScrollPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ScrollPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ScrollPane;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/ScrollPane;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/ScrollPaneBuilder;->__set:I

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

    .line 73
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->content:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setContent(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->fitToHeight:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setFitToHeight(Z)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->fitToWidth:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setFitToWidth(Z)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->hbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setHbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->hmax:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setHmax(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->hmin:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setHmin(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->hvalue:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->pannable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setPannable(Z)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->prefViewportHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setPrefViewportHeight(D)V

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->prefViewportWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setPrefViewportWidth(D)V

    goto :goto_1

    .line 67
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->vbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setVbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    goto :goto_1

    .line 68
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->viewportBounds:Ljavafx/geometry/Bounds;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ScrollPane;->setViewportBounds(Ljavafx/geometry/Bounds;)V

    goto :goto_1

    .line 69
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->vmax:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setVmax(D)V

    goto :goto_1

    .line 70
    :pswitch_d
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->vmin:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setVmin(D)V

    goto :goto_1

    .line 71
    :pswitch_e
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ScrollPaneBuilder;->vvalue:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    goto :goto_1

    .line 74
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPaneBuilder;->build()Ljavafx/scene/control/ScrollPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ScrollPane;
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/ScrollPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ScrollPane;-><init>()V

    move-object v1, v2

    .line 246
    .local v1, "x":Ljavafx/scene/control/ScrollPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->applyTo(Ljavafx/scene/control/ScrollPane;)V

    .line 247
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public content(Ljavafx/scene/Node;)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->content:Ljavafx/scene/Node;

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 84
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public fitToHeight(Z)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->fitToHeight:Z

    .line 94
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public fitToWidth(Z)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->fitToWidth:Z

    .line 105
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 106
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->hbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    .line 116
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 117
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hmax(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->hmax:D

    .line 127
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 128
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hmin(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->hmin:D

    .line 138
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 139
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public hvalue(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->hvalue:D

    .line 149
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 150
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public pannable(Z)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->pannable:Z

    .line 160
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 161
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefViewportHeight(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->prefViewportHeight:D

    .line 171
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 172
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public prefViewportWidth(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->prefViewportWidth:D

    .line 182
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 183
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->vbarPolicy:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    .line 193
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 194
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public viewportBounds(Ljavafx/geometry/Bounds;)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Bounds;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Bounds;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ScrollPaneBuilder;->viewportBounds:Ljavafx/geometry/Bounds;

    .line 204
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 205
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vmax(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->vmax:D

    .line 215
    move-object v3, v0

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 216
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vmin(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->vmin:D

    .line 226
    move-object v3, v0

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 227
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

.method public vvalue(D)Ljavafx/scene/control/ScrollPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ScrollPaneBuilder;->vvalue:D

    .line 237
    move-object v3, v0

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Ljavafx/scene/control/ScrollPaneBuilder;->__set(I)V

    .line 238
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPaneBuilder;, "Ljavafx/scene/control/ScrollPaneBuilder<TB;>;"
    return-object v0
.end method

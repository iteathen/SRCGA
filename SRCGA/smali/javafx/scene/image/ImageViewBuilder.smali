.class public Ljavafx/scene/image/ImageViewBuilder;
.super Ljavafx/scene/NodeBuilder;
.source "ImageViewBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/image/ImageViewBuilder",
        "<TB;>;>",
        "Ljavafx/scene/NodeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/image/ImageView;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private fitHeight:D

.field private fitWidth:D

.field private image:Ljavafx/scene/image/Image;

.field private preserveRatio:Z

.field private smooth:Z

.field private viewport:Ljavafx/geometry/Rectangle2D;

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/NodeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/image/ImageViewBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/image/ImageViewBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/image/ImageViewBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/ImageViewBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/image/ImageViewBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/ImageViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/image/ImageView;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/image/ImageView;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/NodeBuilder;->applyTo(Ljavafx/scene/Node;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/image/ImageViewBuilder;->__set:I

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

    .line 66
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/image/ImageViewBuilder;->fitHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/image/ImageView;->setFitHeight(D)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/image/ImageViewBuilder;->fitWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/image/ImageView;->setFitWidth(D)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/image/ImageViewBuilder;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v5, v6}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/image/ImageViewBuilder;->preserveRatio:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/image/ImageView;->setPreserveRatio(Z)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/image/ImageViewBuilder;->smooth:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/image/ImageView;->setSmooth(Z)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/image/ImageViewBuilder;->viewport:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v5, v6}, Ljavafx/scene/image/ImageView;->setViewport(Ljavafx/geometry/Rectangle2D;)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/image/ImageViewBuilder;->x:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/image/ImageView;->setX(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/image/ImageViewBuilder;->y:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/image/ImageView;->setY(D)V

    goto :goto_1

    .line 67
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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageViewBuilder;->build()Ljavafx/scene/image/ImageView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/image/ImageView;
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/image/ImageView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/image/ImageView;-><init>()V

    move-object v1, v2

    .line 162
    .local v1, "x":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageViewBuilder;->applyTo(Ljavafx/scene/image/ImageView;)V

    .line 163
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public fitHeight(D)Ljavafx/scene/image/ImageViewBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/image/ImageViewBuilder;->fitHeight:D

    .line 76
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 77
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public fitWidth(D)Ljavafx/scene/image/ImageViewBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/image/ImageViewBuilder;->fitWidth:D

    .line 87
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public image(Ljavafx/scene/image/Image;)Ljavafx/scene/image/ImageViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/Image;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageViewBuilder;->image:Ljavafx/scene/image/Image;

    .line 98
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 99
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public preserveRatio(Z)Ljavafx/scene/image/ImageViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/image/ImageViewBuilder;->preserveRatio:Z

    .line 109
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 110
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public smooth(Z)Ljavafx/scene/image/ImageViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/image/ImageViewBuilder;->smooth:Z

    .line 120
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 121
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public viewport(Ljavafx/geometry/Rectangle2D;)Ljavafx/scene/image/ImageViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Rectangle2D;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Rectangle2D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageViewBuilder;->viewport:Ljavafx/geometry/Rectangle2D;

    .line 131
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 132
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/image/ImageViewBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/image/ImageViewBuilder;->x:D

    .line 142
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 143
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/image/ImageViewBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/image/ImageViewBuilder;->y:D

    .line 153
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageViewBuilder;->__set(I)V

    .line 154
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageViewBuilder;, "Ljavafx/scene/image/ImageViewBuilder<TB;>;"
    return-object v0
.end method

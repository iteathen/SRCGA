.class public Ljavafx/scene/effect/PerspectiveTransformBuilder;
.super Ljava/lang/Object;
.source "PerspectiveTransformBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/PerspectiveTransformBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/PerspectiveTransform;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private input:Ljavafx/scene/effect/Effect;

.field private llx:D

.field private lly:D

.field private lrx:D

.field private lry:D

.field private ulx:D

.field private uly:D

.field private urx:D

.field private ury:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/PerspectiveTransformBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/PerspectiveTransformBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/PerspectiveTransformBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/PerspectiveTransform;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set:I

    move v3, v5

    .line 52
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 53
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 54
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 55
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 66
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/PerspectiveTransform;->setInput(Ljavafx/scene/effect/Effect;)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->llx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setLlx(D)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lly:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setLly(D)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lrx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setLrx(D)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lry:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setLry(D)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->ulx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setUlx(D)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->uly:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setUly(D)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->urx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setUrx(D)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/effect/PerspectiveTransformBuilder;->ury:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/PerspectiveTransform;->setUry(D)V

    goto :goto_1

    .line 67
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 55
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

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->build()Ljavafx/scene/effect/PerspectiveTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/PerspectiveTransform;
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/PerspectiveTransform;-><init>()V

    move-object v1, v2

    .line 173
    .local v1, "x":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->applyTo(Ljavafx/scene/effect/PerspectiveTransform;)V

    .line 174
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/PerspectiveTransformBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public llx(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->llx:D

    .line 87
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public lly(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lly:D

    .line 98
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 99
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public lrx(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lrx:D

    .line 109
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 110
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public lry(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->lry:D

    .line 120
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 121
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public ulx(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->ulx:D

    .line 131
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 132
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public uly(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->uly:D

    .line 142
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 143
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public urx(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->urx:D

    .line 153
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 154
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

.method public ury(D)Ljavafx/scene/effect/PerspectiveTransformBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/PerspectiveTransformBuilder;->ury:D

    .line 164
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransformBuilder;->__set(I)V

    .line 165
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransformBuilder;, "Ljavafx/scene/effect/PerspectiveTransformBuilder<TB;>;"
    return-object v0
.end method

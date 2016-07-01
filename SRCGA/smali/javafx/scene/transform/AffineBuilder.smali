.class public Ljavafx/scene/transform/AffineBuilder;
.super Ljava/lang/Object;
.source "AffineBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/transform/AffineBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/transform/Affine;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private mxx:D

.field private mxy:D

.field private mxz:D

.field private myx:D

.field private myy:D

.field private myz:D

.field private mzx:D

.field private mzy:D

.field private mzz:D

.field private tx:D

.field private ty:D

.field private tz:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
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

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/transform/AffineBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/transform/AffineBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/transform/AffineBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/transform/AffineBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/transform/AffineBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/transform/AffineBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/transform/Affine;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/transform/Affine;
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/transform/AffineBuilder;->__set:I

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

    .line 69
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mxx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mxy:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mxz:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->myx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->myy:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->myz:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mzx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mzy:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->mzz:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->tx:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->ty:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/AffineBuilder;->tz:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTz(D)V

    goto :goto_1

    .line 70
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/AffineBuilder;->build()Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/transform/Affine;
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/transform/Affine;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/transform/Affine;-><init>()V

    move-object v1, v2

    .line 209
    .local v1, "x":Ljavafx/scene/transform/Affine;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/AffineBuilder;->applyTo(Ljavafx/scene/transform/Affine;)V

    .line 210
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mxx(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mxx:D

    .line 79
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 80
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mxy(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mxy:D

    .line 90
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 91
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mxz(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mxz:D

    .line 101
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 102
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public myx(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->myx:D

    .line 112
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 113
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public myy(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->myy:D

    .line 123
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 124
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public myz(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->myz:D

    .line 134
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 135
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mzx(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mzx:D

    .line 145
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 146
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mzy(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mzy:D

    .line 156
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 157
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public mzz(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->mzz:D

    .line 167
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 168
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public tx(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->tx:D

    .line 178
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 179
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public ty(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->ty:D

    .line 189
    move-object v3, v0

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 190
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.method public tz(D)Ljavafx/scene/transform/AffineBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/AffineBuilder;->tz:D

    .line 200
    move-object v3, v0

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljavafx/scene/transform/AffineBuilder;->__set(I)V

    .line 201
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/AffineBuilder;, "Ljavafx/scene/transform/AffineBuilder<TB;>;"
    return-object v0
.end method

.class public Ljavafx/scene/effect/BoxBlurBuilder;
.super Ljava/lang/Object;
.source "BoxBlurBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/BoxBlurBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/BoxBlur;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private height:D

.field private input:Ljavafx/scene/effect/Effect;

.field private iterations:I

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/BoxBlurBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/BoxBlurBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/BoxBlurBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/BoxBlurBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/BoxBlur;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/BoxBlur;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->height:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/BoxBlur;->setHeight(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/BoxBlur;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->iterations:I

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/BoxBlur;->setIterations(I)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->width:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/BoxBlur;->setWidth(D)V

    .line 53
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/BoxBlurBuilder;->build()Ljavafx/scene/effect/BoxBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/BoxBlur;
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/BoxBlur;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/BoxBlur;-><init>()V

    move-object v1, v2

    .line 104
    .local v1, "x":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/BoxBlurBuilder;->applyTo(Ljavafx/scene/effect/BoxBlur;)V

    .line 105
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/effect/BoxBlurBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/BoxBlurBuilder;->height:D

    .line 62
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/BoxBlurBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/BoxBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

.method public iterations(I)Ljavafx/scene/effect/BoxBlurBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/effect/BoxBlurBuilder;->iterations:I

    .line 84
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/effect/BoxBlurBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/BoxBlurBuilder;->width:D

    .line 95
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/effect/BoxBlurBuilder;->__set:I

    .line 96
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlurBuilder;, "Ljavafx/scene/effect/BoxBlurBuilder<TB;>;"
    return-object v0
.end method

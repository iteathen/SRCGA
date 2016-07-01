.class public Ljavafx/scene/effect/ColorAdjustBuilder;
.super Ljava/lang/Object;
.source "ColorAdjustBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/ColorAdjustBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/ColorAdjust;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private brightness:D

.field private contrast:D

.field private hue:D

.field private input:Ljavafx/scene/effect/Effect;

.field private saturation:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/ColorAdjustBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/ColorAdjustBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/ColorAdjustBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/ColorAdjust;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/ColorAdjust;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->brightness:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorAdjust;->setBrightness(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->contrast:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorAdjust;->setContrast(D)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->hue:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorAdjust;->setHue(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/ColorAdjust;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->saturation:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorAdjust;->setSaturation(D)V

    .line 54
    :cond_4
    return-void
.end method

.method public brightness(D)Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->brightness:D

    .line 63
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ColorAdjustBuilder;->build()Ljavafx/scene/effect/ColorAdjust;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/ColorAdjust;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/ColorAdjust;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/ColorAdjust;-><init>()V

    move-object v1, v2

    .line 116
    .local v1, "x":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ColorAdjustBuilder;->applyTo(Ljavafx/scene/effect/ColorAdjust;)V

    .line 117
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public contrast(D)Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->contrast:D

    .line 74
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    .line 75
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public hue(D)Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->hue:D

    .line 85
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    .line 86
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ColorAdjustBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 96
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.method public saturation(D)Ljavafx/scene/effect/ColorAdjustBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->saturation:D

    .line 107
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/effect/ColorAdjustBuilder;->__set:I

    .line 108
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjustBuilder;, "Ljavafx/scene/effect/ColorAdjustBuilder<TB;>;"
    return-object v0
.end method

.class public Ljavafx/scene/effect/ShadowBuilder;
.super Ljava/lang/Object;
.source "ShadowBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/ShadowBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/Shadow;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private blurType:Ljavafx/scene/effect/BlurType;

.field private color:Ljavafx/scene/paint/Color;

.field private height:D

.field private input:Ljavafx/scene/effect/Effect;

.field private radius:D

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/ShadowBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/ShadowBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/ShadowBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/ShadowBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/Shadow;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Shadow;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ShadowBuilder;->blurType:Ljavafx/scene/effect/BlurType;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Shadow;->setBlurType(Ljavafx/scene/effect/BlurType;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ShadowBuilder;->color:Ljavafx/scene/paint/Color;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Shadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ShadowBuilder;->height:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setHeight(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ShadowBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Shadow;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ShadowBuilder;->radius:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 54
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ShadowBuilder;->width:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setWidth(D)V

    .line 55
    :cond_5
    return-void
.end method

.method public blurType(Ljavafx/scene/effect/BlurType;)Ljavafx/scene/effect/ShadowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/BlurType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/BlurType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ShadowBuilder;->blurType:Ljavafx/scene/effect/BlurType;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ShadowBuilder;->build()Ljavafx/scene/effect/Shadow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/Shadow;
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/Shadow;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/Shadow;-><init>()V

    move-object v1, v2

    .line 128
    .local v1, "x":Ljavafx/scene/effect/Shadow;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ShadowBuilder;->applyTo(Ljavafx/scene/effect/Shadow;)V

    .line 129
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public color(Ljavafx/scene/paint/Color;)Ljavafx/scene/effect/ShadowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Color;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ShadowBuilder;->color:Ljavafx/scene/paint/Color;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/effect/ShadowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ShadowBuilder;->height:D

    .line 86
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 87
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/ShadowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ShadowBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 97
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public radius(D)Ljavafx/scene/effect/ShadowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ShadowBuilder;->radius:D

    .line 108
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 109
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/effect/ShadowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ShadowBuilder;->width:D

    .line 119
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/effect/ShadowBuilder;->__set:I

    .line 120
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ShadowBuilder;, "Ljavafx/scene/effect/ShadowBuilder<TB;>;"
    return-object v0
.end method

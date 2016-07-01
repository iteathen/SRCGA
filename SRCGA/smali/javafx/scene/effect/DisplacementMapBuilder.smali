.class public Ljavafx/scene/effect/DisplacementMapBuilder;
.super Ljava/lang/Object;
.source "DisplacementMapBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/DisplacementMapBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/DisplacementMap;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private input:Ljavafx/scene/effect/Effect;

.field private mapData:Ljavafx/scene/effect/FloatMap;

.field private offsetX:D

.field private offsetY:D

.field private scaleX:D

.field private scaleY:D

.field private wrap:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/DisplacementMapBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/DisplacementMapBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/DisplacementMapBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/DisplacementMap;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/DisplacementMap;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/DisplacementMap;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->mapData:Ljavafx/scene/effect/FloatMap;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/DisplacementMap;->setMapData(Ljavafx/scene/effect/FloatMap;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->offsetX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/DisplacementMap;->setOffsetX(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->offsetY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/DisplacementMap;->setOffsetY(D)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->scaleX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/DisplacementMap;->setScaleX(D)V

    .line 54
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->scaleY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/DisplacementMap;->setScaleY(D)V

    .line 55
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->wrap:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/DisplacementMap;->setWrap(Z)V

    .line 56
    :cond_6
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/DisplacementMapBuilder;->build()Ljavafx/scene/effect/DisplacementMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/DisplacementMap;
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/DisplacementMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/DisplacementMap;-><init>()V

    move-object v1, v2

    .line 140
    .local v1, "x":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/DisplacementMapBuilder;->applyTo(Ljavafx/scene/effect/DisplacementMap;)V

    .line 141
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 65
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 66
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public mapData(Ljavafx/scene/effect/FloatMap;)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/FloatMap;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->mapData:Ljavafx/scene/effect/FloatMap;

    .line 76
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public offsetX(D)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->offsetX:D

    .line 87
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public offsetY(D)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->offsetY:D

    .line 98
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 99
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public scaleX(D)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->scaleX:D

    .line 109
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 110
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public scaleY(D)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->scaleY:D

    .line 120
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 121
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

.method public wrap(Z)Ljavafx/scene/effect/DisplacementMapBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->wrap:Z

    .line 131
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ljavafx/scene/effect/DisplacementMapBuilder;->__set:I

    .line 132
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMapBuilder;, "Ljavafx/scene/effect/DisplacementMapBuilder<TB;>;"
    return-object v0
.end method

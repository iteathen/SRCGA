.class public Ljavafx/scene/transform/ScaleBuilder;
.super Ljava/lang/Object;
.source "ScaleBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/transform/ScaleBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/transform/Scale;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private pivotX:D

.field private pivotY:D

.field private pivotZ:D

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/transform/ScaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/transform/ScaleBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/transform/ScaleBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/transform/ScaleBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/transform/Scale;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/transform/Scale;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->pivotX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setPivotX(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->pivotY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setPivotY(D)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->pivotZ:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setPivotZ(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setX(D)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setY(D)V

    .line 54
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ScaleBuilder;->z:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Scale;->setZ(D)V

    .line 55
    :cond_5
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/ScaleBuilder;->build()Ljavafx/scene/transform/Scale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/transform/Scale;
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/transform/Scale;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/transform/Scale;-><init>()V

    move-object v1, v2

    .line 128
    .local v1, "x":Ljavafx/scene/transform/Scale;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/ScaleBuilder;->applyTo(Ljavafx/scene/transform/Scale;)V

    .line 129
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public pivotX(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->pivotX:D

    .line 64
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 65
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public pivotY(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->pivotY:D

    .line 75
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 76
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public pivotZ(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->pivotZ:D

    .line 86
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 87
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->x:D

    .line 97
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 98
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->y:D

    .line 108
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 109
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

.method public z(D)Ljavafx/scene/transform/ScaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ScaleBuilder;->z:D

    .line 119
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/transform/ScaleBuilder;->__set:I

    .line 120
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ScaleBuilder;, "Ljavafx/scene/transform/ScaleBuilder<TB;>;"
    return-object v0
.end method

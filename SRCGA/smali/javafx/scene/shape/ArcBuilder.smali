.class public Ljavafx/scene/shape/ArcBuilder;
.super Ljavafx/scene/shape/ShapeBuilder;
.source "ArcBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/ArcBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/Arc;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private centerX:D

.field private centerY:D

.field private length:D

.field private radiusX:D

.field private radiusY:D

.field private startAngle:D

.field private type:Ljavafx/scene/shape/ArcType;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/ShapeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/ArcBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/ArcBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/ArcBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/ArcBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/Arc;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/Arc;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->applyTo(Ljavafx/scene/shape/Shape;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->centerX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setCenterX(D)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->centerY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setCenterY(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->length:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setLength(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->radiusX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setRadiusX(D)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->radiusY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setRadiusY(D)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcBuilder;->startAngle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setStartAngle(D)V

    .line 56
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/ArcBuilder;->type:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Arc;->setType(Ljavafx/scene/shape/ArcType;)V

    .line 57
    :cond_6
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/ArcBuilder;->build()Ljavafx/scene/shape/Arc;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/Arc;
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/Arc;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/Arc;-><init>()V

    move-object v1, v2

    .line 141
    .local v1, "x":Ljavafx/scene/shape/Arc;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/ArcBuilder;->applyTo(Ljavafx/scene/shape/Arc;)V

    .line 142
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public centerX(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->centerX:D

    .line 66
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 67
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public centerY(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->centerY:D

    .line 77
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 78
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public length(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->length:D

    .line 88
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public radiusX(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->radiusX:D

    .line 99
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 100
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public radiusY(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->radiusY:D

    .line 110
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 111
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public startAngle(D)Ljavafx/scene/shape/ArcBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcBuilder;->startAngle:D

    .line 121
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 122
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

.method public type(Ljavafx/scene/shape/ArcType;)Ljavafx/scene/shape/ArcBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/ArcType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/ArcType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ArcBuilder;->type:Ljavafx/scene/shape/ArcType;

    .line 132
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/shape/ArcBuilder;->__set:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ljavafx/scene/shape/ArcBuilder;->__set:I

    .line 133
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ArcBuilder;, "Ljavafx/scene/shape/ArcBuilder<TB;>;"
    return-object v0
.end method

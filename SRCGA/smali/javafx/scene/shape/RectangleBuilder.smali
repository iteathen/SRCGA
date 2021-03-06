.class public Ljavafx/scene/shape/RectangleBuilder;
.super Ljavafx/scene/shape/ShapeBuilder;
.source "RectangleBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/RectangleBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/Rectangle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private arcHeight:D

.field private arcWidth:D

.field private height:D

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/ShapeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/RectangleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/RectangleBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/RectangleBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/RectangleBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/Rectangle;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/Rectangle;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->applyTo(Ljavafx/scene/shape/Shape;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->arcHeight:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setArcHeight(D)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->arcWidth:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setArcWidth(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->height:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->width:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/RectangleBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 56
    :cond_5
    return-void
.end method

.method public arcHeight(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->arcHeight:D

    .line 65
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 66
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public arcWidth(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->arcWidth:D

    .line 76
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 77
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/RectangleBuilder;->build()Ljavafx/scene/shape/Rectangle;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/Rectangle;
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/Rectangle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/Rectangle;-><init>()V

    move-object v1, v2

    .line 129
    .local v1, "x":Ljavafx/scene/shape/Rectangle;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/RectangleBuilder;->applyTo(Ljavafx/scene/shape/Rectangle;)V

    .line 130
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->height:D

    .line 87
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->width:D

    .line 98
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 99
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->x:D

    .line 109
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 110
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/shape/RectangleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/RectangleBuilder;->y:D

    .line 120
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/shape/RectangleBuilder;->__set:I

    .line 121
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/RectangleBuilder;, "Ljavafx/scene/shape/RectangleBuilder<TB;>;"
    return-object v0
.end method

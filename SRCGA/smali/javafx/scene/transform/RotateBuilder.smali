.class public Ljavafx/scene/transform/RotateBuilder;
.super Ljava/lang/Object;
.source "RotateBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/transform/RotateBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/transform/Rotate;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private angle:D

.field private axis:Ljavafx/geometry/Point3D;

.field private pivotX:D

.field private pivotY:D

.field private pivotZ:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/transform/RotateBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/transform/RotateBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/transform/RotateBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/transform/RotateBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public angle(D)Ljavafx/scene/transform/RotateBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/RotateBuilder;->angle:D

    .line 63
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/RotateBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/transform/Rotate;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/transform/Rotate;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/RotateBuilder;->angle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Rotate;->setAngle(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/RotateBuilder;->axis:Ljavafx/geometry/Point3D;

    invoke-virtual {v3, v4}, Ljavafx/scene/transform/Rotate;->setAxis(Ljavafx/geometry/Point3D;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/RotateBuilder;->pivotX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Rotate;->setPivotX(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/RotateBuilder;->pivotY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Rotate;->setPivotY(D)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/RotateBuilder;->pivotZ:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Rotate;->setPivotZ(D)V

    .line 54
    :cond_4
    return-void
.end method

.method public axis(Ljavafx/geometry/Point3D;)Ljavafx/scene/transform/RotateBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Point3D;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Point3D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/RotateBuilder;->axis:Ljavafx/geometry/Point3D;

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/transform/RotateBuilder;->__set:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/RotateBuilder;->build()Ljavafx/scene/transform/Rotate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/transform/Rotate;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/transform/Rotate;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/transform/Rotate;-><init>()V

    move-object v1, v2

    .line 116
    .local v1, "x":Ljavafx/scene/transform/Rotate;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/RotateBuilder;->applyTo(Ljavafx/scene/transform/Rotate;)V

    .line 117
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public pivotX(D)Ljavafx/scene/transform/RotateBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/RotateBuilder;->pivotX:D

    .line 85
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/RotateBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    .line 86
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public pivotY(D)Ljavafx/scene/transform/RotateBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/RotateBuilder;->pivotY:D

    .line 96
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/RotateBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

.method public pivotZ(D)Ljavafx/scene/transform/RotateBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/RotateBuilder;->pivotZ:D

    .line 107
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/RotateBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/transform/RotateBuilder;->__set:I

    .line 108
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/RotateBuilder;, "Ljavafx/scene/transform/RotateBuilder<TB;>;"
    return-object v0
.end method

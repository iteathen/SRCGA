.class public Ljavafx/scene/transform/ShearBuilder;
.super Ljava/lang/Object;
.source "ShearBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/transform/ShearBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/transform/Shear;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private pivotX:D

.field private pivotY:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/transform/ShearBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/transform/ShearBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/transform/ShearBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/transform/ShearBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/transform/Shear;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/transform/Shear;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/transform/ShearBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ShearBuilder;->pivotX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Shear;->setPivotX(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ShearBuilder;->pivotY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Shear;->setPivotY(D)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ShearBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Shear;->setX(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/transform/ShearBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Shear;->setY(D)V

    .line 53
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/ShearBuilder;->build()Ljavafx/scene/transform/Shear;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/transform/Shear;
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/transform/Shear;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/transform/Shear;-><init>()V

    move-object v1, v2

    .line 104
    .local v1, "x":Ljavafx/scene/transform/Shear;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/ShearBuilder;->applyTo(Ljavafx/scene/transform/Shear;)V

    .line 105
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

.method public pivotX(D)Ljavafx/scene/transform/ShearBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ShearBuilder;->pivotX:D

    .line 62
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ShearBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/transform/ShearBuilder;->__set:I

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

.method public pivotY(D)Ljavafx/scene/transform/ShearBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ShearBuilder;->pivotY:D

    .line 73
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ShearBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/transform/ShearBuilder;->__set:I

    .line 74
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/transform/ShearBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ShearBuilder;->x:D

    .line 84
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ShearBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/ShearBuilder;->__set:I

    .line 85
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/transform/ShearBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/transform/ShearBuilder;->y:D

    .line 95
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/transform/ShearBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/transform/ShearBuilder;->__set:I

    .line 96
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/ShearBuilder;, "Ljavafx/scene/transform/ShearBuilder<TB;>;"
    return-object v0
.end method

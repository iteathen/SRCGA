.class public Ljavafx/scene/shape/QuadCurveToBuilder;
.super Ljavafx/scene/shape/PathElementBuilder;
.source "QuadCurveToBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/QuadCurveToBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/PathElementBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/QuadCurveTo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private controlX:D

.field private controlY:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElementBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/QuadCurveToBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/QuadCurveToBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/QuadCurveToBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/QuadCurveToBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/QuadCurveTo;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/QuadCurveTo;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/shape/PathElementBuilder;->applyTo(Ljavafx/scene/shape/PathElement;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->controlX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/QuadCurveTo;->setControlX(D)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->controlY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/QuadCurveTo;->setControlY(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/QuadCurveTo;->setX(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/QuadCurveTo;->setY(D)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurveToBuilder;->build()Ljavafx/scene/shape/QuadCurveTo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/QuadCurveTo;
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/QuadCurveTo;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/QuadCurveTo;-><init>()V

    move-object v1, v2

    .line 105
    .local v1, "x":Ljavafx/scene/shape/QuadCurveTo;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/QuadCurveToBuilder;->applyTo(Ljavafx/scene/shape/QuadCurveTo;)V

    .line 106
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

.method public controlX(D)Ljavafx/scene/shape/QuadCurveToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->controlX:D

    .line 63
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

.method public controlY(D)Ljavafx/scene/shape/QuadCurveToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->controlY:D

    .line 74
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    .line 75
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/shape/QuadCurveToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->x:D

    .line 85
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    .line 86
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/shape/QuadCurveToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->y:D

    .line 96
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/shape/QuadCurveToBuilder;->__set:I

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveToBuilder;, "Ljavafx/scene/shape/QuadCurveToBuilder<TB;>;"
    return-object v0
.end method

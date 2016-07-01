.class public Ljavafx/scene/shape/ArcToBuilder;
.super Ljavafx/scene/shape/PathElementBuilder;
.source "ArcToBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/ArcToBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/PathElementBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/ArcTo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private XAxisRotation:D

.field private __set:I

.field private largeArcFlag:Z

.field private radiusX:D

.field private radiusY:D

.field private sweepFlag:Z

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElementBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/ArcToBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/ArcToBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/ArcToBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/ArcToBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public XAxisRotation(D)Ljavafx/scene/shape/ArcToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcToBuilder;->XAxisRotation:D

    .line 121
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 122
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/shape/ArcTo;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/ArcTo;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/shape/PathElementBuilder;->applyTo(Ljavafx/scene/shape/PathElement;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/shape/ArcToBuilder;->largeArcFlag:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/ArcTo;->setLargeArcFlag(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcToBuilder;->radiusX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/ArcTo;->setRadiusX(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcToBuilder;->radiusY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/ArcTo;->setRadiusY(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/shape/ArcToBuilder;->sweepFlag:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/ArcTo;->setSweepFlag(Z)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcToBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/ArcTo;->setX(D)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcToBuilder;->XAxisRotation:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/ArcTo;->setXAxisRotation(D)V

    .line 56
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/shape/ArcToBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/ArcTo;->setY(D)V

    .line 57
    :cond_6
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/ArcToBuilder;->build()Ljavafx/scene/shape/ArcTo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/ArcTo;
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/ArcTo;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/ArcTo;-><init>()V

    move-object v1, v2

    .line 141
    .local v1, "x":Ljavafx/scene/shape/ArcTo;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/ArcToBuilder;->applyTo(Ljavafx/scene/shape/ArcTo;)V

    .line 142
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public largeArcFlag(Z)Ljavafx/scene/shape/ArcToBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/ArcToBuilder;->largeArcFlag:Z

    .line 66
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 67
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public radiusX(D)Ljavafx/scene/shape/ArcToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcToBuilder;->radiusX:D

    .line 77
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 78
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public radiusY(D)Ljavafx/scene/shape/ArcToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcToBuilder;->radiusY:D

    .line 88
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public sweepFlag(Z)Ljavafx/scene/shape/ArcToBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/ArcToBuilder;->sweepFlag:Z

    .line 99
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/shape/ArcToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcToBuilder;->x:D

    .line 110
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 111
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/shape/ArcToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ArcToBuilder;->y:D

    .line 132
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    const/16 v5, 0x40

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Ljavafx/scene/shape/ArcToBuilder;->__set:I

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ArcToBuilder;, "Ljavafx/scene/shape/ArcToBuilder<TB;>;"
    return-object v0
.end method

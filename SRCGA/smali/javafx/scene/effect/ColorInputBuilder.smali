.class public Ljavafx/scene/effect/ColorInputBuilder;
.super Ljava/lang/Object;
.source "ColorInputBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/ColorInputBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/ColorInput;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private height:D

.field private paint:Ljavafx/scene/paint/Paint;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/ColorInputBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/ColorInputBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/ColorInputBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/ColorInputBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/ColorInput;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/ColorInput;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->height:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorInput;->setHeight(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->paint:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/ColorInput;->setPaint(Ljavafx/scene/paint/Paint;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->width:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorInput;->setWidth(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorInput;->setX(D)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ColorInput;->setY(D)V

    .line 54
    :cond_4
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ColorInputBuilder;->build()Ljavafx/scene/effect/ColorInput;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/ColorInput;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/ColorInput;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/ColorInput;-><init>()V

    move-object v1, v2

    .line 116
    .local v1, "x":Ljavafx/scene/effect/ColorInput;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ColorInputBuilder;->applyTo(Ljavafx/scene/effect/ColorInput;)V

    .line 117
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/effect/ColorInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->height:D

    .line 63
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public paint(Ljavafx/scene/paint/Paint;)Ljavafx/scene/effect/ColorInputBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ColorInputBuilder;->paint:Ljavafx/scene/paint/Paint;

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/effect/ColorInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->width:D

    .line 85
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    .line 86
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/effect/ColorInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->x:D

    .line 96
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/effect/ColorInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->y:D

    .line 107
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/effect/ColorInputBuilder;->__set:I

    .line 108
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ColorInputBuilder;, "Ljavafx/scene/effect/ColorInputBuilder<TB;>;"
    return-object v0
.end method

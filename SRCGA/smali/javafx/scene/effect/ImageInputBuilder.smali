.class public Ljavafx/scene/effect/ImageInputBuilder;
.super Ljava/lang/Object;
.source "ImageInputBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/ImageInputBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/ImageInput;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private source:Ljavafx/scene/image/Image;

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/ImageInputBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/ImageInputBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/ImageInputBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/ImageInputBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/ImageInput;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/ImageInput;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ImageInputBuilder;->source:Ljavafx/scene/image/Image;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/ImageInput;->setSource(Ljavafx/scene/image/Image;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ImageInputBuilder;->x:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ImageInput;->setX(D)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/ImageInputBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/ImageInput;->setY(D)V

    .line 52
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ImageInputBuilder;->build()Ljavafx/scene/effect/ImageInput;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/ImageInput;
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/ImageInput;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/ImageInput;-><init>()V

    move-object v1, v2

    .line 92
    .local v1, "x":Ljavafx/scene/effect/ImageInput;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ImageInputBuilder;->applyTo(Ljavafx/scene/effect/ImageInput;)V

    .line 93
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    return-object v0
.end method

.method public source(Ljavafx/scene/image/Image;)Ljavafx/scene/effect/ImageInputBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/Image;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ImageInputBuilder;->source:Ljavafx/scene/image/Image;

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/effect/ImageInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ImageInputBuilder;->x:D

    .line 72
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/effect/ImageInputBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/ImageInputBuilder;->y:D

    .line 83
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/ImageInputBuilder;->__set:I

    .line 84
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/ImageInputBuilder;, "Ljavafx/scene/effect/ImageInputBuilder<TB;>;"
    return-object v0
.end method

.class public Ljavafx/scene/effect/FloatMapBuilder;
.super Ljava/lang/Object;
.source "FloatMapBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/FloatMapBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/FloatMap;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private height:I

.field private width:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/FloatMapBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/FloatMapBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/FloatMapBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMapBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/FloatMap;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/FloatMap;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/FloatMapBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/effect/FloatMapBuilder;->height:I

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/FloatMap;->setHeight(I)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/effect/FloatMapBuilder;->width:I

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/FloatMap;->setWidth(I)V

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/FloatMapBuilder;->build()Ljavafx/scene/effect/FloatMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/FloatMap;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/FloatMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/FloatMap;-><init>()V

    move-object v1, v2

    .line 80
    .local v1, "x":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/FloatMapBuilder;->applyTo(Ljavafx/scene/effect/FloatMap;)V

    .line 81
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    return-object v0
.end method

.method public height(I)Ljavafx/scene/effect/FloatMapBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/effect/FloatMapBuilder;->height:I

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/FloatMapBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/effect/FloatMapBuilder;->__set:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    return-object v0
.end method

.method public width(I)Ljavafx/scene/effect/FloatMapBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/effect/FloatMapBuilder;->width:I

    .line 71
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/FloatMapBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/FloatMapBuilder;->__set:I

    .line 72
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/FloatMapBuilder;, "Ljavafx/scene/effect/FloatMapBuilder<TB;>;"
    return-object v0
.end method

.class public Ljavafx/scene/effect/GaussianBlurBuilder;
.super Ljava/lang/Object;
.source "GaussianBlurBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/GaussianBlurBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/GaussianBlur;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private input:Ljavafx/scene/effect/Effect;

.field private radius:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/GaussianBlurBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/GaussianBlurBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/GaussianBlurBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/GaussianBlurBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/GaussianBlur;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/GaussianBlur;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/GaussianBlurBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/GaussianBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/GaussianBlur;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/GaussianBlurBuilder;->radius:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/GaussianBlur;->setRadius(D)V

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/GaussianBlurBuilder;->build()Ljavafx/scene/effect/GaussianBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/GaussianBlur;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/GaussianBlur;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/GaussianBlur;-><init>()V

    move-object v1, v2

    .line 80
    .local v1, "x":Ljavafx/scene/effect/GaussianBlur;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/GaussianBlurBuilder;->applyTo(Ljavafx/scene/effect/GaussianBlur;)V

    .line 81
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/GaussianBlurBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/GaussianBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/GaussianBlurBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/effect/GaussianBlurBuilder;->__set:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    return-object v0
.end method

.method public radius(D)Ljavafx/scene/effect/GaussianBlurBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/GaussianBlurBuilder;->radius:D

    .line 71
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/GaussianBlurBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/effect/GaussianBlurBuilder;->__set:I

    .line 72
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlurBuilder;, "Ljavafx/scene/effect/GaussianBlurBuilder<TB;>;"
    return-object v0
.end method

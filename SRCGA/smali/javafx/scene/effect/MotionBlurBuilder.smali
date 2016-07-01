.class public Ljavafx/scene/effect/MotionBlurBuilder;
.super Ljava/lang/Object;
.source "MotionBlurBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/MotionBlurBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/effect/MotionBlur;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private angle:D

.field private input:Ljavafx/scene/effect/Effect;

.field private radius:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/effect/MotionBlurBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/effect/MotionBlurBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/effect/MotionBlurBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/effect/MotionBlurBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public angle(D)Ljavafx/scene/effect/MotionBlurBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/MotionBlurBuilder;->angle:D

    .line 61
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    .line 62
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/effect/MotionBlur;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/MotionBlur;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/MotionBlurBuilder;->angle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/MotionBlur;->setAngle(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/MotionBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/MotionBlur;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/effect/MotionBlurBuilder;->radius:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/MotionBlur;->setRadius(D)V

    .line 52
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/MotionBlurBuilder;->build()Ljavafx/scene/effect/MotionBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/effect/MotionBlur;
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/effect/MotionBlur;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/effect/MotionBlur;-><init>()V

    move-object v1, v2

    .line 92
    .local v1, "x":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/MotionBlurBuilder;->applyTo(Ljavafx/scene/effect/MotionBlur;)V

    .line 93
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    return-object v0
.end method

.method public input(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/MotionBlurBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/MotionBlurBuilder;->input:Ljavafx/scene/effect/Effect;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    return-object v0
.end method

.method public radius(D)Ljavafx/scene/effect/MotionBlurBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/effect/MotionBlurBuilder;->radius:D

    .line 83
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/effect/MotionBlurBuilder;->__set:I

    .line 84
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlurBuilder;, "Ljavafx/scene/effect/MotionBlurBuilder<TB;>;"
    return-object v0
.end method

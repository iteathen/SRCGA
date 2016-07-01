.class public abstract Ljavafx/scene/effect/LightBuilder;
.super Ljava/lang/Object;
.source "LightBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/effect/LightBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private color:Ljavafx/scene/paint/Color;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/LightBuilder;, "Ljavafx/scene/effect/LightBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/effect/Light;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/LightBuilder;, "Ljavafx/scene/effect/LightBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Light;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/effect/LightBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/LightBuilder;->color:Ljavafx/scene/paint/Color;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Light;->setColor(Ljavafx/scene/paint/Color;)V

    .line 44
    :cond_0
    return-void
.end method

.method public color(Ljavafx/scene/paint/Color;)Ljavafx/scene/effect/LightBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Color;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/LightBuilder;, "Ljavafx/scene/effect/LightBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/LightBuilder;->color:Ljavafx/scene/paint/Color;

    .line 53
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/effect/LightBuilder;->__set:Z

    .line 54
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/LightBuilder;, "Ljavafx/scene/effect/LightBuilder<TB;>;"
    return-object v0
.end method

.class public Ljavafx/scene/shape/VLineToBuilder;
.super Ljavafx/scene/shape/PathElementBuilder;
.source "VLineToBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/VLineToBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/PathElementBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/VLineTo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElementBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/VLineToBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/VLineToBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/VLineToBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/VLineToBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/VLineTo;)V
    .locals 6

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/shape/VLineTo;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Ljavafx/scene/shape/PathElementBuilder;->applyTo(Ljavafx/scene/shape/PathElement;)V

    .line 49
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/shape/VLineToBuilder;->__set:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/shape/VLineToBuilder;->y:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/VLineTo;->setY(D)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/VLineToBuilder;->build()Ljavafx/scene/shape/VLineTo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/VLineTo;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/VLineTo;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/VLineTo;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/shape/VLineTo;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/VLineToBuilder;->applyTo(Ljavafx/scene/shape/VLineTo;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/shape/VLineToBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/VLineToBuilder;->y:D

    .line 59
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/shape/VLineToBuilder;->__set:Z

    .line 60
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/VLineToBuilder;, "Ljavafx/scene/shape/VLineToBuilder<TB;>;"
    return-object v0
.end method

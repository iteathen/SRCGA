.class public Ljavafx/scene/canvas/CanvasBuilder;
.super Ljavafx/scene/NodeBuilder;
.source "CanvasBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/canvas/CanvasBuilder",
        "<TB;>;>",
        "Ljavafx/scene/NodeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/canvas/Canvas;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private height:D

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/NodeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/canvas/CanvasBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/canvas/CanvasBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/canvas/CanvasBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/canvas/CanvasBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/canvas/Canvas;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/canvas/Canvas;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/NodeBuilder;->applyTo(Ljavafx/scene/Node;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/canvas/CanvasBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/CanvasBuilder;->height:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/Canvas;->setHeight(D)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/CanvasBuilder;->width:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/Canvas;->setWidth(D)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/canvas/CanvasBuilder;->build()Ljavafx/scene/canvas/Canvas;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/canvas/Canvas;
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/canvas/Canvas;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/canvas/Canvas;-><init>()V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/scene/canvas/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/CanvasBuilder;->applyTo(Ljavafx/scene/canvas/Canvas;)V

    .line 82
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/canvas/CanvasBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/canvas/CanvasBuilder;->height:D

    .line 61
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/canvas/CanvasBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/canvas/CanvasBuilder;->__set:I

    .line 62
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/canvas/CanvasBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/canvas/CanvasBuilder;->width:D

    .line 72
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/canvas/CanvasBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/canvas/CanvasBuilder;->__set:I

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/canvas/CanvasBuilder;, "Ljavafx/scene/canvas/CanvasBuilder<TB;>;"
    return-object v0
.end method

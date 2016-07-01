.class public Ljavafx/scene/SnapshotParametersBuilder;
.super Ljava/lang/Object;
.source "SnapshotParametersBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/SnapshotParametersBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/SnapshotParameters;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private camera:Ljavafx/scene/Camera;

.field private depthBuffer:Z

.field private fill:Ljavafx/scene/paint/Paint;

.field private transform:Ljavafx/scene/transform/Transform;

.field private viewport:Ljavafx/geometry/Rectangle2D;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/SnapshotParametersBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/SnapshotParametersBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/SnapshotParametersBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/SnapshotParametersBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/SnapshotParameters;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/SnapshotParameters;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SnapshotParametersBuilder;->camera:Ljavafx/scene/Camera;

    invoke-virtual {v3, v4}, Ljavafx/scene/SnapshotParameters;->setCamera(Ljavafx/scene/Camera;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/SnapshotParametersBuilder;->depthBuffer:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/SnapshotParameters;->setDepthBuffer(Z)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SnapshotParametersBuilder;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljavafx/scene/SnapshotParameters;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SnapshotParametersBuilder;->transform:Ljavafx/scene/transform/Transform;

    invoke-virtual {v3, v4}, Ljavafx/scene/SnapshotParameters;->setTransform(Ljavafx/scene/transform/Transform;)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SnapshotParametersBuilder;->viewport:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v3, v4}, Ljavafx/scene/SnapshotParameters;->setViewport(Ljavafx/geometry/Rectangle2D;)V

    .line 54
    :cond_4
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/SnapshotParametersBuilder;->build()Ljavafx/scene/SnapshotParameters;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/SnapshotParameters;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/SnapshotParameters;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/SnapshotParameters;-><init>()V

    move-object v1, v2

    .line 116
    .local v1, "x":Ljavafx/scene/SnapshotParameters;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/SnapshotParametersBuilder;->applyTo(Ljavafx/scene/SnapshotParameters;)V

    .line 117
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public camera(Ljavafx/scene/Camera;)Ljavafx/scene/SnapshotParametersBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Camera;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Camera;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->camera:Ljavafx/scene/Camera;

    .line 63
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    .line 64
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public depthBuffer(Z)Ljavafx/scene/SnapshotParametersBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->depthBuffer:Z

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public fill(Ljavafx/scene/paint/Paint;)Ljavafx/scene/SnapshotParametersBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->fill:Ljavafx/scene/paint/Paint;

    .line 85
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    .line 86
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public transform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/SnapshotParametersBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/transform/Transform;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->transform:Ljavafx/scene/transform/Transform;

    .line 96
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

.method public viewport(Ljavafx/geometry/Rectangle2D;)Ljavafx/scene/SnapshotParametersBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Rectangle2D;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Rectangle2D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->viewport:Ljavafx/geometry/Rectangle2D;

    .line 107
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/SnapshotParametersBuilder;->__set:I

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParametersBuilder;, "Ljavafx/scene/SnapshotParametersBuilder<TB;>;"
    return-object v0
.end method

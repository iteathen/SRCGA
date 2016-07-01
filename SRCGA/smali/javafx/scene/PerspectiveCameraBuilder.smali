.class public Ljavafx/scene/PerspectiveCameraBuilder;
.super Ljava/lang/Object;
.source "PerspectiveCameraBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/PerspectiveCameraBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/PerspectiveCamera;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private fieldOfView:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/PerspectiveCameraBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/PerspectiveCameraBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/PerspectiveCameraBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/PerspectiveCameraBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/PerspectiveCamera;)V
    .locals 6

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/PerspectiveCamera;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/PerspectiveCameraBuilder;->__set:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/PerspectiveCameraBuilder;->fieldOfView:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/PerspectiveCamera;->setFieldOfView(D)V

    .line 49
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/PerspectiveCameraBuilder;->build()Ljavafx/scene/PerspectiveCamera;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/PerspectiveCamera;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/PerspectiveCamera;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/PerspectiveCamera;-><init>()V

    move-object v1, v2

    .line 67
    .local v1, "x":Ljavafx/scene/PerspectiveCamera;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/PerspectiveCameraBuilder;->applyTo(Ljavafx/scene/PerspectiveCamera;)V

    .line 68
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    return-object v0
.end method

.method public fieldOfView(D)Ljavafx/scene/PerspectiveCameraBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/PerspectiveCameraBuilder;->fieldOfView:D

    .line 58
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/PerspectiveCameraBuilder;->__set:Z

    .line 59
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/PerspectiveCameraBuilder;, "Ljavafx/scene/PerspectiveCameraBuilder<TB;>;"
    return-object v0
.end method

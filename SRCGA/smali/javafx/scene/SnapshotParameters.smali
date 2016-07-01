.class public Ljavafx/scene/SnapshotParameters;
.super Ljava/lang/Object;
.source "SnapshotParameters.java"


# instance fields
.field private camera:Ljavafx/scene/Camera;

.field defaultCamera:Ljavafx/scene/Camera;

.field private depthBuffer:Z

.field private fill:Ljavafx/scene/paint/Paint;

.field private transform:Ljavafx/scene/transform/Transform;

.field private viewport:Ljavafx/geometry/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method copy()Ljavafx/scene/SnapshotParameters;
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    new-instance v2, Ljavafx/scene/SnapshotParameters;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/SnapshotParameters;-><init>()V

    move-object v1, v2

    .line 208
    .local v1, "params":Ljavafx/scene/SnapshotParameters;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    .line 209
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/SnapshotParameters;->depthBuffer:Z

    iput-boolean v3, v2, Ljavafx/scene/SnapshotParameters;->depthBuffer:Z

    .line 210
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->fill:Ljavafx/scene/paint/Paint;

    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->fill:Ljavafx/scene/paint/Paint;

    .line 211
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->viewport:Ljavafx/geometry/Rectangle2D;

    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->viewport:Ljavafx/geometry/Rectangle2D;

    .line 212
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->transform:Ljavafx/scene/transform/Transform;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->transform:Ljavafx/scene/transform/Transform;

    .line 213
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return-object v0

    .line 208
    .restart local v0    # "this":Ljavafx/scene/SnapshotParameters;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    invoke-virtual {v3}, Ljavafx/scene/Camera;->copy()Ljavafx/scene/Camera;

    move-result-object v3

    goto :goto_0

    .line 212
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SnapshotParameters;->transform:Ljavafx/scene/transform/Transform;

    invoke-virtual {v3}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v3

    goto :goto_1
.end method

.method public getCamera()Ljavafx/scene/Camera;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return-object v0
.end method

.method getEffectiveCamera()Ljavafx/scene/Camera;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    instance-of v1, v1, Ljavafx/scene/PerspectiveCamera;

    if-eqz v1, :cond_1

    sget-object v1, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 101
    invoke-static {v1}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->defaultCamera:Ljavafx/scene/Camera;

    if-nez v1, :cond_0

    .line 105
    move-object v1, v0

    new-instance v2, Ljavafx/scene/ParallelCamera;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/ParallelCamera;-><init>()V

    iput-object v2, v1, Ljavafx/scene/SnapshotParameters;->defaultCamera:Ljavafx/scene/Camera;

    .line 107
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->defaultCamera:Ljavafx/scene/Camera;

    move-object v0, v1

    .line 109
    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/SnapshotParameters;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    move-object v0, v1

    goto :goto_0
.end method

.method public getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->fill:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return-object v0
.end method

.method public getTransform()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->transform:Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return-object v0
.end method

.method public getViewport()Ljavafx/geometry/Rectangle2D;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotParameters;->viewport:Ljavafx/geometry/Rectangle2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return-object v0
.end method

.method public isDepthBuffer()Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/SnapshotParameters;->depthBuffer:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    return v0
.end method

.method isDepthBufferInternal()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    sget-object v1, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v1}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    move v0, v1

    .line 67
    .end local v0    # "this":Ljavafx/scene/SnapshotParameters;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/SnapshotParameters;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/SnapshotParameters;->depthBuffer:Z

    move v0, v1

    goto :goto_0
.end method

.method public setCamera(Ljavafx/scene/Camera;)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, p1

    .local v1, "camera":Ljavafx/scene/Camera;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/PerspectiveCamera;

    if-eqz v3, :cond_0

    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 120
    invoke-static {v3}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const-class v3, Ljavafx/scene/SnapshotParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 122
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 125
    .end local v2    # "logname":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/SnapshotParameters;->camera:Ljavafx/scene/Camera;

    .line 126
    return-void
.end method

.method public setDepthBuffer(Z)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const-class v3, Ljavafx/scene/SnapshotParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 82
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 85
    .end local v2    # "logname":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Ljavafx/scene/SnapshotParameters;->depthBuffer:Z

    .line 86
    return-void
.end method

.method public setFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, p1

    .local v1, "fill":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->fill:Ljavafx/scene/paint/Paint;

    .line 168
    return-void
.end method

.method public setTransform(Ljavafx/scene/transform/Transform;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->transform:Ljavafx/scene/transform/Transform;

    .line 147
    return-void
.end method

.method public setViewport(Ljavafx/geometry/Rectangle2D;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotParameters;
    move-object v1, p1

    .local v1, "viewport":Ljavafx/geometry/Rectangle2D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SnapshotParameters;->viewport:Ljavafx/geometry/Rectangle2D;

    .line 199
    return-void
.end method

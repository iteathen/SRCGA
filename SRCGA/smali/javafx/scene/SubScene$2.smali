.class Ljavafx/scene/SubScene$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "SubScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/SubScene;->cameraProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field oldCamera:Ljavafx/scene/Camera;

.field final synthetic this$0:Ljavafx/scene/SubScene;


# direct methods
.method constructor <init>(Ljavafx/scene/SubScene;)V
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/SubScene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 314
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/SubScene$2;->oldCamera:Ljavafx/scene/Camera;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$2;
    const-string v1, "camera"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$2;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/SubScene$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Camera;

    move-object v1, v3

    .line 319
    .local v1, "_value":Ljavafx/scene/Camera;
    move-object v3, v1

    if-eqz v3, :cond_4

    .line 320
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/PerspectiveCamera;

    if-eqz v3, :cond_0

    .line 321
    # getter for: Ljavafx/scene/SubScene;->is3DSupported:Z
    invoke-static {}, Ljavafx/scene/SubScene;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    const-class v3, Ljavafx/scene/SubScene;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 323
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 327
    .end local v2    # "logname":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_1
    move-object v3, v1

    .line 328
    invoke-virtual {v3}, Ljavafx/scene/Camera;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    if-eq v3, v4, :cond_3

    .line 329
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is already part of other scene or subscene"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->setOwnerSubScene(Ljavafx/scene/SubScene;)V

    .line 334
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 335
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewHeight(D)V

    .line 337
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene$2;->this$0:Ljavafx/scene/SubScene;

    sget-object v4, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CAMERA_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-static {v3, v4}, Ljavafx/scene/SubScene;->access$000(Ljavafx/scene/SubScene;Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 338
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene$2;->oldCamera:Ljavafx/scene/Camera;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene$2;->oldCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    if-eq v3, v4, :cond_5

    .line 339
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene$2;->oldCamera:Ljavafx/scene/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->setOwnerSubScene(Ljavafx/scene/SubScene;)V

    .line 341
    :cond_5
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/SubScene$2;->oldCamera:Ljavafx/scene/Camera;

    .line 342
    return-void
.end method

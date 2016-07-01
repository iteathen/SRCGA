.class final Ljavafx/scene/Scene$3;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    new-instance v2, Ljavafx/scene/Scene$3$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$3$1;-><init>(Ljavafx/scene/Scene$3;Ljavafx/scene/Parent;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene$3;
    return-object v0
.end method

.method public getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene$3;
    return-object v0
.end method

.method public getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;
    .locals 3

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene$3;
    return-object v0
.end method

.method public parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V
    .locals 3

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/Scene;->access$500(Ljavafx/scene/Scene;)V

    .line 393
    return-void
.end method

.method public setPaused(Z)V
    .locals 3

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move v1, p1

    .local v1, "paused":Z
    move v2, v1

    invoke-static {v2}, Ljavafx/scene/Scene;->access$402(Z)Z

    move-result v2

    .line 387
    return-void
.end method

.method public setTransientFocusContainer(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 421
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/Scene;->access$602(Ljavafx/scene/Scene;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    .line 423
    :cond_0
    return-void
.end method

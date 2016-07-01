.class final Ljavafx/scene/SubScene$7;
.super Ljava/lang/Object;
.source "SubScene.java"

# interfaces
.implements Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/SubScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$7;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;
    .locals 3

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$7;
    move-object v1, p1

    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SubScene$7;
    return-object v0
.end method

.method public isDepthBuffer(Ljavafx/scene/SubScene;)Z
    .locals 3

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$7;
    move-object v1, p1

    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/SubScene;->access$200(Ljavafx/scene/SubScene;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/SubScene$7;
    return v0
.end method

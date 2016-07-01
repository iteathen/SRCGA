.class public Lcom/sun/javafx/scene/SceneUtils;
.super Ljava/lang/Object;
.source "SceneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSubSceneCoordinates(DDLjavafx/scene/SubScene;)Ljavafx/geometry/Point2D;
    .locals 14

    .prologue
    .line 74
    move-wide v1, p0

    .local v1, "x":D
    move-wide/from16 v3, p2

    .local v3, "y":D
    move-object/from16 v5, p4

    .local v5, "subScene":Ljavafx/scene/SubScene;
    move-object v8, v5

    invoke-static {v8}, Lcom/sun/javafx/scene/NodeHelper;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v8

    move-object v6, v8

    .line 76
    .local v6, "outer":Ljavafx/scene/SubScene;
    move-object v8, v6

    if-nez v8, :cond_0

    .line 77
    move-object v8, v5

    .line 78
    invoke-virtual {v8}, Ljavafx/scene/SubScene;->getScene()Ljavafx/scene/Scene;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/scene/SceneHelper;->getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;

    move-result-object v8

    move-object v9, v5

    move-wide v10, v1

    move-wide v12, v3

    .line 77
    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/scene/CameraHelper;->pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v1, v8

    .line 87
    .end local v1    # "x":D
    :goto_0
    return-object v1

    .line 81
    .restart local v1    # "x":D
    :cond_0
    move-wide v8, v1

    move-wide v10, v3

    move-object v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/scene/SceneUtils;->computeSubSceneCoordinates(DDLjavafx/scene/SubScene;)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v7, v8

    .line 82
    .local v7, "coords":Ljavafx/geometry/Point2D;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 83
    move-object v8, v6

    .line 84
    invoke-static {v8}, Lcom/sun/javafx/scene/SubSceneHelper;->getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;

    move-result-object v8

    move-object v9, v5

    move-object v10, v7

    .line 85
    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    .line 83
    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/scene/CameraHelper;->pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v7, v8

    .line 87
    :cond_1
    move-object v8, v7

    move-object v1, v8

    goto :goto_0
.end method

.method public static sceneToSubScenePlane(Ljavafx/scene/SubScene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "subScene":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v4

    move-object v6, v0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sun/javafx/scene/SceneUtils;->computeSubSceneCoordinates(DDLjavafx/scene/SubScene;)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v1, v2

    .line 65
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "subScene":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public static subSceneToScene(Ljavafx/scene/SubScene;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 12

    .prologue
    .line 43
    move-object v1, p0

    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v5, v1

    move-object v3, v5

    .line 44
    .local v3, "n":Ljavafx/scene/Node;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 46
    move-object v5, v1

    .line 47
    invoke-static {v5}, Lcom/sun/javafx/scene/SubSceneHelper;->getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;

    move-result-object v5

    move-object v6, v2

    .line 46
    invoke-static {v5, v6}, Lcom/sun/javafx/scene/CameraHelper;->project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v4, v5

    .line 49
    .local v4, "projection":Ljavafx/geometry/Point2D;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v2, v5

    .line 50
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/scene/NodeHelper;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v5

    move-object v3, v5

    .line 51
    goto :goto_0

    .line 53
    .end local v4    # "projection":Ljavafx/geometry/Point2D;
    :cond_0
    move-object v5, v2

    move-object v1, v5

    .end local v1    # "subScene":Ljavafx/scene/SubScene;
    return-object v1
.end method

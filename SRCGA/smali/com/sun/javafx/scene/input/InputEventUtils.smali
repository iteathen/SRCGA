.class public Lcom/sun/javafx/scene/input/InputEventUtils;
.super Ljava/lang/Object;
.source "InputEventUtils.java"


# static fields
.field private static final TM_ANY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final TM_COPY_OR_MOVE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/input/InputEventUtils;->TM_ANY:Ljava/util/List;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/input/InputEventUtils;->TM_COPY_OR_MOVE:Ljava/util/List;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/InputEventUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 58
    move-object/from16 v1, p0

    .local v1, "result":Ljavafx/scene/input/PickResult;
    move-object/from16 v2, p1

    .local v2, "newSource":Ljava/lang/Object;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/PickResult;->getIntersectedPoint()Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 59
    .local v3, "coordinates":Ljavafx/geometry/Point3D;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 60
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    const-wide/high16 v16, 0x7ff8000000000000L    # NaN

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v10

    .line 111
    .end local v1    # "result":Ljavafx/scene/input/PickResult;
    :goto_0
    return-object v1

    .line 63
    .restart local v1    # "result":Ljavafx/scene/input/PickResult;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v10

    move-object v4, v10

    .line 65
    .local v4, "oldSourceNode":Ljavafx/scene/Node;
    move-object v10, v2

    instance-of v10, v10, Ljavafx/scene/Node;

    if-eqz v10, :cond_5

    move-object v10, v2

    check-cast v10, Ljavafx/scene/Node;

    :goto_1
    move-object v5, v10

    .line 68
    .local v5, "newSourceNode":Ljavafx/scene/Node;
    move-object v10, v4

    if-nez v10, :cond_6

    const/4 v10, 0x0

    .line 69
    :goto_2
    move-object v6, v10

    .line 70
    .local v6, "oldSubScene":Ljavafx/scene/SubScene;
    move-object v10, v5

    if-nez v10, :cond_7

    const/4 v10, 0x0

    .line 71
    :goto_3
    move-object v7, v10

    .line 72
    .local v7, "newSubScene":Ljavafx/scene/SubScene;
    move-object v10, v6

    move-object v11, v7

    if-eq v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_4
    move v8, v10

    .line 74
    .local v8, "subScenesDiffer":Z
    move-object v10, v4

    if-eqz v10, :cond_1

    .line 76
    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 77
    move v10, v8

    if-eqz v10, :cond_1

    move-object v10, v6

    if-eqz v10, :cond_1

    .line 79
    move-object v10, v6

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/SceneUtils;->subSceneToScene(Ljavafx/scene/SubScene;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 83
    :cond_1
    move-object v10, v5

    if-eqz v10, :cond_4

    .line 84
    move v10, v8

    if-eqz v10, :cond_2

    move-object v10, v7

    if-eqz v10, :cond_2

    .line 87
    move-object v10, v5

    .line 88
    invoke-virtual {v10}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/scene/SceneHelper;->getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;

    move-result-object v10

    move-object v11, v3

    .line 87
    invoke-static {v10, v11}, Lcom/sun/javafx/scene/CameraHelper;->project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v10

    move-object v9, v10

    .line 91
    .local v9, "planeCoords":Ljavafx/geometry/Point2D;
    move-object v10, v7

    move-object v11, v9

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/SceneUtils;->sceneToSubScenePlane(Ljavafx/scene/SubScene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v10

    move-object v9, v10

    .line 94
    move-object v10, v9

    if-nez v10, :cond_9

    .line 95
    const/4 v10, 0x0

    move-object v3, v10

    .line 103
    .end local v9    # "planeCoords":Ljavafx/geometry/Point2D;
    :cond_2
    :goto_5
    move-object v10, v3

    if-eqz v10, :cond_3

    .line 104
    move-object v10, v5

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/Node;->sceneToLocal(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 106
    :cond_3
    move-object v10, v3

    if-nez v10, :cond_4

    .line 107
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    const-wide/high16 v16, 0x7ff8000000000000L    # NaN

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .line 111
    :cond_4
    move-object v10, v3

    move-object v1, v10

    goto :goto_0

    .line 65
    .end local v5    # "newSourceNode":Ljavafx/scene/Node;
    .end local v6    # "oldSubScene":Ljavafx/scene/SubScene;
    .end local v7    # "newSubScene":Ljavafx/scene/SubScene;
    .end local v8    # "subScenesDiffer":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 68
    .restart local v5    # "newSourceNode":Ljavafx/scene/Node;
    :cond_6
    move-object v10, v4

    .line 69
    invoke-static {v10}, Lcom/sun/javafx/scene/NodeHelper;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v10

    goto :goto_2

    .line 70
    .restart local v6    # "oldSubScene":Ljavafx/scene/SubScene;
    :cond_7
    move-object v10, v5

    .line 71
    invoke-static {v10}, Lcom/sun/javafx/scene/NodeHelper;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v10

    goto :goto_3

    .line 72
    .restart local v7    # "newSubScene":Ljavafx/scene/SubScene;
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 97
    .restart local v8    # "subScenesDiffer":Z
    .restart local v9    # "planeCoords":Ljavafx/geometry/Point2D;
    :cond_9
    move-object v10, v7

    .line 98
    invoke-static {v10}, Lcom/sun/javafx/scene/SubSceneHelper;->getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;

    move-result-object v10

    move-object v11, v9

    .line 99
    invoke-virtual {v11}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v11

    move-object v13, v9

    invoke-virtual {v13}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v13

    .line 97
    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/javafx/scene/CameraHelper;->pickProjectPlane(Ljavafx/scene/Camera;DD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    goto :goto_5
.end method

.method public static safeTransferModes([Ljavafx/scene/input/TransferMode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/input/TransferMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "modes":[Ljavafx/scene/input/TransferMode;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/TransferMode;->ANY:[Ljavafx/scene/input/TransferMode;

    if-ne v1, v2, :cond_0

    .line 137
    sget-object v1, Lcom/sun/javafx/scene/input/InputEventUtils;->TM_ANY:Ljava/util/List;

    move-object v0, v1

    .line 141
    .end local v0    # "modes":[Ljavafx/scene/input/TransferMode;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "modes":[Ljavafx/scene/input/TransferMode;
    :cond_0
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/TransferMode;->COPY_OR_MOVE:[Ljavafx/scene/input/TransferMode;

    if-ne v1, v2, :cond_1

    .line 139
    sget-object v1, Lcom/sun/javafx/scene/input/InputEventUtils;->TM_COPY_OR_MOVE:Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_1
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

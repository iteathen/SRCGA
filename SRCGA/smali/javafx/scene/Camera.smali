.class public abstract Ljavafx/scene/Camera;
.super Ljavafx/scene/Node;
.source "Camera.java"


# instance fields
.field private clipInSceneValid:Z

.field private farClip:Ljavafx/beans/property/DoubleProperty;

.field private farClipInScene:D

.field private localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private localToSceneValid:Z

.field private nearClip:Ljavafx/beans/property/DoubleProperty;

.field private nearClipInScene:D

.field private ownerScene:Ljavafx/scene/Scene;

.field private ownerSubScene:Ljavafx/scene/SubScene;

.field private position:Lcom/sun/javafx/geom/Vec3d;

.field private projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field private projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field private projViewTxValid:Z

.field private sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private sceneToLocalValid:Z

.field private viewHeight:D

.field private viewTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private viewWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 503
    new-instance v0, Ljavafx/scene/Camera$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Camera$3;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/scene/CameraHelper;->setCameraAccessor(Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;)V

    .line 520
    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 109
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Node;-><init>()V

    .line 107
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 122
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    .line 123
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    .line 125
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 126
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 127
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->viewTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 128
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Ljavafx/scene/Camera;->viewWidth:D

    .line 129
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Ljavafx/scene/Camera;->viewHeight:D

    .line 130
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    .line 132
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Camera;->clipInSceneValid:Z

    .line 133
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Camera;->projViewTxValid:Z

    .line 134
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Camera;->localToSceneValid:Z

    .line 135
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Camera;->sceneToLocalValid:Z

    .line 160
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Camera;->sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 110
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/Camera$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Camera;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    move-object v2, v3

    .line 112
    .local v2, "dirtyTransformListener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 114
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$002(Ljavafx/scene/Camera;Z)Z
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Camera;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/Camera;->clipInSceneValid:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Camera;
    return v0
.end method

.method static synthetic access$100(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Point3D;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Camera;->project(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Camera;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;
    .locals 12

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-wide v2, p2

    .local v2, "x2":D
    move-wide/from16 v4, p4

    .local v4, "x3":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/Camera;->pickNodeXYPlane(Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "x0":Ljavafx/scene/Camera;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Camera;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Camera;->lambda$new$19(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$19(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Camera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method private markOwnerDirty()V
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    if-eqz v1, :cond_0

    .line 347
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->markCameraDirty()V

    .line 349
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    if-eqz v1, :cond_1

    .line 350
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    invoke-virtual {v1}, Ljavafx/scene/SubScene;->markContentDirty()V

    .line 352
    :cond_1
    return-void
.end method

.method private pickNodeXYPlane(Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;
    .locals 26

    .prologue
    .line 412
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Camera;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "x":D
    move-wide/from16 v6, p4

    .local v6, "y":D
    move-object v14, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Ljavafx/scene/Camera;->computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v14

    move-object v8, v14

    .line 414
    .local v8, "ray":Lcom/sun/javafx/geom/PickRay;
    new-instance v14, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v9, v14

    .line 415
    .local v9, "localToScene":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/Node;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 417
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    move-object v10, v14

    .line 418
    .local v10, "o":Lcom/sun/javafx/geom/Vec3d;
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    move-object v11, v14

    .line 421
    .local v11, "d":Lcom/sun/javafx/geom/Vec3d;
    move-object v14, v9

    move-object v15, v10

    move-object/from16 v16, v10

    :try_start_0
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/transform/Affine3D;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    .line 422
    move-object v14, v9

    move-object v15, v11

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/transform/Affine3D;->inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 425
    .line 427
    move-object v14, v11

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-static {v14, v15}, Ljavafx/scene/Camera;->almostZero(D)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 428
    const/4 v14, 0x0

    move-object v2, v14

    .line 432
    .end local v2    # "this":Ljavafx/scene/Camera;
    :goto_0
    return-object v2

    .line 423
    .restart local v2    # "this":Ljavafx/scene/Camera;
    :catch_0
    move-exception v14

    move-object v12, v14

    .line 424
    .local v12, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v14, 0x0

    move-object v2, v14

    goto :goto_0

    .line 431
    .end local v12    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_0
    move-object v14, v10

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->z:D

    neg-double v14, v14

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide v12, v14

    .line 432
    .local v12, "t":D
    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v12

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v2, v14

    goto :goto_0
.end method

.method private project(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
    .locals 21

    .prologue
    .line 396
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Camera;
    move-object/from16 v4, p1

    .local v4, "p":Ljavafx/geometry/Point3D;
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/Camera;->getProjViewTransform()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v10

    new-instance v11, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v4

    .line 397
    invoke-virtual {v13}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v13

    move-object v15, v4

    invoke-virtual {v15}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v15

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v17

    invoke-direct/range {v12 .. v18}, Lcom/sun/javafx/geom/Vec3d;-><init>(DDD)V

    .line 396
    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v10

    move-object v5, v10

    .line 399
    .local v5, "vec":Lcom/sun/javafx/geom/Vec3d;
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/Camera;->getViewWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 400
    .local v6, "halfViewWidth":D
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/Camera;->getViewHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 402
    .local v8, "halfViewHeight":D
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v3, v10

    .end local v3    # "this":Ljavafx/scene/Camera;
    return-object v3
.end method

.method private updateClipPlane()V
    .locals 10

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Camera;->clipInSceneValid:Z

    if-nez v2, :cond_0

    .line 149
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Camera;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v2

    move-object v1, v2

    .line 150
    .local v1, "localToSceneTransform":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Camera;->getNearClip()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v3

    iput-wide v3, v2, Ljavafx/scene/Camera;->nearClipInScene:D

    .line 151
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Camera;->getFarClip()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v3

    iput-wide v3, v2, Ljavafx/scene/Camera;->farClipInScene:D

    .line 152
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Camera;->clipInSceneValid:Z

    .line 154
    .end local v1    # "localToSceneTransform":Ljavafx/scene/transform/Transform;
    :cond_0
    return-void
.end method


# virtual methods
.method abstract computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
.end method

.method abstract computePosition(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
.end method

.method abstract computeProjectionTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
.end method

.method abstract computeViewTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
.end method

.method copy()Ljavafx/scene/Camera;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-object v0
.end method

.method public final farClipProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->farClip:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 235
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Camera$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "farClip"

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/Camera$2;-><init>(Ljavafx/scene/Camera;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/Camera;->farClip:Ljavafx/beans/property/DoubleProperty;

    .line 243
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->farClip:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Camera;
    return-object v1
.end method

.method getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 3

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Camera;->localToSceneValid:Z

    if-nez v1, :cond_0

    .line 361
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 362
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Camera;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1, v2}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 363
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Camera;->localToSceneValid:Z

    .line 365
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-object v0
.end method

.method public final getFarClip()D
    .locals 4

    .prologue
    .line 230
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->farClip:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Camera;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Camera;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->farClip:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method getFarClipInScene()D
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Camera;->updateClipPlane()V

    .line 139
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/Camera;->farClipInScene:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-wide v0
.end method

.method public final getNearClip()D
    .locals 4

    .prologue
    .line 195
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->nearClip:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Camera;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Camera;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->nearClip:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method getNearClipInScene()D
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Camera;->updateClipPlane()V

    .line 144
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/Camera;->nearClipInScene:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-wide v0
.end method

.method getProjViewTransform()Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 3

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Camera;->projViewTxValid:Z

    if-nez v1, :cond_0

    .line 378
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v1, v2}, Ljavafx/scene/Camera;->computeProjectionTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 379
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->viewTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1, v2}, Ljavafx/scene/Camera;->computeViewTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 381
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v1

    .line 382
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->viewTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v1

    .line 383
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Camera;->getSceneToLocalTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v1

    .line 385
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Camera;->projViewTxValid:Z

    .line 388
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-object v0
.end method

.method getSceneToLocalTransform()Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Camera;->sceneToLocalValid:Z

    if-nez v3, :cond_0

    .line 164
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Camera;->sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 166
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/Camera;->sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->invert()V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    :goto_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/Camera;->sceneToLocalValid:Z

    .line 175
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Camera;->sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-object v0

    .line 167
    .restart local v0    # "this":Ljavafx/scene/Camera;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 168
    .local v1, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const-class v3, Ljavafx/scene/Camera;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 169
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "getSceneToLocalTransform"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Camera;->sceneToLocalTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    goto :goto_0
.end method

.method getViewHeight()D
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/Camera;->viewHeight:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-wide v0
.end method

.method getViewWidth()D
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/Camera;->viewWidth:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-wide v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/Camera;
    return v1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Camera;
    return-object v0
.end method

.method protected impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 332
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    if-ne v2, v3, :cond_1

    .line 333
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Camera;->localToSceneValid:Z

    .line 334
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Camera;->sceneToLocalValid:Z

    .line 335
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Camera;->clipInSceneValid:Z

    .line 336
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Camera;->projViewTxValid:Z

    .line 340
    :cond_0
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Camera;->markOwnerDirty()V

    .line 341
    return-void

    .line 337
    :cond_1
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    if-ne v2, v3, :cond_0

    .line 338
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Camera;->projViewTxValid:Z

    goto :goto_0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 258
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v2, v3

    .line 259
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->impl_isDirtyEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getNearClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCamera;->setNearClip(F)V

    .line 262
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getFarClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCamera;->setFarClip(F)V

    .line 263
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getViewWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGCamera;->setViewWidth(D)V

    .line 264
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getViewHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGCamera;->setViewHeight(D)V

    .line 266
    :cond_0
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCamera;->setWorldTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 272
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Camera;->getProjViewTransform()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCamera;->setProjViewTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 274
    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v4, v5}, Ljavafx/scene/Camera;->computePosition(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    .line 275
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/Affine3D;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v3

    .line 276
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Camera;->position:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCamera;->setPosition(Lcom/sun/javafx/geom/Vec3d;)V

    .line 278
    :cond_2
    return-void
.end method

.method public final nearClipProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->nearClip:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 200
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Camera$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "nearClip"

    const-wide v8, 0x3fb999999999999aL    # 0.1

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/Camera$1;-><init>(Ljavafx/scene/Camera;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/Camera;->nearClip:Ljavafx/beans/property/DoubleProperty;

    .line 208
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Camera;->nearClip:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Camera;
    return-object v1
.end method

.method pickProjectPlane(DD)Ljavafx/geometry/Point3D;
    .locals 17

    .prologue
    .line 440
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Camera;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Ljavafx/scene/Camera;->computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v8

    move-object v6, v8

    .line 441
    .local v6, "ray":Lcom/sun/javafx/geom/PickRay;
    new-instance v8, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v7, v8

    .line 442
    .local v7, "p":Lcom/sun/javafx/geom/Vec3d;
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Vec3d;->add(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V

    .line 444
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v7

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v12, v7

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v14, v7

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/Camera;
    return-object v1
.end method

.method public final setFarClip(D)V
    .locals 7

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Camera;->farClipProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 227
    return-void
.end method

.method public final setNearClip(D)V
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Camera;->nearClipProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 192
    return-void
.end method

.method setOwnerScene(Ljavafx/scene/Scene;)V
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "s":Ljavafx/scene/Scene;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 300
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    if-eq v2, v3, :cond_0

    .line 302
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    if-eqz v2, :cond_3

    .line 303
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is already set as camera in other scene or subscene"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    .line 307
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Camera;->markOwnerDirty()V

    goto :goto_0
.end method

.method setOwnerSubScene(Ljavafx/scene/SubScene;)V
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "s":Ljavafx/scene/SubScene;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 313
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    if-eq v2, v3, :cond_0

    .line 315
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->ownerScene:Ljavafx/scene/Scene;

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    if-eqz v2, :cond_3

    .line 316
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is already set as camera in other scene or subscene"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Camera;->ownerSubScene:Ljavafx/scene/SubScene;

    .line 320
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Camera;->markOwnerDirty()V

    goto :goto_0
.end method

.method setViewHeight(D)V
    .locals 7

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/Camera;->viewHeight:D

    .line 291
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 292
    return-void
.end method

.method setViewWidth(D)V
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/Camera;->viewWidth:D

    .line 282
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 283
    return-void
.end method

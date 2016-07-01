.class public Ljavafx/scene/ParallelCamera;
.super Ljavafx/scene/Camera;
.source "ParallelCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParallelCamera;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method final computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 19

    .prologue
    .line 74
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/ParallelCamera;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object/from16 v6, p5

    .local v6, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-wide v7, v2

    move-wide v9, v4

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/ParallelCamera;->getViewHeight()D

    move-result-wide v11

    move-object v13, v1

    .line 75
    invoke-virtual {v13}, Ljavafx/scene/ParallelCamera;->getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v13

    move-object v14, v1

    .line 76
    invoke-virtual {v14}, Ljavafx/scene/ParallelCamera;->getNearClip()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/ParallelCamera;->getFarClip()D

    move-result-wide v16

    move-object/from16 v18, v6

    .line 74
    invoke-static/range {v7 .. v18}, Lcom/sun/javafx/geom/PickRay;->computeParallelPickRay(DDDLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Ljavafx/scene/ParallelCamera;
    return-object v1
.end method

.method computePosition(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 16

    .prologue
    .line 96
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/ParallelCamera;
    move-object/from16 v1, p1

    .local v1, "position":Lcom/sun/javafx/geom/Vec3d;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 97
    new-instance v8, Lcom/sun/javafx/geom/Vec3d;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v1, v8

    .line 102
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/ParallelCamera;->getViewWidth()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move-wide v2, v8

    .line 103
    .local v2, "halfViewWidth":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/ParallelCamera;->getViewHeight()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 104
    .local v4, "halfViewHeight":D
    move-wide v8, v4

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    move-wide v6, v8

    .line 105
    .local v6, "distanceZ":D
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    move-wide v13, v6

    neg-double v13, v13

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 107
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/ParallelCamera;
    return-object v0
.end method

.method computeProjectionTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 23

    .prologue
    .line 81
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/ParallelCamera;
    move-object/from16 v3, p1

    .local v3, "proj":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/ParallelCamera;->getViewWidth()D

    move-result-wide v10

    move-wide v4, v10

    .line 82
    .local v4, "viewWidth":D
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/ParallelCamera;->getViewHeight()D

    move-result-wide v10

    move-wide v6, v10

    .line 83
    .local v6, "viewHeight":D
    move-wide v10, v4

    move-wide v12, v6

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-wide v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    :goto_0
    move-wide v8, v10

    .line 86
    .local v8, "halfDepth":D
    move-object v10, v3

    const-wide/16 v11, 0x0

    move-wide v13, v4

    move-wide v15, v6

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v8

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v8

    invoke-virtual/range {v10 .. v22}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->ortho(DDDDDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v10

    .line 87
    return-void

    .line 83
    .end local v8    # "halfDepth":D
    :cond_0
    move-wide v10, v6

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    goto :goto_0
.end method

.method computeViewTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParallelCamera;
    move-object v1, p1

    .local v1, "view":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 92
    return-void
.end method

.method copy()Ljavafx/scene/Camera;
    .locals 7

    .prologue
    .line 53
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ParallelCamera;
    new-instance v3, Ljavafx/scene/ParallelCamera;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/scene/ParallelCamera;-><init>()V

    move-object v2, v3

    .line 54
    .local v2, "c":Ljavafx/scene/ParallelCamera;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/ParallelCamera;->getNearClip()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/ParallelCamera;->setNearClip(D)V

    .line 55
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/ParallelCamera;->getFarClip()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/ParallelCamera;->setFarClip(D)V

    .line 56
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/ParallelCamera;
    return-object v1
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ParallelCamera;
    new-instance v3, Lcom/sun/javafx/sg/prism/NGParallelCamera;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/sg/prism/NGParallelCamera;-><init>()V

    move-object v2, v3

    .line 67
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGParallelCamera;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/ParallelCamera;->getNearClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGParallelCamera;->setNearClip(F)V

    .line 68
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/ParallelCamera;->getFarClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGParallelCamera;->setFarClip(F)V

    .line 69
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/ParallelCamera;
    return-object v1
.end method

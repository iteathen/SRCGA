.class public Ljavafx/scene/PerspectiveCamera;
.super Ljavafx/scene/Camera;
.source "PerspectiveCamera.java"


# static fields
.field private static final LOOK_AT_TX:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static final LOOK_AT_TX_FIXED_EYE:Lcom/sun/javafx/geom/transform/Affine3D;


# instance fields
.field private fieldOfView:Ljavafx/beans/property/DoubleProperty;

.field private fixedEyeAtCameraZero:Z

.field private verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 89
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v1, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 92
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v1, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX_FIXED_EYE:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 97
    sget-object v1, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX:Lcom/sun/javafx/geom/transform/Affine3D;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v1 .. v7}, Lcom/sun/javafx/geom/transform/Affine3D;->setToTranslation(DDD)V

    .line 99
    sget-object v1, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX:Lcom/sun/javafx/geom/transform/Affine3D;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 103
    sget-object v1, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX_FIXED_EYE:Lcom/sun/javafx/geom/transform/Affine3D;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/PerspectiveCamera;-><init>(Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move v1, p1

    .local v1, "fixedEyeAtCameraZero":Z
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Camera;-><init>()V

    .line 86
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    .line 196
    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    const-class v3, Ljavafx/scene/PerspectiveCamera;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 198
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 201
    .end local v2    # "logname":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    .line 202
    return-void
.end method


# virtual methods
.method final computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 25

    .prologue
    .line 211
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object/from16 v6, p5

    .local v6, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-wide v7, v2

    move-wide v9, v4

    move-object v11, v1

    iget-boolean v11, v11, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    move-object v12, v1

    .line 212
    invoke-virtual {v12}, Ljavafx/scene/PerspectiveCamera;->getViewWidth()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/PerspectiveCamera;->getViewHeight()D

    move-result-wide v14

    move-object/from16 v16, v1

    .line 213
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/PerspectiveCamera;->isVerticalFieldOfView()Z

    move-result v18

    move-object/from16 v19, v1

    .line 214
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/PerspectiveCamera;->getCameraTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v19

    move-object/from16 v20, v1

    .line 215
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->getNearClip()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/PerspectiveCamera;->getFarClip()D

    move-result-wide v22

    move-object/from16 v24, v6

    .line 211
    invoke-static/range {v7 .. v24}, Lcom/sun/javafx/geom/PickRay;->computePerspectivePickRay(DDZDDDZLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v1
.end method

.method computePosition(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 18

    .prologue
    .line 294
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object/from16 v1, p1

    .local v1, "position":Lcom/sun/javafx/geom/Vec3d;
    move-object v10, v1

    if-nez v10, :cond_0

    .line 295
    new-instance v10, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v1, v10

    .line 298
    :cond_0
    move-object v10, v0

    iget-boolean v10, v10, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    if-eqz v10, :cond_1

    .line 299
    move-object v10, v1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 310
    :goto_0
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v0

    .line 301
    .restart local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/PerspectiveCamera;->getViewWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v2, v10

    .line 302
    .local v2, "halfViewWidth":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/PerspectiveCamera;->getViewHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v4, v10

    .line 303
    .local v4, "halfViewHeight":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/PerspectiveCamera;->isVerticalFieldOfView()Z

    move-result v10

    if-eqz v10, :cond_2

    move-wide v10, v4

    :goto_1
    move-wide v6, v10

    .line 305
    .local v6, "halfViewDim":D
    move-wide v10, v6

    move-object v12, v0

    .line 306
    invoke-virtual {v12}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 308
    .local v8, "distanceZ":D
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v8

    neg-double v15, v15

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    goto :goto_0

    .line 303
    .end local v6    # "halfViewDim":D
    .end local v8    # "distanceZ":D
    :cond_2
    move-wide v10, v2

    goto :goto_1
.end method

.method computeProjectionTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 12

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v1, p1

    .local v1, "proj":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/PerspectiveCamera;->isVerticalFieldOfView()Z

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    move-object v6, v0

    .line 259
    invoke-virtual {v6}, Ljavafx/scene/PerspectiveCamera;->getViewWidth()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/PerspectiveCamera;->getViewHeight()D

    move-result-wide v8

    div-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/PerspectiveCamera;->getNearClip()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/PerspectiveCamera;->getFarClip()D

    move-result-wide v10

    .line 258
    invoke-virtual/range {v2 .. v11}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->perspective(ZDDDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 260
    return-void
.end method

.method computeViewTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 27

    .prologue
    .line 268
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/PerspectiveCamera;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->isFixedEyeAtCameraZero()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 269
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX_FIXED_EYE:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 290
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->getViewWidth()D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 272
    .local v5, "viewWidth":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->getViewHeight()D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 273
    .local v7, "viewHeight":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->isVerticalFieldOfView()Z

    move-result v20

    move/from16 v9, v20

    .line 275
    .local v9, "verticalFOV":Z
    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    div-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 276
    .local v10, "aspect":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 279
    .local v12, "tanOfHalfFOV":D
    move-wide/from16 v20, v12

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v9

    if-eqz v22, :cond_1

    move-wide/from16 v22, v10

    :goto_1
    mul-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 280
    .local v14, "xOffset":D
    move-wide/from16 v20, v12

    move/from16 v22, v9

    if-eqz v22, :cond_2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_2
    mul-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 283
    .local v16, "yOffset":D
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-wide/from16 v22, v12

    mul-double v20, v20, v22

    move/from16 v22, v9

    if-eqz v22, :cond_3

    move-wide/from16 v22, v7

    :goto_3
    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 286
    .local v18, "scale":D
    move-object/from16 v20, v4

    move-wide/from16 v21, v14

    move-wide/from16 v23, v16

    const-wide/16 v25, 0x0

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->setToTranslation(DDD)V

    .line 287
    move-object/from16 v20, v4

    sget-object v21, Ljavafx/scene/PerspectiveCamera;->LOOK_AT_TX:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 288
    move-object/from16 v20, v4

    move-wide/from16 v21, v18

    move-wide/from16 v23, v18

    move-wide/from16 v25, v18

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    goto :goto_0

    .line 279
    .end local v14    # "xOffset":D
    .end local v16    # "yOffset":D
    .end local v18    # "scale":D
    :cond_1
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 280
    .restart local v14    # "xOffset":D
    :cond_2
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    div-double v22, v22, v24

    goto :goto_2

    .line 283
    .restart local v16    # "yOffset":D
    :cond_3
    move-wide/from16 v22, v5

    goto :goto_3
.end method

.method copy()Ljavafx/scene/Camera;
    .locals 7

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    new-instance v3, Ljavafx/scene/PerspectiveCamera;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-boolean v5, v5, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    invoke-direct {v4, v5}, Ljavafx/scene/PerspectiveCamera;-><init>(Z)V

    move-object v2, v3

    .line 221
    .local v2, "c":Ljavafx/scene/PerspectiveCamera;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getNearClip()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/PerspectiveCamera;->setNearClip(D)V

    .line 222
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFarClip()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/PerspectiveCamera;->setFarClip(D)V

    .line 223
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/PerspectiveCamera;->setFieldOfView(D)V

    .line 224
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v1
.end method

.method public final fieldOfViewProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 123
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/PerspectiveCamera;->fieldOfView:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 124
    move-object v2, v1

    new-instance v3, Ljavafx/scene/PerspectiveCamera$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "fieldOfView"

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/PerspectiveCamera$1;-><init>(Ljavafx/scene/PerspectiveCamera;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/PerspectiveCamera;->fieldOfView:Ljavafx/beans/property/DoubleProperty;

    .line 131
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/PerspectiveCamera;->fieldOfView:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v1
.end method

.method public final getFieldOfView()D
    .locals 4

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/PerspectiveCamera;->fieldOfView:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/PerspectiveCamera;->fieldOfView:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    new-instance v3, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-boolean v5, v5, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;-><init>(Z)V

    move-object v2, v3

    .line 235
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getNearClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->setNearClip(F)V

    .line 236
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFarClip()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->setFarClip(F)V

    .line 237
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->setFieldOfView(F)V

    .line 238
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v1
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/Camera;->impl_updatePeer()V

    .line 249
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/PerspectiveCamera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;

    move-object v2, v3

    .line 250
    .local v2, "pgPerspectiveCamera":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/PerspectiveCamera;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->isVerticalFieldOfView()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->setVerticalFieldOfView(Z)V

    .line 252
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/PerspectiveCamera;->getFieldOfView()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->setFieldOfView(F)V

    .line 254
    :cond_0
    return-void
.end method

.method public final isFixedEyeAtCameraZero()Z
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/PerspectiveCamera;->fixedEyeAtCameraZero:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    return v0
.end method

.method public final isVerticalFieldOfView()Z
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    return v0

    .restart local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final setFieldOfView(D)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/PerspectiveCamera;->fieldOfViewProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 116
    return-void
.end method

.method public final setVerticalFieldOfView(Z)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfViewProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 146
    return-void
.end method

.method public final verticalFieldOfViewProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 9

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    new-instance v2, Ljavafx/scene/PerspectiveCamera$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "verticalFieldOfView"

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/PerspectiveCamera$2;-><init>(Ljavafx/scene/PerspectiveCamera;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;

    .line 161
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera;->verticalFieldOfView:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/PerspectiveCamera;
    return-object v0
.end method

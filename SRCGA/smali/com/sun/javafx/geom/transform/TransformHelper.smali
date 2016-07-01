.class public Lcom/sun/javafx/geom/transform/TransformHelper;
.super Ljava/lang/Object;
.source "TransformHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/TransformHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static general3dBoundsTransform(Lcom/sun/javafx/geom/transform/CanTransformVec3d;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 39

    .prologue
    .line 41
    move-object/from16 v2, p0

    .local v2, "tx":Lcom/sun/javafx/geom/transform/CanTransformVec3d;
    move-object/from16 v3, p1

    .local v3, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v4, p2

    .local v4, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p3

    .local v5, "tempV3d":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v30, v5

    if-nez v30, :cond_0

    .line 42
    new-instance v30, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v5, v30

    .line 45
    :cond_0
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v6, v30

    .line 46
    .local v6, "srcMinX":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v8, v30

    .line 47
    .local v8, "srcMinY":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v10, v30

    .line 48
    .local v10, "srcMinZ":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v12, v30

    .line 49
    .local v12, "srcMaxX":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v14, v30

    .line 50
    .local v14, "srcMaxY":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v16, v30

    .line 53
    .local v16, "srcMaxZ":D
    move-object/from16 v30, v5

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    move-wide/from16 v35, v16

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 54
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 55
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 56
    .local v18, "minX":D
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 57
    .local v20, "minY":D
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 58
    .local v22, "minZ":D
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 59
    .local v24, "maxX":D
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 60
    .local v26, "maxY":D
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 62
    .local v28, "maxZ":D
    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move-wide/from16 v33, v14

    move-wide/from16 v35, v16

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 63
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 64
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_1

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 65
    :cond_1
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 66
    :cond_2
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_3

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 67
    :cond_3
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_4

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 68
    :cond_4
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 69
    :cond_5
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_6

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 71
    :cond_6
    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v16

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 72
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 73
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_7

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 74
    :cond_7
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_8

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 75
    :cond_8
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_9

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 76
    :cond_9
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_a

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 77
    :cond_a
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_b

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 78
    :cond_b
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_c

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 80
    :cond_c
    move-object/from16 v30, v5

    move-wide/from16 v31, v12

    move-wide/from16 v33, v8

    move-wide/from16 v35, v16

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 81
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 82
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_d

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 83
    :cond_d
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_e

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 84
    :cond_e
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_f

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 85
    :cond_f
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_10

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 86
    :cond_10
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_11

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 87
    :cond_11
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_12

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 89
    :cond_12
    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move-wide/from16 v33, v14

    move-wide/from16 v35, v10

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 90
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 91
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_13

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 92
    :cond_13
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_14

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 93
    :cond_14
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_15

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 94
    :cond_15
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_16

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 95
    :cond_16
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_17

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 96
    :cond_17
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_18

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 98
    :cond_18
    move-object/from16 v30, v5

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    move-wide/from16 v35, v10

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 99
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 100
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_19

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 101
    :cond_19
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_1a

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 102
    :cond_1a
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_1b

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 103
    :cond_1b
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_1c

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 104
    :cond_1c
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_1d

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 105
    :cond_1d
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_1e

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 107
    :cond_1e
    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 108
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 109
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_1f

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 110
    :cond_1f
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_20

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 111
    :cond_20
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_21

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 112
    :cond_21
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_22

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 113
    :cond_22
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_23

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 114
    :cond_23
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_24

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 116
    :cond_24
    move-object/from16 v30, v5

    move-wide/from16 v31, v12

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 117
    move-object/from16 v30, v2

    move-object/from16 v31, v5

    move-object/from16 v32, v5

    invoke-interface/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/CanTransformVec3d;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v30

    move-object/from16 v5, v30

    .line 118
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v24

    cmpl-double v30, v30, v32

    if-lez v30, :cond_25

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 119
    :cond_25
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v26

    cmpl-double v30, v30, v32

    if-lez v30, :cond_26

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 120
    :cond_26
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_27

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v28, v30

    .line 121
    :cond_27
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    cmpg-double v30, v30, v32

    if-gez v30, :cond_28

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 122
    :cond_28
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    cmpg-double v30, v30, v32

    if-gez v30, :cond_29

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    move-wide/from16 v20, v30

    .line 123
    :cond_29
    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    cmpg-double v30, v30, v32

    if-gez v30, :cond_2a

    move-object/from16 v30, v5

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 125
    :cond_2a
    move-object/from16 v30, v4

    move-wide/from16 v31, v18

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-wide/from16 v32, v20

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-wide/from16 v33, v22

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    move-wide/from16 v34, v24

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    move-wide/from16 v35, v26

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    move-wide/from16 v36, v28

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v30 .. v36}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v30

    move-object/from16 v2, v30

    .end local v2    # "tx":Lcom/sun/javafx/geom/transform/CanTransformVec3d;
    return-object v2
.end method

.class public Lcom/sun/javafx/geom/PickRay;
.super Ljava/lang/Object;
.source "PickRay.java"


# static fields
.field static final EPS:D = 9.999999747378752E-6

.field private static final EPSILON_ABSOLUTE:D = 1.0E-5


# instance fields
.field private direction:Lcom/sun/javafx/geom/Vec3d;

.field private farClip:D

.field private nearClip:D

.field private origin:Lcom/sun/javafx/geom/Vec3d;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    .line 37
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    .line 38
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 39
    move-object v1, v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 44
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 23

    .prologue
    .line 50
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-wide/from16 v7, p7

    .local v7, "nearClip":D
    move-wide/from16 v9, p9

    .local v9, "farClip":D
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v11, v0

    new-instance v12, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    invoke-direct {v13}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    .line 37
    move-object v11, v0

    new-instance v12, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    invoke-direct {v13}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v12, v11, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    .line 38
    move-object v11, v0

    const-wide/16 v12, 0x0

    iput-wide v12, v11, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 39
    move-object v11, v0

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v12, v11, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 51
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v11 .. v21}, Lcom/sun/javafx/geom/PickRay;->set(DDDDD)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;DD)V
    .locals 15

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v1, p1

    .local v1, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p2

    .local v2, "direction":Lcom/sun/javafx/geom/Vec3d;
    move-wide/from16 v3, p3

    .local v3, "nearClip":D
    move-wide/from16 v5, p5

    .local v5, "farClip":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v7, v0

    new-instance v8, Lcom/sun/javafx/geom/Vec3d;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    .line 37
    move-object v7, v0

    new-instance v8, Lcom/sun/javafx/geom/Vec3d;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    .line 38
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 39
    move-object v7, v0

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v8, v7, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 47
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/PickRay;->set(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;DD)V

    .line 48
    return-void
.end method

.method static almostZero(D)Z
    .locals 6

    .prologue
    .line 281
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":D
    return v0

    .restart local v0    # "a":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static computeParallelPickRay(DDDLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 28

    .prologue
    .line 101
    move-wide/from16 v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "viewHeight":D
    move-object/from16 v6, p6

    .local v6, "cameraTransform":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v7, p7

    .local v7, "nearClip":D
    move-wide/from16 v9, p9

    .local v9, "farClip":D
    move-object/from16 v11, p11

    .local v11, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v14, v11

    if-nez v14, :cond_0

    .line 102
    new-instance v14, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v27, v14

    move-object/from16 v14, v27

    move-object/from16 v15, v27

    invoke-direct {v15}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object v11, v14

    .line 107
    :cond_0
    move-wide v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    .line 108
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    div-double v14, v14, v16

    move-wide v12, v14

    .line 110
    .local v12, "distanceZ":D
    move-object v14, v11

    move-wide v15, v0

    move-wide/from16 v17, v2

    move-wide/from16 v19, v12

    move-wide/from16 v21, v7

    move-wide/from16 v23, v12

    mul-double v21, v21, v23

    move-wide/from16 v23, v9

    move-wide/from16 v25, v12

    mul-double v23, v23, v25

    invoke-virtual/range {v14 .. v24}, Lcom/sun/javafx/geom/PickRay;->set(DDDDD)V

    .line 112
    move-object v14, v6

    if-eqz v14, :cond_1

    .line 113
    move-object v14, v11

    move-object v15, v6

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/PickRay;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 116
    :cond_1
    move-object v14, v11

    move-object v0, v14

    .end local v0    # "x":D
    return-object v0
.end method

.method public static computePerspectivePickRay(DDZDDDZLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 39

    .prologue
    .line 62
    move-wide/from16 v3, p0

    .local v3, "x":D
    move-wide/from16 v5, p2

    .local v5, "y":D
    move/from16 v7, p4

    .local v7, "fixedEye":Z
    move-wide/from16 v8, p5

    .local v8, "viewWidth":D
    move-wide/from16 v10, p7

    .local v10, "viewHeight":D
    move-wide/from16 v12, p9

    .local v12, "fieldOfViewRadians":D
    move/from16 v14, p11

    .local v14, "verticalFieldOfView":Z
    move-object/from16 v15, p12

    .local v15, "cameraTransform":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v16, p13

    .local v16, "nearClip":D
    move-wide/from16 v18, p15

    .local v18, "farClip":D
    move-object/from16 v20, p17

    .local v20, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v31, v20

    if-nez v31, :cond_0

    .line 63
    new-instance v31, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    invoke-direct/range {v32 .. v32}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v20, v31

    .line 66
    :cond_0
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v31

    move-object/from16 v21, v31

    .line 67
    .local v21, "direction":Lcom/sun/javafx/geom/Vec3d;
    move-wide/from16 v31, v8

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    move-wide/from16 v22, v31

    .line 68
    .local v22, "halfViewWidth":D
    move-wide/from16 v31, v10

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    move-wide/from16 v24, v31

    .line 69
    .local v24, "halfViewHeight":D
    move/from16 v31, v14

    if-eqz v31, :cond_1

    move-wide/from16 v31, v24

    :goto_0
    move-wide/from16 v26, v31

    .line 71
    .local v26, "halfViewDim":D
    move-wide/from16 v31, v26

    move-wide/from16 v33, v12

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->tan(D)D

    move-result-wide v33

    div-double v31, v31, v33

    move-wide/from16 v28, v31

    .line 73
    .local v28, "distanceZ":D
    move-object/from16 v31, v21

    move-wide/from16 v32, v3

    move-wide/from16 v34, v22

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 74
    move-object/from16 v31, v21

    move-wide/from16 v32, v5

    move-wide/from16 v34, v24

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 75
    move-object/from16 v31, v21

    move-wide/from16 v32, v28

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 77
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v31

    move-object/from16 v30, v31

    .line 79
    .local v30, "eye":Lcom/sun/javafx/geom/Vec3d;
    move/from16 v31, v7

    if-eqz v31, :cond_2

    .line 80
    move-object/from16 v31, v30

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    invoke-virtual/range {v31 .. v37}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 87
    :goto_1
    move-object/from16 v31, v20

    move-wide/from16 v32, v16

    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/Vec3d;->length()D

    move-result-wide v34

    move/from16 v36, v7

    if-eqz v36, :cond_3

    move-wide/from16 v36, v28

    :goto_2
    div-double v34, v34, v36

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 88
    move-object/from16 v31, v20

    move-wide/from16 v32, v18

    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/Vec3d;->length()D

    move-result-wide v34

    move/from16 v36, v7

    if-eqz v36, :cond_4

    move-wide/from16 v36, v28

    :goto_3
    div-double v34, v34, v36

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 90
    move-object/from16 v31, v20

    move-object/from16 v32, v15

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/geom/PickRay;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 92
    move-object/from16 v31, v20

    move-object/from16 v3, v31

    .end local v3    # "x":D
    return-object v3

    .line 69
    .end local v26    # "halfViewDim":D
    .end local v28    # "distanceZ":D
    .end local v30    # "eye":Lcom/sun/javafx/geom/Vec3d;
    .restart local v3    # "x":D
    :cond_1
    move-wide/from16 v31, v22

    goto/16 :goto_0

    .line 84
    .restart local v26    # "halfViewDim":D
    .restart local v28    # "distanceZ":D
    .restart local v30    # "eye":Lcom/sun/javafx/geom/Vec3d;
    :cond_2
    move-object/from16 v31, v30

    move-wide/from16 v32, v22

    move-wide/from16 v34, v24

    move-wide/from16 v36, v28

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    invoke-virtual/range {v31 .. v37}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    goto :goto_1

    .line 87
    :cond_3
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 88
    :cond_4
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    goto :goto_3
.end method

.method private static isNonZero(D)Z
    .locals 6

    .prologue
    .line 285
    move-wide v0, p0

    .local v0, "v":D
    move-wide v2, v0

    const-wide v4, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move-wide v2, v0

    const-wide v4, -0x411b074a80000000L    # -9.999999747378752E-6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "v":D
    return v0

    .restart local v0    # "v":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/sun/javafx/geom/PickRay;
    .locals 11

    .prologue
    .line 142
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/PickRay;
    new-instance v2, Lcom/sun/javafx/geom/PickRay;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/PickRay;->farClip:D

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/geom/PickRay;-><init>(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;DD)V

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v1
.end method

.method public distance(Lcom/sun/javafx/geom/Vec3d;)D
    .locals 14

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "iPnt":Lcom/sun/javafx/geom/Vec3d;
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->x:D

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 220
    .local v2, "x":D
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->y:D

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 221
    .local v4, "y":D
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 222
    .local v6, "z":D
    move-wide v8, v2

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-wide v10, v4

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v6

    move-wide v12, v6

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-wide v0
.end method

.method public getDirection(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "rv":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v1, v2

    .line 202
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 203
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v0
.end method

.method public getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v0
.end method

.method public getFarClip()D
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/PickRay;->farClip:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-wide v0
.end method

.method public getNearClip()D
    .locals 3

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-wide v0
.end method

.method public getOrigin(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "rv":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 167
    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v1, v2

    .line 169
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 170
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v0
.end method

.method public getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 297
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 298
    return-void
.end method

.method public project(Lcom/sun/javafx/geom/transform/BaseTransform;ZLcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;
    .locals 26

    .prologue
    .line 304
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v4, p1

    .local v4, "inversetx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p2

    .local v5, "perspective":Z
    move-object/from16 v6, p3

    .local v6, "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v7, p4

    .local v7, "ret":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v21, v6

    if-nez v21, :cond_0

    .line 305
    new-instance v21, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v6, v21

    .line 307
    :cond_0
    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v22, v0

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v21

    .line 308
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v21, v0

    move-wide/from16 v8, v21

    .line 309
    .local v8, "origX":D
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v21, v0

    move-wide/from16 v10, v21

    .line 310
    .local v10, "origY":D
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v21, v0

    move-wide/from16 v12, v21

    .line 311
    .local v12, "origZ":D
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/geom/Vec3d;->add(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V

    .line 312
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v21

    .line 313
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v21, v0

    move-wide/from16 v23, v8

    sub-double v21, v21, v23

    move-wide/from16 v14, v21

    .line 314
    .local v14, "dirX":D
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v21, v0

    move-wide/from16 v23, v10

    sub-double v21, v21, v23

    move-wide/from16 v16, v21

    .line 315
    .local v16, "dirY":D
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v21, v0

    move-wide/from16 v23, v12

    sub-double v21, v21, v23

    move-wide/from16 v18, v21

    .line 317
    .local v18, "dirZ":D
    new-instance v21, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v20, v21

    .line 318
    .local v20, "pr":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 319
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 320
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 322
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 323
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 324
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v21, v0

    move-wide/from16 v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 326
    move-object/from16 v21, v20

    move-object/from16 v3, v21

    .end local v3    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v3
.end method

.method public projectToZeroPlane(Lcom/sun/javafx/geom/transform/BaseTransform;ZLcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 31

    .prologue
    .line 246
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v4, p1

    .local v4, "inversetx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p2

    .local v5, "perspective":Z
    move-object/from16 v6, p3

    .local v6, "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v7, p4

    .local v7, "ret":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v22, v6

    if-nez v22, :cond_0

    .line 247
    new-instance v22, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v6, v22

    .line 249
    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v23, v0

    move-object/from16 v24, v6

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v22

    .line 250
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v22, v0

    move-wide/from16 v8, v22

    .line 251
    .local v8, "origX":D
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v22, v0

    move-wide/from16 v10, v22

    .line 252
    .local v10, "origY":D
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v22, v0

    move-wide/from16 v12, v22

    .line 253
    .local v12, "origZ":D
    move-object/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/Vec3d;->add(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V

    .line 254
    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v6

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v22

    .line 255
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 256
    .local v14, "dirX":D
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 257
    .local v16, "dirY":D
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 259
    .local v18, "dirZ":D
    move-wide/from16 v22, v18

    invoke-static/range {v22 .. v23}, Lcom/sun/javafx/geom/PickRay;->almostZero(D)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 260
    const/16 v22, 0x0

    move-object/from16 v3, v22

    .line 272
    .end local v3    # "this":Lcom/sun/javafx/geom/PickRay;
    :goto_0
    return-object v3

    .line 262
    .restart local v3    # "this":Lcom/sun/javafx/geom/PickRay;
    :cond_1
    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v18

    div-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 263
    .local v20, "t":D
    move/from16 v22, v5

    if-eqz v22, :cond_2

    move-wide/from16 v22, v20

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_2

    .line 265
    const/16 v22, 0x0

    move-object/from16 v3, v22

    goto :goto_0

    .line 267
    :cond_2
    move-object/from16 v22, v7

    if-nez v22, :cond_3

    .line 268
    new-instance v22, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object/from16 v7, v22

    .line 270
    :cond_3
    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v14

    move-wide/from16 v27, v20

    mul-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v10

    move-wide/from16 v26, v16

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 272
    move-object/from16 v22, v7

    move-object/from16 v3, v22

    goto :goto_0
.end method

.method public final set(DDDDD)V
    .locals 21

    .prologue
    .line 127
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/PickRay;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "z":D
    move-wide/from16 v9, p7

    .local v9, "nearClip":D
    move-wide/from16 v11, p9

    .local v11, "farClip":D
    move-object v13, v2

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/PickRay;->setOrigin(DDD)V

    .line 128
    move-object v13, v2

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v7

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/PickRay;->setDirection(DDD)V

    .line 129
    move-object v13, v2

    move-wide v14, v9

    iput-wide v14, v13, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 130
    move-object v13, v2

    move-wide v14, v11

    iput-wide v14, v13, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 131
    return-void
.end method

.method public final set(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;DD)V
    .locals 11

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "direction":Lcom/sun/javafx/geom/Vec3d;
    move-wide v3, p3

    .local v3, "nearClip":D
    move-wide/from16 v5, p5

    .local v5, "farClip":D
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/PickRay;->setOrigin(Lcom/sun/javafx/geom/Vec3d;)V

    .line 121
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/PickRay;->setDirection(Lcom/sun/javafx/geom/Vec3d;)V

    .line 122
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 123
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 124
    return-void
.end method

.method public setDirection(DDD)V
    .locals 15

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 196
    return-void
.end method

.method public setDirection(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "direction":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 185
    return-void
.end method

.method public setOrigin(DDD)V
    .locals 15

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 163
    return-void
.end method

.method public setOrigin(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 152
    return-void
.end method

.method public setPickRay(Lcom/sun/javafx/geom/PickRay;)V
    .locals 6

    .prologue
    .line 135
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v2, p1

    .local v2, "other":Lcom/sun/javafx/geom/PickRay;
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/PickRay;->setOrigin(Lcom/sun/javafx/geom/Vec3d;)V

    .line 136
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/PickRay;->setDirection(Lcom/sun/javafx/geom/Vec3d;)V

    .line 137
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/PickRay;->nearClip:D

    .line 138
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/PickRay;->farClip:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/PickRay;->farClip:D

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/PickRay;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/PickRay;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->origin:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 291
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/PickRay;->direction:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 292
    return-void
.end method

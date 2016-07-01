.class Lcom/sun/prism/impl/MeshUtil;
.super Ljava/lang/Object;
.source "MeshUtil.java"


# static fields
.field static final BIG_ENOUGH_NORMA2:F = 0.0625f

.field static final COS110:F = -0.33333334f

.field static final COS_1_DEGREE:F = 0.9998477f

.field static final DEAD_FACE:F = 9.094947E-13f

.field static final G_UV_PARALLEL:F = 0.9988f

.field static final INV_SQRT2:F = 0.70710677f

.field static final MAGIC_SMALL:F = 1.0E-10f

.field static final NORMAL_WELD_COS:F = 0.9952f

.field static final PI:D = 3.141592653589793

.field static final TANGENT_WELD_COS:F = 0.866f


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static buildQuat([Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Quat4f;)V
    .locals 17

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "tm":[Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v1, p1

    .local v1, "quat":Lcom/sun/javafx/geom/Quat4f;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v12

    move-object v2, v12

    .line 274
    .local v2, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/prism/impl/MeshTempState;->matrix:[[F

    move-object v3, v12

    .line 275
    .local v3, "m":[[F
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/prism/impl/MeshTempState;->vector:[F

    move-object v4, v12

    .line 277
    .local v4, "tmp":[F
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    :goto_0
    move v12, v5

    const/4 v13, 0x3

    if-ge v12, v13, :cond_0

    .line 278
    move-object v12, v3

    move v13, v5

    aget-object v12, v12, v13

    const/4 v13, 0x0

    move-object v14, v0

    move v15, v5

    aget-object v14, v14, v15

    iget v14, v14, Lcom/sun/javafx/geom/Vec3f;->x:F

    aput v14, v12, v13

    .line 279
    move-object v12, v3

    move v13, v5

    aget-object v12, v12, v13

    const/4 v13, 0x1

    move-object v14, v0

    move v15, v5

    aget-object v14, v14, v15

    iget v14, v14, Lcom/sun/javafx/geom/Vec3f;->y:F

    aput v14, v12, v13

    .line 280
    move-object v12, v3

    move v13, v5

    aget-object v12, v12, v13

    const/4 v13, 0x2

    move-object v14, v0

    move v15, v5

    aget-object v14, v14, v15

    iget v14, v14, Lcom/sun/javafx/geom/Vec3f;->z:F

    aput v14, v12, v13

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    :cond_0
    move-object v12, v3

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget v13, v13, v14

    add-float/2addr v12, v13

    move-object v13, v3

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget v13, v13, v14

    add-float/2addr v12, v13

    move v5, v12

    .line 285
    .local v5, "trace":F
    move v12, v5

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 286
    move v12, v5

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v6, v12

    .line 287
    .local v6, "s":F
    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v6

    div-float/2addr v12, v13

    move v7, v12

    .line 288
    .local v7, "t":F
    move-object v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    move v14, v6

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 289
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object v14, v3

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    move v14, v7

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 290
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget v14, v14, v15

    sub-float/2addr v13, v14

    move v14, v7

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 291
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object v14, v3

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-float/2addr v13, v14

    move v14, v7

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 293
    .line 321
    .end local v6    # "s":F
    .end local v7    # "t":F
    :goto_1
    return-void

    .line 294
    :cond_1
    const/4 v12, 0x3

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object v6, v12

    .line 295
    .local v6, "next":[I
    const/4 v12, 0x0

    move v7, v12

    .line 297
    .local v7, "i":I
    move-object v12, v3

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget v13, v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 298
    const/4 v12, 0x1

    move v7, v12

    .line 300
    :cond_2
    move-object v12, v3

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object v13, v3

    move v14, v7

    aget-object v13, v13, v14

    move v14, v7

    aget v13, v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 301
    const/4 v12, 0x2

    move v7, v12

    .line 304
    :cond_3
    move-object v12, v6

    move v13, v7

    aget v12, v12, v13

    move v8, v12

    .local v8, "j":I
    move-object v12, v6

    move v13, v8

    aget v12, v12, v13

    move v9, v12

    .line 305
    .local v9, "k":I
    move-object v12, v3

    move v13, v7

    aget-object v12, v12, v13

    move v13, v7

    aget v12, v12, v13

    move-object v13, v3

    move v14, v8

    aget-object v13, v13, v14

    move v14, v8

    aget v13, v13, v14

    sub-float/2addr v12, v13

    move-object v13, v3

    move v14, v9

    aget-object v13, v13, v14

    move v14, v9

    aget v13, v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v10, v12

    .line 307
    .local v10, "s":F
    move-object v12, v3

    move v13, v8

    aget-object v12, v12, v13

    move v13, v9

    aget v12, v12, v13

    move-object v13, v3

    move v14, v9

    aget-object v13, v13, v14

    move v14, v8

    aget v13, v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 308
    move v12, v10

    neg-float v12, v12

    move v10, v12

    .line 311
    :cond_4
    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v10

    div-float/2addr v12, v13

    move v11, v12

    .line 313
    .local v11, "t":F
    move-object v12, v4

    move v13, v7

    const/high16 v14, 0x3f000000    # 0.5f

    move v15, v10

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 314
    move-object v12, v1

    move-object v13, v3

    move v14, v8

    aget-object v13, v13, v14

    move v14, v9

    aget v13, v13, v14

    move-object v14, v3

    move v15, v9

    aget-object v14, v14, v15

    move v15, v8

    aget v14, v14, v15

    sub-float/2addr v13, v14

    move v14, v11

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 315
    move-object v12, v4

    move v13, v8

    move-object v14, v3

    move v15, v7

    aget-object v14, v14, v15

    move v15, v8

    aget v14, v14, v15

    move-object v15, v3

    move/from16 v16, v8

    aget-object v15, v15, v16

    move/from16 v16, v7

    aget v15, v15, v16

    add-float/2addr v14, v15

    move v15, v11

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 316
    move-object v12, v4

    move v13, v9

    move-object v14, v3

    move v15, v7

    aget-object v14, v14, v15

    move v15, v9

    aget v14, v14, v15

    move-object v15, v3

    move/from16 v16, v9

    aget-object v15, v15, v16

    move/from16 v16, v7

    aget v15, v15, v16

    add-float/2addr v14, v15

    move v15, v11

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 317
    move-object v12, v1

    move-object v13, v4

    const/4 v14, 0x0

    aget v13, v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 318
    move-object v12, v1

    move-object v13, v4

    const/4 v14, 0x1

    aget v13, v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 319
    move-object v12, v1

    move-object v13, v4

    const/4 v14, 0x2

    aget v13, v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/Quat4f;->z:F

    goto/16 :goto_1

    .line 294
    :array_0
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method static clamp(DDD)D
    .locals 10

    .prologue
    .line 197
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "min":D
    move-wide v4, p4

    .local v4, "max":D
    move-wide v6, v0

    move-wide v8, v4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    move-wide v6, v0

    move-wide v8, v2

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    move-wide v6, v0

    :goto_0
    move-wide v0, v6

    .end local v0    # "x":D
    return-wide v0

    .restart local v0    # "x":D
    :cond_0
    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_0
.end method

.method static computeTBNNormalized(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;[Lcom/sun/javafx/geom/Vec3f;)V
    .locals 16

    .prologue
    .line 107
    move-object/from16 v0, p0

    .local v0, "pa":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v1, p1

    .local v1, "pb":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v2, p2

    .local v2, "pc":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v3, p3

    .local v3, "ta":Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v4, p4

    .local v4, "tb":Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v5, p5

    .local v5, "tc":Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v6, p6

    .local v6, "norm":[Lcom/sun/javafx/geom/Vec3f;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v11

    move-object v7, v11

    .line 108
    .local v7, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object v11, v7

    iget-object v11, v11, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v8, v11

    .line 109
    .local v8, "n":Lcom/sun/javafx/geom/Vec3f;
    move-object v11, v7

    iget-object v11, v11, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    move-object v9, v11

    .line 110
    .local v9, "v1":Lcom/sun/javafx/geom/Vec3f;
    move-object v11, v7

    iget-object v11, v11, Lcom/sun/prism/impl/MeshTempState;->vec3f3:Lcom/sun/javafx/geom/Vec3f;

    move-object v10, v11

    .line 113
    .local v10, "v2":Lcom/sun/javafx/geom/Vec3f;
    move-object v11, v9

    move-object v12, v1

    move-object v13, v0

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 114
    move-object v11, v10

    move-object v12, v2

    move-object v13, v0

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 115
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 116
    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v8

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 117
    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 119
    move-object v11, v9

    const/4 v12, 0x0

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Vec2f;->x:F

    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v13, v14

    move-object v14, v4

    iget v14, v14, Lcom/sun/javafx/geom/Vec2f;->y:F

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/geom/Vec3f;->set(FFF)V

    .line 120
    move-object v11, v10

    const/4 v12, 0x0

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Vec2f;->x:F

    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v13, v14

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Vec2f;->y:F

    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/geom/Vec3f;->set(FFF)V

    .line 122
    move-object v11, v9

    iget v11, v11, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v12, v10

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v11, v12

    move-object v12, v9

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v13, v10

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    .line 123
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/prism/impl/MeshUtil;->generateTB(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)V

    .line 124
    .line 148
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v11, v9

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 129
    move-object v11, v10

    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 130
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 131
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->y:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 132
    move-object v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 134
    move-object v11, v9

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 135
    move-object v11, v10

    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 136
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 137
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->y:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 138
    move-object v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 140
    move-object v11, v9

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 141
    move-object v11, v10

    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 142
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 143
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->y:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 144
    move-object v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v8

    iget v12, v12, Lcom/sun/javafx/geom/Vec3f;->z:F

    neg-float v12, v12

    move-object v13, v8

    iget v13, v13, Lcom/sun/javafx/geom/Vec3f;->x:F

    div-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 146
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 147
    move-object v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 148
    goto/16 :goto_0
.end method

.method static fabs(F)F
    .locals 3

    .prologue
    .line 86
    move v0, p0

    .local v0, "x":F
    move v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v1, v0

    neg-float v1, v1

    :goto_0
    move v0, v1

    .end local v0    # "x":F
    return v0

    .restart local v0    # "x":F
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method static fixParallelTB([Lcom/sun/javafx/geom/Vec3f;)V
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "ntb":[Lcom/sun/javafx/geom/Vec3f;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v4

    move-object v1, v4

    .line 159
    .local v1, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v2, v4

    .line 160
    .local v2, "median":Lcom/sun/javafx/geom/Vec3f;
    move-object v4, v2

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 161
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    move-object v3, v4

    .line 162
    .local v3, "ort":Lcom/sun/javafx/geom/Vec3f;
    move-object v4, v3

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 163
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 164
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 167
    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 168
    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const v5, 0x3f3504f3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 171
    move-object v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 172
    move-object v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x3f3504f3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 173
    return-void
.end method

.method static fixTSpace([Lcom/sun/javafx/geom/Vec3f;)V
    .locals 30

    .prologue
    .line 201
    move-object/from16 v2, p0

    .local v2, "norm":[Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v2

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v24

    move/from16 v3, v24

    .line 203
    .local v3, "nNorm":F
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v24

    move-object/from16 v4, v24

    .line 204
    .local v4, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v5, v24

    .line 205
    .local v5, "n1":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 206
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v6, v24

    .line 207
    .local v6, "n2":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v6

    move-object/from16 v25, v2

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 208
    move-object/from16 v24, v2

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v25, v5

    invoke-static/range {v24 .. v25}, Lcom/sun/prism/impl/MeshUtil;->getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 209
    move-object/from16 v24, v2

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v25, v6

    invoke-static/range {v24 .. v25}, Lcom/sun/prism/impl/MeshUtil;->getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 211
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v24

    move/from16 v7, v24

    .line 212
    .local v7, "n1Length":F
    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v24

    move/from16 v8, v24

    .line 214
    .local v8, "n2Length":F
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v24

    move/from16 v25, v7

    move/from16 v26, v8

    mul-float v25, v25, v26

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v9, v24

    .line 215
    .local v9, "cosPhi":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f3:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 216
    .local v11, "e1":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f4:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v12, v24

    .line 218
    .local v12, "e2":Lcom/sun/javafx/geom/Vec3f;
    move-wide/from16 v24, v9

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sun/prism/impl/MeshUtil;->fabs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fefef9db22d0e56L    # 0.998

    cmpl-double v24, v24, v26

    if-lez v24, :cond_1

    .line 219
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f5:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v13, v24

    .line 220
    .local v13, "n2fix":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v13

    move-object/from16 v25, v2

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v26, v5

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 221
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 223
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 224
    move-object/from16 v24, v13

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v24

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_0

    .line 225
    move-object/from16 v24, v12

    const/high16 v25, -0x40800000    # -1.0f

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 227
    :cond_0
    move-object/from16 v24, v11

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 228
    move-object/from16 v24, v11

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v26, v7

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 229
    .line 267
    .end local v13    # "n2fix":Lcom/sun/javafx/geom/Vec3f;
    :goto_0
    move-object/from16 v24, v2

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v25, v11

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 268
    move-object/from16 v24, v2

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 269
    move-object/from16 v24, v2

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v26, v3

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 270
    return-void

    .line 230
    :cond_1
    move-wide/from16 v24, v9

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v24 .. v29}, Lcom/sun/prism/impl/MeshUtil;->clamp(DDD)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 231
    .local v13, "phi":D
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-wide/from16 v26, v13

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 232
    .local v15, "alpha":D
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec2f1:Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v24, v0

    move-object/from16 v17, v24

    .line 233
    .local v17, "e1Local":Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v24, v17

    move-wide/from16 v25, v15

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v26, v15

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/geom/Vec2f;->set(FF)V

    .line 234
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec2f2:Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v24, v0

    move-object/from16 v18, v24

    .line 235
    .local v18, "e2Local":Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v24, v18

    move-wide/from16 v25, v15

    move-wide/from16 v27, v13

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v26, v15

    move-wide/from16 v28, v13

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/geom/Vec2f;->set(FF)V

    .line 237
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f5:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v19, v24

    .line 238
    .local v19, "n1T":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v19

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 239
    move-object/from16 v24, v5

    move-object/from16 v25, v19

    invoke-static/range {v24 .. v25}, Lcom/sun/prism/impl/MeshUtil;->getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 240
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v24

    move/from16 v20, v24

    .line 243
    .local v20, "n1TLength":F
    move-object/from16 v24, v11

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 244
    move-object/from16 v24, v11

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec2f;->y:F

    move/from16 v25, v0

    move/from16 v26, v7

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 246
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vec3f6:Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    move-object/from16 v21, v24

    .line 247
    .local v21, "n1TT":Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v24, v21

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 248
    move-object/from16 v24, v21

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec2f;->x:F

    move/from16 v25, v0

    move/from16 v26, v20

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 249
    move-object/from16 v24, v11

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;)V

    .line 252
    move-object/from16 v24, v12

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 253
    move-object/from16 v24, v12

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec2f;->y:F

    move/from16 v25, v0

    move/from16 v26, v7

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 256
    move-object/from16 v24, v21

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 257
    move-object/from16 v24, v21

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec2f;->x:F

    move/from16 v25, v0

    move/from16 v26, v20

    div-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 258
    move-object/from16 v24, v12

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;)V

    .line 260
    move-object/from16 v24, v11

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v24

    move/from16 v22, v24

    .line 261
    .local v22, "e1DotN1":F
    move-object/from16 v24, v12

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v24

    move/from16 v23, v24

    goto/16 :goto_0
.end method

.method static generateTB(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)V
    .locals 11

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "v0":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "v1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "v2":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, p3

    .local v3, "ntb":[Lcom/sun/javafx/geom/Vec3f;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v7

    move-object v4, v7

    .line 180
    .local v4, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v5, v7

    .line 181
    .local v5, "a":Lcom/sun/javafx/geom/Vec3f;
    move-object v7, v5

    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 182
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v7

    .line 183
    .local v6, "b":Lcom/sun/javafx/geom/Vec3f;
    move-object v7, v6

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Vec3f;->sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 185
    move-object v7, v5

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v7

    move-object v8, v6

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 186
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 187
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 188
    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 191
    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 192
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v3

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    goto :goto_0
.end method

.method static getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "b":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 93
    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 94
    return-void
.end method

.method static isDeadFace(F)Z
    .locals 3

    .prologue
    .line 52
    move v0, p0

    .local v0, "areaSquared":F
    move v1, v0

    const/high16 v2, 0x2b800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "areaSquared":F
    return v0

    .restart local v0    # "areaSquared":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isDeadFace([I)Z
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "f":[I
    move-object v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eq v1, v2, :cond_0

    move-object v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    if-eq v1, v2, :cond_0

    move-object v1, v0

    const/4 v2, 0x2

    aget v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "f":[I
    return v0

    .restart local v0    # "f":[I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isNormalAlmostEqual(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)Z
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "n1":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "n2":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v2

    const v3, 0x3f7ff605

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "n1":Lcom/sun/javafx/geom/Vec3f;
    return v0

    .restart local v0    # "n1":Lcom/sun/javafx/geom/Vec3f;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isNormalOkAfterWeld(Lcom/sun/javafx/geom/Vec3f;)Z
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "normalSum":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v1

    const/high16 v2, 0x3d800000    # 0.0625f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "normalSum":Lcom/sun/javafx/geom/Vec3f;
    return v0

    .restart local v0    # "normalSum":Lcom/sun/javafx/geom/Vec3f;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isOppositeLookingNormals([Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)Z
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "n1":[Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "n2":[Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v3

    move v2, v3

    .line 82
    .local v2, "cosPhi":F
    move v3, v2

    const v4, -0x41555555

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "n1":[Lcom/sun/javafx/geom/Vec3f;
    return v0

    .restart local v0    # "n1":[Lcom/sun/javafx/geom/Vec3f;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isTangentOK([Lcom/sun/javafx/geom/Vec3f;)Z
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "nSum":[Lcom/sun/javafx/geom/Vec3f;
    move-object v1, v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/prism/impl/MeshUtil;->isTangentOk([Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v1

    move v0, v1

    .end local v0    # "nSum":[Lcom/sun/javafx/geom/Vec3f;
    return v0
.end method

.method static isTangentOk([Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)Z
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "t1":[Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "t2":[Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v2

    const v3, 0x3f7ec56d    # 0.9952f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 65
    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v2

    const v3, 0x3f5db22d    # 0.866f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 66
    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v2

    const v3, 0x3f5db22d    # 0.866f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "t1":[Lcom/sun/javafx/geom/Vec3f;
    return v0

    .restart local v0    # "t1":[Lcom/sun/javafx/geom/Vec3f;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static orthogonalizeTB([Lcom/sun/javafx/geom/Vec3f;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "norm":[Lcom/sun/javafx/geom/Vec3f;
    move-object v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/sun/prism/impl/MeshUtil;->getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/sun/prism/impl/MeshUtil;->getOrt(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 101
    move-object v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 102
    move-object v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 103
    return-void
.end method

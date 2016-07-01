.class public Ljavafx/geometry/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"


# static fields
.field public static final ZERO:Ljavafx/geometry/Point3D;


# instance fields
.field private hash:I

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/Point3D;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    sput-object v0, Ljavafx/geometry/Point3D;->ZERO:Ljavafx/geometry/Point3D;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "z"
        .end annotation
    .end param

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3D;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/geometry/Point3D;->hash:I

    .line 102
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Ljavafx/geometry/Point3D;->x:D

    .line 103
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Ljavafx/geometry/Point3D;->y:D

    .line 104
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Ljavafx/geometry/Point3D;->z:D

    .line 105
    return-void
.end method


# virtual methods
.method public add(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 143
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v1

    .line 144
    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v10

    move-wide v12, v2

    add-double/2addr v10, v12

    move-object v12, v1

    .line 145
    invoke-virtual {v12}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v12

    move-wide v14, v4

    add-double/2addr v12, v14

    move-object v14, v1

    .line 146
    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v14

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public add(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 158
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->add(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public angle(DDD)D
    .locals 27

    .prologue
    .line 258
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 259
    .local v8, "ax":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 260
    .local v10, "ay":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 262
    .local v12, "az":D
    move-wide/from16 v16, v8

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v10

    move-wide/from16 v22, v10

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v20, v12

    move-wide/from16 v22, v12

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v20, v2

    move-wide/from16 v22, v2

    mul-double v20, v20, v22

    move-wide/from16 v22, v4

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v22, v6

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    div-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 265
    .local v14, "delta":D
    move-wide/from16 v16, v14

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 266
    const-wide/16 v16, 0x0

    move-wide/from16 v1, v16

    .line 272
    .end local v1    # "this":Ljavafx/geometry/Point3D;
    :goto_0
    return-wide v1

    .line 268
    .restart local v1    # "this":Ljavafx/geometry/Point3D;
    :cond_0
    move-wide/from16 v16, v14

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    .line 269
    const-wide v16, 0x4066800000000000L    # 180.0

    move-wide/from16 v1, v16

    goto :goto_0

    .line 272
    :cond_1
    move-wide/from16 v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v1, v16

    goto :goto_0
.end method

.method public angle(Ljavafx/geometry/Point3D;)D
    .locals 10

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->angle(DDD)D

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public angle(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)D
    .locals 34

    .prologue
    .line 300
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object/from16 v2, p1

    .local v2, "p1":Ljavafx/geometry/Point3D;
    move-object/from16 v3, p2

    .local v3, "p2":Ljavafx/geometry/Point3D;
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 301
    .local v4, "x":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 302
    .local v6, "y":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 304
    .local v8, "z":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 305
    .local v10, "ax":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 306
    .local v12, "ay":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 307
    .local v14, "az":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 308
    .local v16, "bx":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 309
    .local v18, "by":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 311
    .local v20, "bz":D
    move-wide/from16 v24, v10

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v18

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v10

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    move-wide/from16 v30, v12

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v14

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v20

    move-wide/from16 v32, v20

    mul-double v30, v30, v32

    add-double v28, v28, v30

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 314
    .local v22, "delta":D
    move-wide/from16 v24, v22

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 315
    const-wide/16 v24, 0x0

    move-wide/from16 v1, v24

    .line 321
    .end local v1    # "this":Ljavafx/geometry/Point3D;
    :goto_0
    return-wide v1

    .line 317
    .restart local v1    # "this":Ljavafx/geometry/Point3D;
    :cond_0
    move-wide/from16 v24, v22

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_1

    .line 318
    const-wide v24, 0x4066800000000000L    # 180.0

    move-wide/from16 v1, v24

    goto :goto_0

    .line 321
    :cond_1
    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    move-wide/from16 v1, v24

    goto :goto_0
.end method

.method public crossProduct(DDD)Ljavafx/geometry/Point3D;
    .locals 27

    .prologue
    .line 373
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v14

    move-wide v8, v14

    .line 374
    .local v8, "ax":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v14

    move-wide v10, v14

    .line 375
    .local v10, "ay":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v14

    move-wide v12, v14

    .line 377
    .local v12, "az":D
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    move-wide/from16 v16, v10

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v12

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v6

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v4

    mul-double v20, v20, v22

    move-wide/from16 v22, v10

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v14

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public crossProduct(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 392
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "vector":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->crossProduct(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public distance(DDD)D
    .locals 21

    .prologue
    .line 116
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x1":D
    move-wide/from16 v4, p3

    .local v4, "y1":D
    move-wide/from16 v6, p5

    .local v6, "z1":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v14

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 117
    .local v8, "a":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v14

    move-wide/from16 v16, v4

    sub-double v14, v14, v16

    move-wide v10, v14

    .line 118
    .local v10, "b":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v14

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 119
    .local v12, "c":D
    move-wide v14, v8

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    move-wide/from16 v16, v10

    move-wide/from16 v18, v10

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v12

    move-wide/from16 v18, v12

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-wide v1, v14

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public distance(Ljavafx/geometry/Point3D;)D
    .locals 10

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->distance(DDD)D

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public dotProduct(DDD)D
    .locals 15

    .prologue
    .line 348
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v10

    move-wide v12, v6

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public dotProduct(Ljavafx/geometry/Point3D;)D
    .locals 10

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "vector":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->dotProduct(DDD)D

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 400
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 404
    .end local v1    # "this":Ljavafx/geometry/Point3D;
    :goto_0
    return v1

    .line 401
    .restart local v1    # "this":Ljavafx/geometry/Point3D;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/Point3D;

    if-eqz v4, :cond_2

    .line 402
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/Point3D;

    move-object v3, v4

    .line 403
    .local v3, "other":Ljavafx/geometry/Point3D;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 404
    .end local v3    # "other":Ljavafx/geometry/Point3D;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Point3D;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point3D;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Point3D;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point3D;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Point3D;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point3D;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 412
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Point3D;->hash:I

    if-nez v4, :cond_0

    .line 413
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 414
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 415
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 416
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 417
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/Point3D;->hash:I

    .line 419
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Point3D;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return v1
.end method

.method public magnitude()D
    .locals 14

    .prologue
    .line 331
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-wide v2, v8

    .line 332
    .local v2, "x":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v8

    move-wide v4, v8

    .line 333
    .local v4, "y":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    move-wide v6, v8

    .line 335
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

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-wide v1
.end method

.method public midpoint(DDD)Ljavafx/geometry/Point3D;
    .locals 21

    .prologue
    .line 230
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-object v12, v1

    .line 231
    invoke-virtual {v12}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v12

    move-wide v14, v2

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v12, v4

    move-object v14, v1

    .line 232
    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v14

    move-wide/from16 v16, v4

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v1

    .line 233
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v16

    move-wide/from16 v18, v6

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public midpoint(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 245
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->midpoint(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public multiply(D)Ljavafx/geometry/Point3D;
    .locals 15

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "factor":D
    new-instance v4, Ljavafx/geometry/Point3D;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct/range {v5 .. v11}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v4

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public normalize()Ljavafx/geometry/Point3D;
    .locals 15

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->magnitude()D

    move-result-wide v4

    move-wide v2, v4

    .line 210
    .local v2, "mag":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 211
    new-instance v4, Ljavafx/geometry/Point3D;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v5 .. v11}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v4

    .line 217
    .end local v1    # "this":Ljavafx/geometry/Point3D;
    :goto_0
    return-object v1

    .line 214
    .restart local v1    # "this":Ljavafx/geometry/Point3D;
    :cond_0
    new-instance v4, Ljavafx/geometry/Point3D;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    .line 215
    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    move-wide v8, v2

    div-double/2addr v6, v8

    move-object v8, v1

    .line 216
    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v8

    move-wide v10, v2

    div-double/2addr v8, v10

    move-object v10, v1

    .line 217
    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v10

    move-wide v12, v2

    div-double/2addr v10, v12

    invoke-direct/range {v5 .. v11}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v4

    goto :goto_0
.end method

.method public subtract(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 171
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v1

    .line 172
    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v1

    .line 173
    invoke-virtual {v12}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v12

    move-wide v14, v4

    sub-double/2addr v12, v14

    move-object v14, v1

    .line 174
    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v14

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public subtract(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point3D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/Point3D;->subtract(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point3D;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Point3D [x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point3D;
    return-object v0
.end method

.class public Ljavafx/geometry/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# static fields
.field public static final ZERO:Ljavafx/geometry/Point2D;


# instance fields
.field private hash:I

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 42
    new-instance v0, Ljavafx/geometry/Point2D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Point2D;-><init>(DD)V

    sput-object v0, Ljavafx/geometry/Point2D;->ZERO:Ljavafx/geometry/Point2D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
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

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/geometry/Point2D;->hash:I

    .line 85
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/geometry/Point2D;->x:D

    .line 86
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/geometry/Point2D;->y:D

    .line 87
    return-void
.end method


# virtual methods
.method public add(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    .line 123
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-wide v10, v2

    add-double/2addr v8, v10

    move-object v10, v1

    .line 124
    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    move-wide v12, v4

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public add(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 136
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;->add(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public angle(DD)D
    .locals 23

    .prologue
    .line 230
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-wide v6, v12

    .line 231
    .local v6, "ax":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    move-wide v8, v12

    .line 233
    .local v8, "ay":D
    move-wide v12, v6

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v6

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v2

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    move-wide/from16 v18, v4

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    add-double v16, v16, v18

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 236
    .local v10, "delta":D
    move-wide v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 237
    const-wide/16 v12, 0x0

    move-wide v1, v12

    .line 243
    .end local v1    # "this":Ljavafx/geometry/Point2D;
    :goto_0
    return-wide v1

    .line 239
    .restart local v1    # "this":Ljavafx/geometry/Point2D;
    :cond_0
    move-wide v12, v10

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 240
    const-wide v12, 0x4066800000000000L    # 180.0

    move-wide v1, v12

    goto :goto_0

    .line 243
    :cond_1
    move-wide v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method public angle(Ljavafx/geometry/Point2D;)D
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavafx/geometry/Point2D;->angle(DD)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-wide v0
.end method

.method public angle(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)D
    .locals 28

    .prologue
    .line 271
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object/from16 v2, p1

    .local v2, "p1":Ljavafx/geometry/Point2D;
    move-object/from16 v3, p2

    .local v3, "p2":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 272
    .local v4, "x":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 274
    .local v6, "y":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v8, v18

    .line 275
    .local v8, "ax":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 276
    .local v10, "ay":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 277
    .local v12, "bx":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 279
    .local v14, "by":D
    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v20, v10

    move-wide/from16 v22, v14

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v8

    mul-double v20, v20, v22

    move-wide/from16 v22, v10

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    move-wide/from16 v24, v14

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 282
    .local v16, "delta":D
    move-wide/from16 v18, v16

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 283
    const-wide/16 v18, 0x0

    move-wide/from16 v1, v18

    .line 289
    .end local v1    # "this":Ljavafx/geometry/Point2D;
    :goto_0
    return-wide v1

    .line 285
    .restart local v1    # "this":Ljavafx/geometry/Point2D;
    :cond_0
    move-wide/from16 v18, v16

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1

    .line 286
    const-wide v18, 0x4066800000000000L    # 180.0

    move-wide/from16 v1, v18

    goto :goto_0

    .line 289
    :cond_1
    move-wide/from16 v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v1, v18

    goto :goto_0
.end method

.method public crossProduct(DD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 338
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 339
    .local v6, "ax":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 341
    .local v8, "ay":D
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-wide/from16 v18, v8

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v10

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public crossProduct(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point3D;
    .locals 8

    .prologue
    .line 354
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v2, p1

    .local v2, "vector":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;->crossProduct(DD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public distance(DD)D
    .locals 17

    .prologue
    .line 97
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x1":D
    move-wide/from16 v4, p3

    .local v4, "y1":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-wide v6, v10

    .line 98
    .local v6, "a":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 99
    .local v8, "b":D
    move-wide v10, v6

    move-wide v12, v6

    mul-double/2addr v10, v12

    move-wide v12, v8

    move-wide v14, v8

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v1, v10

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-wide v1
.end method

.method public distance(Ljavafx/geometry/Point2D;)D
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-wide v0
.end method

.method public dotProduct(DD)D
    .locals 13

    .prologue
    .line 314
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-wide v1
.end method

.method public dotProduct(Ljavafx/geometry/Point2D;)D
    .locals 7

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-object v1, p1

    .local v1, "vector":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavafx/geometry/Point2D;->dotProduct(DD)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 364
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 368
    .end local v1    # "this":Ljavafx/geometry/Point2D;
    :goto_0
    return v1

    .line 365
    .restart local v1    # "this":Ljavafx/geometry/Point2D;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/Point2D;

    if-eqz v4, :cond_2

    .line 366
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/Point2D;

    move-object v3, v4

    .line 367
    .local v3, "other":Ljavafx/geometry/Point2D;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

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

    .line 368
    .end local v3    # "other":Ljavafx/geometry/Point2D;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Point2D;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Point2D;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 376
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Point2D;->hash:I

    if-nez v4, :cond_0

    .line 377
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 378
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 379
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 380
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/Point2D;->hash:I

    .line 382
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Point2D;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return v1
.end method

.method public magnitude()D
    .locals 12

    .prologue
    .line 299
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-wide v2, v6

    .line 300
    .local v2, "x":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 302
    .local v4, "y":D
    move-wide v6, v2

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-wide v1
.end method

.method public midpoint(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 204
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-object v10, v1

    .line 205
    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    .line 206
    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    move-wide v14, v4

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public midpoint(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 218
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;->midpoint(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public multiply(D)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide v2, p1

    .local v2, "factor":D
    new-instance v4, Ljavafx/geometry/Point2D;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v4

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public normalize()Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->magnitude()D

    move-result-wide v4

    move-wide v2, v4

    .line 186
    .local v2, "mag":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 187
    new-instance v4, Ljavafx/geometry/Point2D;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v4

    .line 192
    .end local v1    # "this":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 190
    .restart local v1    # "this":Ljavafx/geometry/Point2D;
    :cond_0
    new-instance v4, Ljavafx/geometry/Point2D;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    .line 191
    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-wide v8, v2

    div-double/2addr v6, v8

    move-object v8, v1

    .line 192
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-wide v10, v2

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v4

    goto :goto_0
.end method

.method public subtract(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 148
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    .line 149
    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-wide v10, v2

    sub-double/2addr v8, v10

    move-object v10, v1

    .line 150
    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public subtract(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Point2D;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;->subtract(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/geometry/Point2D;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Point2D [x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point2D;
    return-object v0
.end method

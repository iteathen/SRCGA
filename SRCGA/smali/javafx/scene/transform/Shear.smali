.class public Ljavafx/scene/transform/Shear;
.super Ljavafx/scene/transform/Transform;
.source "Shear.java"


# instance fields
.field private pivotX:Ljavafx/beans/property/DoubleProperty;

.field private pivotY:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 77
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Shear;->setX(D)V

    .line 78
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Shear;->setY(D)V

    .line 79
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "pivotX":D
    move-wide/from16 v7, p7

    .local v7, "pivotY":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 91
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setX(D)V

    .line 92
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setY(D)V

    .line 93
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setPivotX(D)V

    .line 94
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setPivotY(D)V

    .line 95
    return-void
.end method


# virtual methods
.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 12

    .prologue
    .line 728
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Ljavafx/scene/transform/Affine;->appendShear(DDDD)V

    .line 729
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Shear;->clone()Ljavafx/scene/transform/Shear;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Shear;
    .locals 13

    .prologue
    .line 403
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    new-instance v2, Ljavafx/scene/transform/Shear;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Ljavafx/scene/transform/Shear;-><init>(DDDD)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method public bridge synthetic clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Shear;->clone()Ljavafx/scene/transform/Shear;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.method computeIs2D()Z
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return v0
.end method

.method computeIsIdentity()Z
    .locals 6

    .prologue
    .line 296
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 51

    .prologue
    .line 346
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v3, p1

    .local v3, "transform":Ljavafx/scene/transform/Transform;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavafx/scene/transform/Affine;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 347
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v24

    check-cast v24, Ljavafx/scene/transform/Affine;

    move-object/from16 v4, v24

    .line 348
    .local v4, "a":Ljavafx/scene/transform/Affine;
    move-object/from16 v24, v4

    move-object/from16 v25, v2

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/transform/Affine;->prepend(Ljavafx/scene/transform/Transform;)V

    .line 349
    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .line 375
    .end local v2    # "this":Ljavafx/scene/transform/Shear;
    .end local v4    # "a":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v2

    .line 352
    .restart local v2    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 353
    .local v4, "sx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 355
    .local v6, "sy":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 356
    .local v8, "txx":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 357
    .local v10, "txy":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 358
    .local v12, "txz":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 359
    .local v14, "ttx":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 360
    .local v16, "tyx":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 361
    .local v18, "tyy":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 362
    .local v20, "tyz":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 363
    .local v22, "tty":D
    new-instance v24, Ljavafx/scene/transform/Affine;

    move-object/from16 v50, v24

    move-object/from16 v24, v50

    move-object/from16 v25, v50

    move-wide/from16 v26, v8

    move-wide/from16 v28, v4

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v4

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v4

    move-wide/from16 v34, v20

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v32, v14

    move-wide/from16 v34, v4

    move-wide/from16 v36, v22

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v34, v4

    move-object/from16 v36, v2

    .line 367
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v34, v6

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-wide/from16 v36, v16

    add-double v34, v34, v36

    move-wide/from16 v36, v6

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    move-wide/from16 v38, v18

    add-double v36, v36, v38

    move-wide/from16 v38, v6

    move-wide/from16 v40, v12

    mul-double v38, v38, v40

    move-wide/from16 v40, v20

    add-double v38, v38, v40

    move-wide/from16 v40, v6

    move-wide/from16 v42, v14

    mul-double v40, v40, v42

    move-wide/from16 v42, v22

    add-double v40, v40, v42

    move-wide/from16 v42, v6

    move-object/from16 v44, v2

    .line 371
    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v44

    mul-double v42, v42, v44

    sub-double v40, v40, v42

    move-object/from16 v42, v3

    .line 372
    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v42

    move-object/from16 v44, v3

    .line 373
    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v44

    move-object/from16 v46, v3

    .line 374
    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v46

    move-object/from16 v48, v3

    .line 375
    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v48

    invoke-direct/range {v25 .. v49}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v2, v24

    goto/16 :goto_0
.end method

.method public createInverse()Ljavafx/scene/transform/Transform;
    .locals 41

    .prologue
    .line 380
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Shear;
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v14

    move-wide v4, v14

    .line 381
    .local v4, "sx":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v14

    move-wide v6, v14

    .line 383
    .local v6, "sy":D
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    .line 384
    new-instance v14, Ljavafx/scene/transform/Shear;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    move-wide/from16 v16, v4

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v22

    invoke-direct/range {v15 .. v23}, Ljavafx/scene/transform/Shear;-><init>(DDDD)V

    move-object v3, v14

    .line 395
    .end local v3    # "this":Ljavafx/scene/transform/Shear;
    :goto_0
    return-object v3

    .line 387
    .restart local v3    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 388
    new-instance v14, Ljavafx/scene/transform/Shear;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    invoke-direct/range {v15 .. v23}, Ljavafx/scene/transform/Shear;-><init>(DDDD)V

    move-object v3, v14

    goto :goto_0

    .line 391
    :cond_1
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v14

    move-wide v8, v14

    .line 392
    .local v8, "px":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v14

    move-wide v10, v14

    .line 393
    .local v10, "py":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    div-double v14, v14, v16

    move-wide v12, v14

    .line 395
    .local v12, "coef":D
    new-instance v14, Ljavafx/scene/transform/Affine;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    move-wide/from16 v16, v12

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v10

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    mul-double v22, v22, v24

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    move-wide/from16 v24, v6

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v12

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    mul-double v28, v28, v30

    add-double v26, v26, v28

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    move-wide/from16 v32, v6

    move-wide/from16 v34, v4

    move-wide/from16 v36, v6

    mul-double v34, v34, v36

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-wide/from16 v36, v4

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    mul-double v32, v32, v34

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    add-double v30, v30, v32

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    const-wide/16 v38, 0x0

    invoke-direct/range {v15 .. v39}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object v3, v14

    goto/16 :goto_0
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 471
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-wide v8, v2

    move-object v10, v1

    .line 472
    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    .line 473
    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-wide v12, v4

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 17

    .prologue
    .line 478
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-wide v10, v2

    move-object v12, v1

    .line 479
    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    .line 480
    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v4

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method fill2DArray([D)V
    .locals 12

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, p1

    .local v1, "array":[D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v6

    move-wide v2, v6

    .line 308
    .local v2, "sx":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 310
    .local v4, "sy":D
    move-object v6, v1

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    .line 311
    move-object v6, v1

    const/4 v7, 0x1

    move-wide v8, v2

    aput-wide v8, v6, v7

    .line 312
    move-object v6, v1

    const/4 v7, 0x2

    move-wide v8, v2

    neg-double v8, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 313
    move-object v6, v1

    const/4 v7, 0x3

    move-wide v8, v4

    aput-wide v8, v6, v7

    .line 314
    move-object v6, v1

    const/4 v7, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    .line 315
    move-object v6, v1

    const/4 v7, 0x5

    move-wide v8, v4

    neg-double v8, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 316
    return-void
.end method

.method fill3DArray([D)V
    .locals 12

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, p1

    .local v1, "array":[D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v6

    move-wide v2, v6

    .line 321
    .local v2, "sx":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 323
    .local v4, "sy":D
    move-object v6, v1

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    .line 324
    move-object v6, v1

    const/4 v7, 0x1

    move-wide v8, v2

    aput-wide v8, v6, v7

    .line 325
    move-object v6, v1

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 326
    move-object v6, v1

    const/4 v7, 0x3

    move-wide v8, v2

    neg-double v8, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 327
    move-object v6, v1

    const/4 v7, 0x4

    move-wide v8, v4

    aput-wide v8, v6, v7

    .line 328
    move-object v6, v1

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    .line 329
    move-object v6, v1

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 330
    move-object v6, v1

    const/4 v7, 0x7

    move-wide v8, v4

    neg-double v8, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 331
    move-object v6, v1

    const/16 v7, 0x8

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 332
    move-object v6, v1

    const/16 v7, 0x9

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 333
    move-object v6, v1

    const/16 v7, 0xa

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    .line 334
    move-object v6, v1

    const/16 v7, 0xb

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 335
    return-void
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-wide v0
.end method

.method public final getPivotX()D
    .locals 4

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->pivotX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPivotY()D
    .locals 4

    .prologue
    .line 231
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->pivotY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTx()D
    .locals 6

    .prologue
    .line 275
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v2

    neg-double v2, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1
.end method

.method public getTy()D
    .locals 6

    .prologue
    .line 280
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v2

    neg-double v2, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 153
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Shear;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 698
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    .line 699
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 700
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->shear(DD)V

    .line 701
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v4

    neg-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->shear(DD)V

    goto :goto_0
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 714
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v6, v1

    .line 715
    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-object v8, v1

    .line 716
    invoke-virtual {v8}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    .line 717
    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getTx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getTy()D

    move-result-wide v14

    .line 714
    invoke-virtual/range {v3 .. v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 622
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 623
    .local v6, "sx":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 625
    .local v8, "sy":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    .line 626
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    move-object v14, v1

    .line 627
    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v14, v4

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v10

    .line 637
    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    :goto_0
    return-object v1

    .line 631
    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 632
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    move-object v14, v1

    .line 634
    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v14

    neg-double v14, v14

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-wide/from16 v16, v4

    add-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v10

    goto :goto_0

    .line 637
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-super {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 643
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v14

    move-wide v10, v14

    .line 644
    .local v10, "sx":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v14

    move-wide v12, v14

    .line 646
    .local v12, "sy":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    .line 647
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    .line 648
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v18

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v14

    .line 660
    .end local v3    # "this":Ljavafx/scene/transform/Shear;
    :goto_0
    return-object v3

    .line 653
    .restart local v3    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 654
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    .line 656
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v14

    goto :goto_0

    .line 660
    :cond_1
    move-object v14, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-super/range {v14 .. v20}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v14

    move-object v3, v14

    goto :goto_0
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 488
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v12

    move-wide v6, v12

    .line 489
    .local v6, "sx":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v12

    move-wide v8, v12

    .line 491
    .local v8, "sy":D
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 492
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v12

    neg-double v12, v12

    move-wide v10, v12

    .line 494
    .local v10, "mxy":D
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v10

    move-object/from16 v18, v1

    .line 495
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v12

    .line 507
    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    .end local v10    # "mxy":D
    :goto_0
    return-object v1

    .line 499
    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 500
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v12

    neg-double v12, v12

    move-wide v10, v12

    .line 502
    .local v10, "myx":D
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    move-wide/from16 v18, v4

    add-double v16, v16, v18

    move-wide/from16 v18, v10

    move-object/from16 v20, v1

    .line 504
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v12

    goto :goto_0

    .line 507
    .end local v10    # "myx":D
    :cond_1
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    invoke-super/range {v12 .. v16}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v12

    move-object v1, v12

    goto :goto_0
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 513
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v14

    move-wide v8, v14

    .line 514
    .local v8, "sx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v14

    move-wide v10, v14

    .line 516
    .local v10, "sy":D
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    .line 517
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v14

    neg-double v14, v14

    move-wide v12, v14

    .line 519
    .local v12, "mxy":D
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-wide/from16 v16, v2

    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v1

    .line 520
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v14

    .line 534
    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    .end local v12    # "mxy":D
    :goto_0
    return-object v1

    .line 525
    .restart local v1    # "this":Ljavafx/scene/transform/Shear;
    :cond_0
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 526
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v14

    neg-double v14, v14

    move-wide v12, v14

    .line 528
    .local v12, "myx":D
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-wide/from16 v16, v2

    move-wide/from16 v18, v12

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v12

    move-object/from16 v22, v1

    .line 530
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v14

    goto :goto_0

    .line 534
    .end local v12    # "myx":D
    :cond_1
    move-object v14, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-super/range {v14 .. v20}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v14

    move-object v1, v14

    goto :goto_0
.end method

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 542
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 543
    .local v8, "px":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 545
    .local v10, "py":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 546
    .local v12, "sx":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 548
    .local v14, "sy":D
    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_1

    .line 549
    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v16, v22

    .line 551
    .local v16, "xy":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v22, v7

    if-ltz v22, :cond_0

    .line 552
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 553
    .local v18, "x":D
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v20, v22

    .line 555
    .local v20, "y":D
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v18

    move-wide/from16 v26, v16

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 556
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v20

    aput-wide v24, v22, v23

    .line 557
    goto :goto_0

    .line 558
    .line 575
    .end local v16    # "xy":D
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 561
    :cond_1
    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_3

    .line 562
    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v16, v22

    .line 564
    .local v16, "yx":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v22, v7

    if-ltz v22, :cond_2

    .line 565
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 566
    .restart local v18    # "x":D
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v20, v22

    .line 568
    .restart local v20    # "y":D
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v18

    aput-wide v24, v22, v23

    .line 569
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    move-wide/from16 v28, v8

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 570
    goto :goto_2

    .line 571
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_2
    goto :goto_1

    .line 574
    .end local v16    # "yx":D
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-super/range {v22 .. v27}, Ljavafx/scene/transform/Transform;->inverseTransform2DPointsImpl([DI[DII)V

    .line 575
    goto :goto_1
.end method

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 583
    .local v8, "px":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 585
    .local v10, "py":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 586
    .local v12, "sx":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 588
    .local v14, "sy":D
    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_1

    .line 589
    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v16, v22

    .line 591
    .local v16, "xy":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v22, v7

    if-ltz v22, :cond_0

    .line 592
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 593
    .local v18, "x":D
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v20, v22

    .line 595
    .local v20, "y":D
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v18

    move-wide/from16 v26, v16

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 596
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v20

    aput-wide v24, v22, v23

    .line 597
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    aput-wide v24, v22, v23

    .line 598
    goto :goto_0

    .line 599
    .line 617
    .end local v16    # "xy":D
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 602
    :cond_1
    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_3

    .line 603
    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v16, v22

    .line 605
    .local v16, "yx":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v22, v7

    if-ltz v22, :cond_2

    .line 606
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 607
    .restart local v18    # "x":D
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v20, v22

    .line 609
    .restart local v20    # "y":D
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v18

    aput-wide v24, v22, v23

    .line 610
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    move-wide/from16 v28, v8

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 611
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    aput-wide v24, v22, v23

    .line 612
    goto :goto_2

    .line 613
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_2
    goto :goto_1

    .line 616
    .end local v16    # "yx":D
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-super/range {v22 .. v27}, Ljavafx/scene/transform/Transform;->inverseTransform3DPointsImpl([DI[DII)V

    .line 617
    goto :goto_1
.end method

.method public final pivotXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 197
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Shear$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Shear$3;-><init>(Ljavafx/scene/transform/Shear;)V

    iput-object v2, v1, Ljavafx/scene/transform/Shear;->pivotX:Ljavafx/beans/property/DoubleProperty;

    .line 215
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->pivotX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.method public final pivotYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 236
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Shear$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Shear$4;-><init>(Ljavafx/scene/transform/Shear;)V

    iput-object v2, v1, Ljavafx/scene/transform/Shear;->pivotY:Ljavafx/beans/property/DoubleProperty;

    .line 254
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->pivotY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 12

    .prologue
    .line 733
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Ljavafx/scene/transform/Affine;->prependShear(DDDD)V

    .line 734
    return-void
.end method

.method public final setPivotX(D)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->pivotXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 189
    return-void
.end method

.method public final setPivotY(D)V
    .locals 7

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->pivotYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 228
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 109
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Shear;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 675
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Shear ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 677
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    move-object v3, v2

    const-string v4, ", pivotX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 680
    move-object v3, v2

    const-string v4, ", pivotY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 21

    .prologue
    .line 414
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 415
    .local v6, "mxy":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 417
    .local v8, "myx":D
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v2

    move-wide v14, v6

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v1

    .line 418
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-wide/from16 v16, v4

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    move-object/from16 v18, v1

    .line 419
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 424
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v12

    move-wide v8, v12

    .line 425
    .local v8, "mxy":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v12

    move-wide v10, v12

    .line 427
    .local v10, "myx":D
    new-instance v12, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v2

    move-wide/from16 v16, v8

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    move-object/from16 v18, v1

    .line 428
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v10

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    move-wide/from16 v18, v4

    add-double v16, v16, v18

    move-wide/from16 v18, v10

    move-object/from16 v20, v1

    .line 429
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v6

    invoke-direct/range {v13 .. v19}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v12

    .end local v1    # "this":Ljavafx/scene/transform/Shear;
    return-object v1
.end method

.method transform2DPointsImpl([DI[DII)V
    .locals 26

    .prologue
    .line 436
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 437
    .local v6, "xy":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 438
    .local v8, "yx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 439
    .local v10, "px":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 441
    .local v12, "py":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_0

    .line 442
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v14, v18

    .line 443
    .local v14, "x":D
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v16, v18

    .line 445
    .local v16, "y":D
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v14

    move-wide/from16 v22, v6

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v22, v6

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 446
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v8

    move-wide/from16 v22, v14

    mul-double v20, v20, v22

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 447
    goto :goto_0

    .line 448
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_0
    return-void
.end method

.method transform3DPointsImpl([DI[DII)V
    .locals 26

    .prologue
    .line 453
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object/from16 v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 454
    .local v6, "xy":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 455
    .local v8, "yx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 456
    .local v10, "px":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 458
    .local v12, "py":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_0

    .line 459
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v14, v18

    .line 460
    .local v14, "x":D
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v16, v18

    .line 462
    .local v16, "y":D
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v14

    move-wide/from16 v22, v6

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v22, v6

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 463
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v8

    move-wide/from16 v22, v14

    mul-double v20, v20, v22

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 464
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v1

    move/from16 v21, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v20, v20, v21

    aput-wide v20, v18, v19

    .line 465
    goto :goto_0

    .line 466
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_0
    return-void
.end method

.method validate()V
    .locals 4

    .prologue
    .line 722
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Shear;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getX()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getPivotX()D

    move-result-wide v2

    .line 723
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getY()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Shear;->getPivotY()D

    move-result-wide v2

    .line 724
    return-void
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 117
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Shear$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Shear$1;-><init>(Ljavafx/scene/transform/Shear;)V

    iput-object v2, v1, Ljavafx/scene/transform/Shear;->x:Ljavafx/beans/property/DoubleProperty;

    .line 135
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 158
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Shear$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Shear$2;-><init>(Ljavafx/scene/transform/Shear;)V

    iput-object v2, v1, Ljavafx/scene/transform/Shear;->y:Ljavafx/beans/property/DoubleProperty;

    .line 176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear;
    return-object v0
.end method

.class public Ljavafx/scene/transform/Scale;
.super Ljavafx/scene/transform/Transform;
.source "Scale.java"


# instance fields
.field private pivotX:Ljavafx/beans/property/DoubleProperty;

.field private pivotY:Ljavafx/beans/property/DoubleProperty;

.field private pivotZ:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;

.field private z:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 62
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Scale;->setX(D)V

    .line 63
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Scale;->setY(D)V

    .line 64
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 13

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/transform/Scale;-><init>(DD)V

    .line 88
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Scale;->setZ(D)V

    .line 89
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "pivotX":D
    move-wide/from16 v7, p7

    .local v7, "pivotY":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/transform/Scale;-><init>(DD)V

    .line 75
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setPivotX(D)V

    .line 76
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setPivotY(D)V

    .line 77
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 23

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-wide/from16 v7, p7

    .local v7, "pivotX":D
    move-wide/from16 v9, p9

    .local v9, "pivotY":D
    move-wide/from16 v11, p11

    .local v11, "pivotZ":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-direct/range {v13 .. v21}, Ljavafx/scene/transform/Scale;-><init>(DDDD)V

    .line 102
    move-object v13, v0

    move-wide v14, v5

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Scale;->setZ(D)V

    .line 103
    move-object v13, v0

    move-wide v14, v11

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Scale;->setPivotZ(D)V

    .line 104
    return-void
.end method


# virtual methods
.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 16

    .prologue
    .line 803
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    move-object v10, v1

    .line 804
    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v14

    .line 803
    invoke-virtual/range {v3 .. v15}, Ljavafx/scene/transform/Affine;->appendScale(DDDDDD)V

    .line 805
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
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->clone()Ljavafx/scene/transform/Scale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Scale;
    .locals 17

    .prologue
    .line 512
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    new-instance v2, Ljavafx/scene/transform/Scale;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    move-object v10, v1

    .line 513
    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v14

    invoke-direct/range {v3 .. v15}, Ljavafx/scene/transform/Scale;-><init>(DDDDDD)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public bridge synthetic clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->clone()Ljavafx/scene/transform/Scale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method computeIs2D()Z
    .locals 6

    .prologue
    .line 381
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeIsIdentity()Z
    .locals 6

    .prologue
    .line 386
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 65

    .prologue
    .line 436
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Scale;
    move-object/from16 v3, p1

    .local v3, "transform":Ljavafx/scene/transform/Transform;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v34

    move-wide/from16 v4, v34

    .line 437
    .local v4, "sx":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v34

    move-wide/from16 v6, v34

    .line 438
    .local v6, "sy":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v34

    move-wide/from16 v8, v34

    .line 440
    .local v8, "sz":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    instance-of v0, v0, Ljavafx/scene/transform/Scale;

    move/from16 v34, v0

    if-eqz v34, :cond_0

    .line 441
    move-object/from16 v34, v3

    check-cast v34, Ljavafx/scene/transform/Scale;

    move-object/from16 v10, v34

    .line 442
    .local v10, "other":Ljavafx/scene/transform/Scale;
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v34

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v36

    cmpl-double v34, v34, v36

    if-nez v34, :cond_0

    move-object/from16 v34, v10

    .line 443
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v34

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v36

    cmpl-double v34, v34, v36

    if-nez v34, :cond_0

    move-object/from16 v34, v10

    .line 444
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v34

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v36

    cmpl-double v34, v34, v36

    if-nez v34, :cond_0

    .line 445
    new-instance v34, Ljavafx/scene/transform/Scale;

    move-object/from16 v64, v34

    move-object/from16 v34, v64

    move-object/from16 v35, v64

    move-wide/from16 v36, v4

    move-object/from16 v38, v10

    .line 446
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v38, v6

    move-object/from16 v40, v10

    .line 447
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v40

    mul-double v38, v38, v40

    move-wide/from16 v40, v8

    move-object/from16 v42, v10

    .line 448
    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v42

    mul-double v40, v40, v42

    move-object/from16 v42, v2

    .line 449
    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v42

    move-object/from16 v44, v2

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v44

    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v46

    invoke-direct/range {v35 .. v47}, Ljavafx/scene/transform/Scale;-><init>(DDDDDD)V

    move-object/from16 v2, v34

    .line 492
    .end local v2    # "this":Ljavafx/scene/transform/Scale;
    .end local v10    # "other":Ljavafx/scene/transform/Scale;
    :goto_0
    return-object v2

    .line 453
    .restart local v2    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    instance-of v0, v0, Ljavafx/scene/transform/Translate;

    move/from16 v34, v0

    if-eqz v34, :cond_7

    .line 454
    move-object/from16 v34, v3

    check-cast v34, Ljavafx/scene/transform/Translate;

    move-object/from16 v10, v34

    .line 456
    .local v10, "t":Ljavafx/scene/transform/Translate;
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v34

    move-wide/from16 v11, v34

    .line 457
    .local v11, "tx":D
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v34

    move-wide/from16 v13, v34

    .line 458
    .local v13, "ty":D
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v34

    move-wide/from16 v15, v34

    .line 460
    .local v15, "tz":D
    move-wide/from16 v34, v11

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_1

    move-wide/from16 v34, v4

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    move-wide/from16 v34, v4

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    :cond_1
    move-wide/from16 v34, v13

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_2

    move-wide/from16 v34, v6

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    move-wide/from16 v34, v6

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    :cond_2
    move-wide/from16 v34, v15

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_3

    move-wide/from16 v34, v8

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    move-wide/from16 v34, v8

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_7

    .line 463
    :cond_3
    new-instance v34, Ljavafx/scene/transform/Scale;

    move-object/from16 v64, v34

    move-object/from16 v34, v64

    move-object/from16 v35, v64

    move-wide/from16 v36, v4

    move-wide/from16 v38, v6

    move-wide/from16 v40, v8

    move-wide/from16 v42, v4

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    cmpl-double v42, v42, v44

    if-eqz v42, :cond_4

    move-wide/from16 v42, v4

    move-wide/from16 v44, v11

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v46, v4

    sub-double v44, v44, v46

    div-double v42, v42, v44

    :goto_1
    move-object/from16 v44, v2

    .line 465
    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v44

    add-double v42, v42, v44

    move-wide/from16 v44, v6

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    cmpl-double v44, v44, v46

    if-eqz v44, :cond_5

    move-wide/from16 v44, v6

    move-wide/from16 v46, v13

    mul-double v44, v44, v46

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v48, v6

    sub-double v46, v46, v48

    div-double v44, v44, v46

    :goto_2
    move-object/from16 v46, v2

    .line 466
    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v46

    add-double v44, v44, v46

    move-wide/from16 v46, v8

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_6

    move-wide/from16 v46, v8

    move-wide/from16 v48, v15

    mul-double v46, v46, v48

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v50, v8

    sub-double v48, v48, v50

    div-double v46, v46, v48

    :goto_3
    move-object/from16 v48, v2

    .line 467
    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v48

    add-double v46, v46, v48

    invoke-direct/range {v35 .. v47}, Ljavafx/scene/transform/Scale;-><init>(DDDDDD)V

    move-object/from16 v2, v34

    goto/16 :goto_0

    .line 463
    :cond_4
    const-wide/16 v42, 0x0

    goto :goto_1

    .line 465
    :cond_5
    const-wide/16 v44, 0x0

    goto :goto_2

    .line 466
    :cond_6
    const-wide/16 v46, 0x0

    goto :goto_3

    .line 471
    .end local v10    # "t":Ljavafx/scene/transform/Translate;
    .end local v11    # "tx":D
    .end local v13    # "ty":D
    .end local v15    # "tz":D
    :cond_7
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    instance-of v0, v0, Ljavafx/scene/transform/Affine;

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 472
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v34

    check-cast v34, Ljavafx/scene/transform/Affine;

    move-object/from16 v10, v34

    .line 473
    .local v10, "a":Ljavafx/scene/transform/Affine;
    move-object/from16 v34, v10

    move-object/from16 v35, v2

    invoke-virtual/range {v34 .. v35}, Ljavafx/scene/transform/Affine;->prepend(Ljavafx/scene/transform/Transform;)V

    .line 474
    move-object/from16 v34, v10

    move-object/from16 v2, v34

    goto/16 :goto_0

    .line 477
    .end local v10    # "a":Ljavafx/scene/transform/Affine;
    :cond_8
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v34

    move-wide/from16 v10, v34

    .line 478
    .local v10, "txx":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v34

    move-wide/from16 v12, v34

    .line 479
    .local v12, "txy":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v34

    move-wide/from16 v14, v34

    .line 480
    .local v14, "txz":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v34

    move-wide/from16 v16, v34

    .line 481
    .local v16, "ttx":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v34

    move-wide/from16 v18, v34

    .line 482
    .local v18, "tyx":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v34

    move-wide/from16 v20, v34

    .line 483
    .local v20, "tyy":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v34

    move-wide/from16 v22, v34

    .line 484
    .local v22, "tyz":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v34

    move-wide/from16 v24, v34

    .line 485
    .local v24, "tty":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v34

    move-wide/from16 v26, v34

    .line 486
    .local v26, "tzx":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v34

    move-wide/from16 v28, v34

    .line 487
    .local v28, "tzy":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v34

    move-wide/from16 v30, v34

    .line 488
    .local v30, "tzz":D
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v34

    move-wide/from16 v32, v34

    .line 489
    .local v32, "ttz":D
    new-instance v34, Ljavafx/scene/transform/Affine;

    move-object/from16 v64, v34

    move-object/from16 v34, v64

    move-object/from16 v35, v64

    move-wide/from16 v36, v4

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    move-wide/from16 v38, v4

    move-wide/from16 v40, v12

    mul-double v38, v38, v40

    move-wide/from16 v40, v4

    move-wide/from16 v42, v14

    mul-double v40, v40, v42

    move-wide/from16 v42, v4

    move-wide/from16 v44, v16

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v46, v4

    sub-double v44, v44, v46

    move-object/from16 v46, v2

    .line 490
    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v46

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v44, v6

    move-wide/from16 v46, v18

    mul-double v44, v44, v46

    move-wide/from16 v46, v6

    move-wide/from16 v48, v20

    mul-double v46, v46, v48

    move-wide/from16 v48, v6

    move-wide/from16 v50, v22

    mul-double v48, v48, v50

    move-wide/from16 v50, v6

    move-wide/from16 v52, v24

    mul-double v50, v50, v52

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v54, v6

    sub-double v52, v52, v54

    move-object/from16 v54, v2

    .line 491
    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v54

    mul-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v52, v8

    move-wide/from16 v54, v26

    mul-double v52, v52, v54

    move-wide/from16 v54, v8

    move-wide/from16 v56, v28

    mul-double v54, v54, v56

    move-wide/from16 v56, v8

    move-wide/from16 v58, v30

    mul-double v56, v56, v58

    move-wide/from16 v58, v8

    move-wide/from16 v60, v32

    mul-double v58, v58, v60

    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v62, v8

    sub-double v60, v60, v62

    move-object/from16 v62, v2

    .line 492
    invoke-virtual/range {v62 .. v62}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v62

    mul-double v60, v60, v62

    add-double v58, v58, v60

    invoke-direct/range {v35 .. v59}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v2, v34

    goto/16 :goto_0
.end method

.method public createInverse()Ljavafx/scene/transform/Scale;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 497
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v8

    move-wide v2, v8

    .line 498
    .local v2, "sx":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v8

    move-wide v4, v8

    .line 499
    .local v4, "sy":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    move-wide v6, v8

    .line 501
    .local v6, "sz":D
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 502
    :cond_0
    new-instance v8, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const-string v10, "Zero scale is not invertible"

    invoke-direct {v9, v10}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 506
    :cond_1
    new-instance v8, Ljavafx/scene/transform/Scale;

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v14, v4

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    div-double v14, v14, v16

    move-object/from16 v16, v1

    .line 507
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v18

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v20

    invoke-direct/range {v9 .. v21}, Ljavafx/scene/transform/Scale;-><init>(DDDDDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public bridge synthetic createInverse()Ljavafx/scene/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->createInverse()Ljavafx/scene/transform/Scale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 583
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->ensureCanTransform2DPoint()V

    .line 585
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    .line 586
    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    .line 587
    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 592
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
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

    .line 593
    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    .line 594
    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v1

    .line 595
    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method fill2DArray([D)V
    .locals 12

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, p1

    .local v1, "array":[D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v6

    move-wide v2, v6

    .line 398
    .local v2, "sx":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 400
    .local v4, "sy":D
    move-object v6, v1

    const/4 v7, 0x0

    move-wide v8, v2

    aput-wide v8, v6, v7

    .line 401
    move-object v6, v1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 402
    move-object v6, v1

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v10, v2

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 403
    move-object v6, v1

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 404
    move-object v6, v1

    const/4 v7, 0x4

    move-wide v8, v4

    aput-wide v8, v6, v7

    .line 405
    move-object v6, v1

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v10, v4

    sub-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 406
    return-void
.end method

.method fill3DArray([D)V
    .locals 14

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, p1

    .local v1, "array":[D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v8

    move-wide v2, v8

    .line 411
    .local v2, "sx":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v8

    move-wide v4, v8

    .line 412
    .local v4, "sy":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    move-wide v6, v8

    .line 414
    .local v6, "sz":D
    move-object v8, v1

    const/4 v9, 0x0

    move-wide v10, v2

    aput-wide v10, v8, v9

    .line 415
    move-object v8, v1

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 416
    move-object v8, v1

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 417
    move-object v8, v1

    const/4 v9, 0x3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v12

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 418
    move-object v8, v1

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 419
    move-object v8, v1

    const/4 v9, 0x5

    move-wide v10, v4

    aput-wide v10, v8, v9

    .line 420
    move-object v8, v1

    const/4 v9, 0x6

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 421
    move-object v8, v1

    const/4 v9, 0x7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v4

    sub-double/2addr v10, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v12

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 422
    move-object v8, v1

    const/16 v9, 0x8

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 423
    move-object v8, v1

    const/16 v9, 0x9

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 424
    move-object v8, v1

    const/16 v9, 0xa

    move-wide v10, v6

    aput-wide v10, v8, v9

    .line 425
    move-object v8, v1

    const/16 v9, 0xb

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v6

    sub-double/2addr v10, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v12

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 426
    return-void
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-wide v0
.end method

.method public final getPivotX()D
    .locals 4

    .prologue
    .line 233
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPivotY()D
    .locals 4

    .prologue
    .line 272
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPivotZ()D
    .locals 4

    .prologue
    .line 311
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTx()D
    .locals 6

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1
.end method

.method public getTy()D
    .locals 6

    .prologue
    .line 365
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1
.end method

.method public getTz()D
    .locals 6

    .prologue
    .line 370
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v4

    sub-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 118
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 156
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getZ()D
    .locals 4

    .prologue
    .line 194
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->z:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    .line 767
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 768
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 769
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    neg-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v6

    neg-double v6, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 773
    :goto_0
    return-void

    .line 771
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    goto :goto_0
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 782
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    move-object v3, v2

    move-object v1, v3

    .line 790
    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    :goto_0
    return-object v1

    .line 785
    .restart local v1    # "this":Ljavafx/scene/transform/Scale;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    .line 786
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v2, v3

    .line 787
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v2, v3

    .line 788
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    neg-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v6

    neg-double v6, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 790
    :cond_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 695
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->ensureCanTransform2DPoint()V

    .line 697
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 698
    .local v6, "sx":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 700
    .local v8, "sy":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 701
    :cond_0
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string v12, "Zero scale is not invertible"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 705
    :cond_1
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v14, v6

    div-double/2addr v12, v14

    move-wide v14, v2

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v8

    div-double v14, v14, v16

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 714
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v14

    move-wide v8, v14

    .line 715
    .local v8, "sx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v14

    move-wide v10, v14

    .line 716
    .local v10, "sy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v14

    move-wide v12, v14

    .line 718
    .local v12, "sz":D
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 719
    :cond_0
    new-instance v14, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    const-string v16, "Zero scale is not invertible"

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 723
    :cond_1
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    div-double v16, v16, v18

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v12

    div-double v20, v20, v22

    move-wide/from16 v22, v6

    mul-double v20, v20, v22

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 601
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->ensureCanTransform2DPoint()V

    .line 603
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v14

    move-wide v6, v14

    .line 604
    .local v6, "sx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v14

    move-wide v8, v14

    .line 606
    .local v8, "sy":D
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 607
    :cond_0
    new-instance v14, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    const-string v16, "Zero scale is not invertible"

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 611
    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    div-double v14, v14, v16

    move-wide v10, v14

    .line 612
    .local v10, "mxx":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v8

    div-double v14, v14, v16

    move-wide v12, v14

    .line 614
    .local v12, "myy":D
    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-wide/from16 v16, v10

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v10

    sub-double v18, v18, v20

    move-object/from16 v20, v1

    .line 615
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v12

    sub-double v20, v20, v22

    move-object/from16 v22, v1

    .line 616
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 622
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 623
    .local v8, "sx":D
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 624
    .local v10, "sy":D
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 626
    .local v12, "sz":D
    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v12

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_1

    .line 627
    :cond_0
    new-instance v20, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    const-string v22, "Zero scale is not invertible"

    invoke-direct/range {v21 .. v22}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 631
    :cond_1
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v8

    div-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 632
    .local v14, "mxx":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v10

    div-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 633
    .local v16, "myy":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v12

    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 635
    .local v18, "mzz":D
    new-instance v20, Ljavafx/geometry/Point3D;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-wide/from16 v22, v14

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v14

    sub-double v24, v24, v26

    move-object/from16 v26, v1

    .line 636
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v24, v16

    move-wide/from16 v26, v4

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    move-object/from16 v28, v1

    .line 637
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v18

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-object/from16 v30, v1

    .line 638
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    invoke-direct/range {v21 .. v27}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v20

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 645
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
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

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 646
    .local v6, "sx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 648
    .local v8, "sy":D
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_0

    move-wide/from16 v18, v8

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    .line 649
    :cond_0
    new-instance v18, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-string v20, "Zero scale is not invertible"

    invoke-direct/range {v19 .. v20}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 653
    :cond_1
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 654
    .local v10, "xx":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v8

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 655
    .local v12, "yy":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 656
    .local v14, "px":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 658
    .local v16, "py":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_2

    .line 659
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v10

    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v14

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 660
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v12

    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    goto :goto_0

    .line 662
    :cond_2
    return-void
.end method

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 669
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
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
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 670
    .local v6, "sx":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 671
    .local v8, "sy":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 673
    .local v10, "sz":D
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_0

    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_0

    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1

    .line 674
    :cond_0
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const-string v26, "Zero scale is not invertible"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 678
    :cond_1
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v6

    div-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 679
    .local v12, "xx":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 680
    .local v14, "yy":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v10

    div-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 681
    .local v16, "zz":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 682
    .local v18, "px":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 683
    .local v20, "py":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 685
    .local v22, "pz":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v24, v5

    if-ltz v24, :cond_2

    .line 686
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v26, v12

    move-object/from16 v28, v1

    move/from16 v29, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    move-wide/from16 v30, v18

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 687
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v26, v14

    move-object/from16 v28, v1

    move/from16 v29, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 688
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v1

    move/from16 v29, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_0

    .line 690
    :cond_2
    return-void
.end method

.method public final pivotXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 238
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Scale$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Scale$4;-><init>(Ljavafx/scene/transform/Scale;)V

    iput-object v2, v1, Ljavafx/scene/transform/Scale;->pivotX:Ljavafx/beans/property/DoubleProperty;

    .line 256
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method public final pivotYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 277
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Scale$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Scale$5;-><init>(Ljavafx/scene/transform/Scale;)V

    iput-object v2, v1, Ljavafx/scene/transform/Scale;->pivotY:Ljavafx/beans/property/DoubleProperty;

    .line 295
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method public final pivotZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 316
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Scale$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Scale$6;-><init>(Ljavafx/scene/transform/Scale;)V

    iput-object v2, v1, Ljavafx/scene/transform/Scale;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    .line 334
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale;
    return-object v0
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 16

    .prologue
    .line 809
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v8

    move-object v10, v1

    .line 810
    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v14

    .line 809
    invoke-virtual/range {v3 .. v15}, Ljavafx/scene/transform/Affine;->prependScale(DDDDDD)V

    .line 811
    return-void
.end method

.method public final setPivotX(D)V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->pivotXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 230
    return-void
.end method

.method public final setPivotY(D)V
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->pivotYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 269
    return-void
.end method

.method public final setPivotZ(D)V
    .locals 7

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->pivotZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 308
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 115
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 153
    return-void
.end method

.method public final setZ(D)V
    .locals 7

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Scale;->zProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 741
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Scale ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 743
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    move-object v3, v2

    const-string v4, ", z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    move-object v3, v2

    const-string v4, ", pivotX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 747
    move-object v3, v2

    const-string v4, ", pivotY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 748
    move-object v3, v2

    const-string v4, ", pivotZ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 21

    .prologue
    .line 524
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->ensureCanTransform2DPoint()V

    .line 526
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 527
    .local v6, "mxx":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 529
    .local v8, "myy":D
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v6

    move-wide v14, v2

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    .line 530
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    .line 531
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 27

    .prologue
    .line 537
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v14

    move-wide v8, v14

    .line 538
    .local v8, "mxx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v14

    move-wide v10, v14

    .line 539
    .local v10, "myy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v14

    move-wide v12, v14

    .line 541
    .local v12, "mzz":D
    new-instance v14, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    move-wide/from16 v16, v8

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-object/from16 v20, v1

    .line 542
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    move-object/from16 v22, v1

    .line 543
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v20, v12

    move-wide/from16 v22, v6

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    move-object/from16 v24, v1

    .line 544
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-direct/range {v15 .. v21}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method transform2DPointsImpl([DI[DII)V
    .locals 26

    .prologue
    .line 550
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
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

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 551
    .local v6, "xx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 552
    .local v8, "yy":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 553
    .local v10, "px":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 555
    .local v12, "py":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_0

    .line 556
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v14, v18

    .line 557
    .local v14, "x":D
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v16, v18

    .line 559
    .local v16, "y":D
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v6

    move-wide/from16 v22, v14

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 560
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v8

    move-wide/from16 v22, v16

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 561
    goto :goto_0

    .line 562
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_0
    return-void
.end method

.method transform3DPointsImpl([DI[DII)V
    .locals 26

    .prologue
    .line 567
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale;
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

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 568
    .local v6, "xx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 569
    .local v8, "yy":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 570
    .local v10, "zz":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 571
    .local v12, "px":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 572
    .local v14, "py":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 574
    .local v16, "pz":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_0

    .line 575
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v6

    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 576
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v8

    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v14

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 577
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v10

    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.method validate()V
    .locals 4

    .prologue
    .line 796
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v2

    .line 797
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v2

    .line 798
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v2

    .line 799
    return-void
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 123
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Scale$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Scale$1;-><init>(Ljavafx/scene/transform/Scale;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Scale;->x:Ljavafx/beans/property/DoubleProperty;

    .line 141
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 160
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 161
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Scale$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Scale$2;-><init>(Ljavafx/scene/transform/Scale;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Scale;->y:Ljavafx/beans/property/DoubleProperty;

    .line 179
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

.method public final zProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 198
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Scale;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 199
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Scale$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Scale$3;-><init>(Ljavafx/scene/transform/Scale;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Scale;->z:Ljavafx/beans/property/DoubleProperty;

    .line 217
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Scale;->z:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Scale;
    return-object v1
.end method

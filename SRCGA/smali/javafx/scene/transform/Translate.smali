.class public Ljavafx/scene/transform/Translate;
.super Ljavafx/scene/transform/Transform;
.source "Translate.java"


# instance fields
.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;

.field private z:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 65
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Translate;->setX(D)V

    .line 66
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Translate;->setY(D)V

    .line 67
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 13

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/transform/Translate;-><init>(DD)V

    .line 80
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Translate;->setZ(D)V

    .line 81
    return-void
.end method


# virtual methods
.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 10

    .prologue
    .line 549
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->appendTranslation(DDD)V

    .line 550
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
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->clone()Ljavafx/scene/transform/Translate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public bridge synthetic clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->clone()Ljavafx/scene/transform/Translate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Translate;
    .locals 11

    .prologue
    .line 335
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    new-instance v2, Ljavafx/scene/transform/Translate;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Ljavafx/scene/transform/Translate;-><init>(DDD)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method computeIs2D()Z
    .locals 6

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeIsIdentity()Z
    .locals 6

    .prologue
    .line 231
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 57

    .prologue
    .line 274
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Translate;
    move-object/from16 v3, p1

    .local v3, "transform":Ljavafx/scene/transform/Transform;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/transform/Translate;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 275
    move-object/from16 v28, v3

    check-cast v28, Ljavafx/scene/transform/Translate;

    move-object/from16 v4, v28

    .line 276
    .local v4, "t":Ljavafx/scene/transform/Translate;
    new-instance v28, Ljavafx/scene/transform/Translate;

    move-object/from16 v56, v28

    move-object/from16 v28, v56

    move-object/from16 v29, v56

    move-object/from16 v30, v2

    .line 277
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v30

    move-object/from16 v32, v4

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v32

    add-double v30, v30, v32

    move-object/from16 v32, v2

    .line 278
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v32

    move-object/from16 v34, v4

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v34

    add-double v32, v32, v34

    move-object/from16 v34, v2

    .line 279
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v34

    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v36

    add-double v34, v34, v36

    invoke-direct/range {v29 .. v35}, Ljavafx/scene/transform/Translate;-><init>(DDD)V

    move-object/from16 v2, v28

    .line 325
    .end local v2    # "this":Ljavafx/scene/transform/Translate;
    .end local v4    # "t":Ljavafx/scene/transform/Translate;
    :goto_0
    return-object v2

    .line 282
    .restart local v2    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/transform/Scale;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 283
    move-object/from16 v28, v3

    check-cast v28, Ljavafx/scene/transform/Scale;

    move-object/from16 v4, v28

    .line 285
    .local v4, "s":Ljavafx/scene/transform/Scale;
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Scale;->getX()D

    move-result-wide v28

    move-wide/from16 v5, v28

    .line 286
    .local v5, "sx":D
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Scale;->getY()D

    move-result-wide v28

    move-wide/from16 v7, v28

    .line 287
    .local v7, "sy":D
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Scale;->getZ()D

    move-result-wide v28

    move-wide/from16 v9, v28

    .line 289
    .local v9, "sz":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v28

    move-wide/from16 v11, v28

    .line 290
    .local v11, "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v28

    move-wide/from16 v13, v28

    .line 291
    .local v13, "ty":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v28

    move-wide/from16 v15, v28

    .line 293
    .local v15, "tz":D
    move-wide/from16 v28, v11

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_1

    move-wide/from16 v28, v5

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_7

    :cond_1
    move-wide/from16 v28, v13

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_2

    move-wide/from16 v28, v7

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_7

    :cond_2
    move-wide/from16 v28, v15

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_3

    move-wide/from16 v28, v9

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_7

    .line 296
    :cond_3
    new-instance v28, Ljavafx/scene/transform/Scale;

    move-object/from16 v56, v28

    move-object/from16 v28, v56

    move-object/from16 v29, v56

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    move-wide/from16 v34, v9

    move-object/from16 v36, v4

    .line 298
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Scale;->getPivotX()D

    move-result-wide v36

    move-wide/from16 v38, v5

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    cmpl-double v38, v38, v40

    if-nez v38, :cond_4

    const-wide/16 v38, 0x0

    :goto_1
    add-double v36, v36, v38

    move-object/from16 v38, v4

    .line 299
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Scale;->getPivotY()D

    move-result-wide v38

    move-wide/from16 v40, v7

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    cmpl-double v40, v40, v42

    if-nez v40, :cond_5

    const-wide/16 v40, 0x0

    :goto_2
    add-double v38, v38, v40

    move-object/from16 v40, v4

    .line 300
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/transform/Scale;->getPivotZ()D

    move-result-wide v40

    move-wide/from16 v42, v9

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    cmpl-double v42, v42, v44

    if-nez v42, :cond_6

    const-wide/16 v42, 0x0

    :goto_3
    add-double v40, v40, v42

    invoke-direct/range {v29 .. v41}, Ljavafx/scene/transform/Scale;-><init>(DDDDDD)V

    move-object/from16 v2, v28

    goto/16 :goto_0

    .line 298
    :cond_4
    move-wide/from16 v38, v11

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v42, v5

    sub-double v40, v40, v42

    div-double v38, v38, v40

    goto :goto_1

    .line 299
    :cond_5
    move-wide/from16 v40, v13

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v44, v7

    sub-double v42, v42, v44

    div-double v40, v40, v42

    goto :goto_2

    .line 300
    :cond_6
    move-wide/from16 v42, v15

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v46, v9

    sub-double v44, v44, v46

    div-double v42, v42, v44

    goto :goto_3

    .line 304
    .end local v4    # "s":Ljavafx/scene/transform/Scale;
    .end local v5    # "sx":D
    .end local v7    # "sy":D
    .end local v9    # "sz":D
    .end local v11    # "tx":D
    .end local v13    # "ty":D
    .end local v15    # "tz":D
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/transform/Affine;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 305
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v28

    check-cast v28, Ljavafx/scene/transform/Affine;

    move-object/from16 v4, v28

    .line 306
    .local v4, "a":Ljavafx/scene/transform/Affine;
    move-object/from16 v28, v4

    move-object/from16 v29, v2

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/transform/Affine;->prepend(Ljavafx/scene/transform/Transform;)V

    .line 307
    move-object/from16 v28, v4

    move-object/from16 v2, v28

    goto/16 :goto_0

    .line 310
    .end local v4    # "a":Ljavafx/scene/transform/Affine;
    :cond_8
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v28

    move-wide/from16 v4, v28

    .line 311
    .local v4, "txx":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v28

    move-wide/from16 v6, v28

    .line 312
    .local v6, "txy":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .line 313
    .local v8, "txz":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 314
    .local v10, "ttx":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 315
    .local v12, "tyx":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 316
    .local v14, "tyy":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 317
    .local v16, "tyz":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 318
    .local v18, "tty":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 319
    .local v20, "tzx":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 320
    .local v22, "tzy":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 321
    .local v24, "tzz":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 322
    .local v26, "ttz":D
    new-instance v28, Ljavafx/scene/transform/Affine;

    move-object/from16 v56, v28

    move-object/from16 v28, v56

    move-object/from16 v29, v56

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-object/from16 v38, v2

    .line 323
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v38

    add-double v36, v36, v38

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-object/from16 v46, v2

    .line 324
    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v46

    add-double v44, v44, v46

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    move-wide/from16 v52, v26

    move-object/from16 v54, v2

    .line 325
    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v54

    add-double v52, v52, v54

    invoke-direct/range {v29 .. v53}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v2, v28

    goto/16 :goto_0
.end method

.method public bridge synthetic createInverse()Ljavafx/scene/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->createInverse()Ljavafx/scene/transform/Translate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public createInverse()Ljavafx/scene/transform/Translate;
    .locals 11

    .prologue
    .line 330
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    new-instance v2, Ljavafx/scene/transform/Translate;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    neg-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v6

    neg-double v6, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v8

    neg-double v8, v8

    invoke-direct/range {v3 .. v9}, Ljavafx/scene/transform/Translate;-><init>(DDD)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 396
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 397
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public deltaTransform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 403
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 405
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 406
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 17

    .prologue
    .line 411
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
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

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public deltaTransform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 5

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point3D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 417
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 419
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method fill2DArray([D)V
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 243
    move-object v2, v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 244
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 245
    move-object v2, v1

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 246
    move-object v2, v1

    const/4 v3, 0x4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 247
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 248
    return-void
.end method

.method fill3DArray([D)V
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 253
    move-object v2, v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 254
    move-object v2, v1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 255
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 256
    move-object v2, v1

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 257
    move-object v2, v1

    const/4 v3, 0x5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 258
    move-object v2, v1

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 259
    move-object v2, v1

    const/4 v3, 0x7

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 260
    move-object v2, v1

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 261
    move-object v2, v1

    const/16 v3, 0x9

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 262
    move-object v2, v1

    const/16 v3, 0xa

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 263
    move-object v2, v1

    const/16 v3, 0xb

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 264
    return-void
.end method

.method public getTx()D
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-wide v0
.end method

.method public getTy()D
    .locals 3

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-wide v0
.end method

.method public getTz()D
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-wide v0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 133
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getZ()D
    .locals 4

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Translate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Translate;->z:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 528
    return-void
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 468
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public inverseDeltaTransform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 5

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 474
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 476
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 477
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 17

    .prologue
    .line 482
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
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

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public inverseDeltaTransform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 5

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point3D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 488
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 490
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 424
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 425
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-wide v8, v2

    move-object v10, v1

    .line 426
    invoke-virtual {v10}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    .line 427
    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 432
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
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

    move-wide v10, v2

    move-object v12, v1

    .line 433
    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v12, v4

    move-object v14, v1

    .line 434
    invoke-virtual {v14}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v1

    .line 435
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 16

    .prologue
    .line 441
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
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
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v10

    move-wide v6, v10

    .line 442
    .local v6, "tx":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v10

    move-wide v8, v10

    .line 444
    .local v8, "ty":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v10, v5

    if-ltz v10, :cond_0

    .line 445
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v12, v12, v13

    move-wide v14, v6

    sub-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 446
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v12, v12, v13

    move-wide v14, v8

    sub-double/2addr v12, v14

    aput-wide v12, v10, v11

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 18

    .prologue
    .line 454
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
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
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v12

    move-wide v6, v12

    .line 455
    .local v6, "tx":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v12

    move-wide v8, v12

    .line 456
    .local v8, "ty":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v12

    move-wide v10, v12

    .line 458
    .local v10, "tz":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v12, v5

    if-ltz v12, :cond_0

    .line 459
    move-object v12, v3

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 460
    move-object v12, v3

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v8

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 461
    move-object v12, v3

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v10

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 10

    .prologue
    .line 554
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Translate;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->prependTranslation(DDD)V

    .line 555
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Translate;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 92
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Translate;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 130
    return-void
.end method

.method public final setZ(D)V
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Translate;->zProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 505
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Translate ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 507
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    move-object v3, v2

    const-string v4, ", z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Translate;->ensureCanTransform2DPoint()V

    .line 347
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-wide v8, v2

    move-object v10, v1

    .line 348
    invoke-virtual {v10}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    .line 349
    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 354
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
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

    move-wide v10, v2

    move-object v12, v1

    .line 355
    invoke-virtual {v12}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v12, v4

    move-object v14, v1

    .line 356
    invoke-virtual {v14}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v1

    .line 357
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Translate;
    return-object v1
.end method

.method transform2DPointsImpl([DI[DII)V
    .locals 20

    .prologue
    .line 363
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
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
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v14

    move-wide v6, v14

    .line 364
    .local v6, "tx":D
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v14

    move-wide v8, v14

    .line 366
    .local v8, "ty":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v14, v5

    if-ltz v14, :cond_0

    .line 367
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 368
    .local v10, "x":D
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 370
    .local v12, "y":D
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 371
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v12

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 372
    goto :goto_0

    .line 373
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_0
    return-void
.end method

.method transform3DPointsImpl([DI[DII)V
    .locals 24

    .prologue
    .line 379
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
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

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 380
    .local v6, "tx":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 381
    .local v8, "ty":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 383
    .local v10, "tz":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v5

    if-ltz v18, :cond_0

    .line 384
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v12, v18

    .line 385
    .local v12, "x":D
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v14, v18

    .line 386
    .local v14, "y":D
    move-object/from16 v18, v1

    move/from16 v19, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v16, v18

    .line 388
    .local v16, "z":D
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v12

    move-wide/from16 v22, v6

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 389
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v14

    move-wide/from16 v22, v8

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 390
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v16

    move-wide/from16 v22, v10

    add-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 391
    goto :goto_0

    .line 392
    .end local v12    # "x":D
    .end local v14    # "y":D
    .end local v16    # "z":D
    :cond_0
    return-void
.end method

.method validate()V
    .locals 4

    .prologue
    .line 542
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Translate;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getX()D

    move-result-wide v2

    .line 543
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getY()D

    move-result-wide v2

    .line 544
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Translate;->getZ()D

    move-result-wide v2

    .line 545
    return-void
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 100
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Translate$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Translate$1;-><init>(Ljavafx/scene/transform/Translate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Translate;->x:Ljavafx/beans/property/DoubleProperty;

    .line 118
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 138
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Translate$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Translate$2;-><init>(Ljavafx/scene/transform/Translate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Translate;->y:Ljavafx/beans/property/DoubleProperty;

    .line 156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

.method public final zProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 176
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Translate$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Translate$3;-><init>(Ljavafx/scene/transform/Translate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Translate;->z:Ljavafx/beans/property/DoubleProperty;

    .line 194
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate;->z:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate;
    return-object v0
.end method

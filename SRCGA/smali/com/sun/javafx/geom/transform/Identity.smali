.class public final Lcom/sun/javafx/geom/transform/Identity;
.super Lcom/sun/javafx/geom/transform/BaseTransform;
.source "Identity.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/BaseTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 6

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Vec3d;-><init>(Lcom/sun/javafx/geom/Vec3d;)V

    move-object v0, v3

    .line 94
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v0

    .line 93
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 94
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public deltaTransform([DI[DII)V
    .locals 12

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 165
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :cond_1
    return-void
.end method

.method public deltaTransform([FI[FII)V
    .locals 12

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 155
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :cond_1
    return-void
.end method

.method public deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 27

    .prologue
    .line 340
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myx":D
    move-wide/from16 v6, p5

    .local v6, "mxy":D
    move-wide/from16 v8, p7

    .local v8, "myy":D
    move-wide/from16 v10, p9

    .local v10, "mxt":D
    move-wide/from16 v12, p11

    .local v12, "myt":D
    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-static/range {v14 .. v25}, Lcom/sun/javafx/geom/transform/Identity;->getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    move-object v1, v14

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v1
.end method

.method public deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 51

    .prologue
    .line 350
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move-wide/from16 v36, v12

    move-wide/from16 v38, v14

    move-wide/from16 v40, v16

    move-wide/from16 v42, v18

    move-wide/from16 v44, v20

    move-wide/from16 v46, v22

    move-wide/from16 v48, v24

    invoke-static/range {v26 .. v49}, Lcom/sun/javafx/geom/transform/Identity;->getInstance(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v26

    move-object/from16 v1, v26

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v1
.end method

.method public deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Identity;->getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Identity;->getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Identity;->getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 280
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide v2, p1

    .local v2, "mxt":D
    move-wide v4, p3

    .local v4, "myt":D
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Translate2D;->getInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v1
.end method

.method public deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 21

    .prologue
    .line 315
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "theta":D
    move-wide/from16 v4, p3

    .local v4, "axisX":D
    move-wide/from16 v6, p5

    .local v6, "axisY":D
    move-wide/from16 v8, p7

    .local v8, "axisZ":D
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 316
    move-object v11, v1

    move-object v1, v11

    .line 332
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v1

    .line 318
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    move-wide v11, v4

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Identity;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_4

    move-wide v11, v6

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Identity;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 319
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_1

    .line 320
    move-object v11, v1

    move-object v1, v11

    goto :goto_0

    .line 322
    :cond_1
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v10, v11

    .line 323
    .local v10, "a":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    .line 324
    move-object v11, v10

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 328
    :cond_2
    :goto_1
    move-object v11, v10

    move-object v1, v11

    goto :goto_0

    .line 325
    :cond_3
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 326
    move-object v11, v10

    move-wide v12, v2

    neg-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    goto :goto_1

    .line 330
    .end local v10    # "a":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_4
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v10, v11

    .line 331
    .local v10, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v11, v10

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-virtual/range {v11 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 332
    move-object v11, v10

    move-object v1, v11

    goto :goto_0
.end method

.method public deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 298
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myy":D
    move-wide/from16 v6, p5

    .local v6, "mzz":D
    move-wide v9, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 299
    move-wide v9, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    move-wide v9, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 300
    move-object v9, v1

    move-object v1, v9

    .line 308
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v1

    .line 302
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v8, v9

    .line 303
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 304
    move-object v9, v8

    move-object v1, v9

    goto :goto_0

    .line 306
    .end local v8    # "a":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_1
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v8, v9

    .line 307
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 308
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 275
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide v2, p1

    .local v2, "mxt":D
    move-wide v4, p3

    .local v4, "myt":D
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Translate2D;->getInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v1
.end method

.method public deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 285
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxt":D
    move-wide/from16 v4, p3

    .local v4, "myt":D
    move-wide/from16 v6, p5

    .local v6, "mzt":D
    move-wide v9, v6

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 286
    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 287
    move-object v9, v1

    move-object v1, v9

    .line 293
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v1

    .line 289
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object v1, v9

    goto :goto_0

    .line 291
    :cond_1
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v8, v9

    .line 292
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 293
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 388
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    sget-object v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public getDeterminant()D
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-wide v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0
.end method

.method public inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Vec3d;-><init>(Lcom/sun/javafx/geom/Vec3d;)V

    move-object v0, v3

    .line 108
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v0

    .line 107
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 108
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseDeltaTransform([FI[FII)V
    .locals 12

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 183
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :cond_1
    return-void
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 214
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    .line 216
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/transform/Identity;->makePoint(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v2, v3

    .line 79
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Point2D;->setLocation(Lcom/sun/javafx/geom/Point2D;)V

    .line 80
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Vec3d;-><init>(Lcom/sun/javafx/geom/Vec3d;)V

    move-object v0, v3

    .line 101
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 101
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 222
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 224
    :cond_0
    return-void
.end method

.method public inverseTransform([DI[DII)V
    .locals 12

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 192
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_1
    return-void
.end method

.method public inverseTransform([FI[FII)V
    .locals 12

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 174
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_1
    return-void
.end method

.method public invert()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public is2D()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0
.end method

.method public isTranslateOrIdentity()Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return v0
.end method

.method public restoreTransform(DDDDDD)V
    .locals 19

    .prologue
    .line 252
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myx":D
    move-wide/from16 v6, p5

    .local v6, "mxy":D
    move-wide/from16 v8, p7

    .local v8, "myy":D
    move-wide/from16 v10, p9

    .local v10, "mxt":D
    move-wide/from16 v12, p11

    .local v12, "myt":D
    move-wide v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1

    .line 256
    :cond_0
    sget-object v14, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v14}, Lcom/sun/javafx/geom/transform/Identity;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 258
    :cond_1
    return-void
.end method

.method public restoreTransform(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 265
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-wide/from16 v26, v2

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v4

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v6

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v8

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v10

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v12

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v14

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v16

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v18

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v20

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v22

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v24

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_1

    .line 269
    :cond_0
    sget-object v26, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/Identity;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 271
    :cond_1
    return-void
.end method

.method public setToIdentity()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Identity;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 241
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    const-string v1, "Identity[]"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 199
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    .line 201
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/transform/Identity;->makePoint(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v2, v3

    .line 72
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Point2D;->setLocation(Lcom/sun/javafx/geom/Point2D;)V

    .line 73
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Vec3d;-><init>(Lcom/sun/javafx/geom/Vec3d;)V

    move-object v0, v3

    .line 87
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :goto_0
    return-object v0

    .line 86
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Identity;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 87
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 207
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 209
    :cond_0
    return-void
.end method

.method public transform([DI[DII)V
    .locals 12

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 125
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    :cond_1
    return-void
.end method

.method public transform([DI[FII)V
    .locals 12

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v2, p1

    .local v2, "srcPts":[D
    move v3, p2

    .local v3, "srcOff":I
    move-object v4, p3

    .local v4, "dstPts":[F
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 144
    move-object v8, v4

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v10, v10, v11

    double-to-float v10, v10

    aput v10, v8, v9

    .line 145
    move-object v8, v4

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v10, v10, v11

    double-to-float v10, v10

    aput v10, v8, v9

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 12

    .prologue
    .line 133
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v2, p1

    .local v2, "srcPts":[F
    move v3, p2

    .local v3, "srcOff":I
    move-object v4, p3

    .local v4, "dstPts":[D
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 134
    move-object v8, v4

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget v10, v10, v11

    float-to-double v10, v10

    aput-wide v10, v8, v9

    .line 135
    move-object v8, v4

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget v10, v10, v11

    float-to-double v10, v10

    aput-wide v10, v8, v9

    .line 133
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 12

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Identity;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 116
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_1
    return-void
.end method

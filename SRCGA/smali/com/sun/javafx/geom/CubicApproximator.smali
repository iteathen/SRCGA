.class public Lcom/sun/javafx/geom/CubicApproximator;
.super Ljava/lang/Object;
.source "CubicApproximator.java"


# instance fields
.field private accuracy:F

.field private maxCubicSize:F


# direct methods
.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move v1, p1

    .local v1, "accuracy":F
    move v2, p2

    .local v2, "maxCubicSize":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/CubicApproximator;->accuracy:F

    .line 40
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/CubicApproximator;->maxCubicSize:F

    .line 41
    return-void
.end method

.method private ProcessFirstMonotonicPartOfCubic(Ljava/util/List;[FF)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ">;[FF)V"
        }
    .end annotation

    .prologue
    .line 333
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object/from16 v1, p1

    .local v1, "resVector":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object/from16 v2, p2

    .local v2, "coords":[F
    move/from16 v3, p3

    .local v3, "t":F
    const/16 v7, 0x8

    new-array v7, v7, [F

    move-object v4, v7

    .line 336
    .local v4, "coords1":[F
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 337
    move-object v7, v4

    const/4 v8, 0x1

    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 338
    move-object v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v3

    move-object v9, v2

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v5, v7

    .line 339
    .local v5, "tx":F
    move-object v7, v2

    const/4 v8, 0x3

    aget v7, v7, v8

    move v8, v3

    move-object v9, v2

    const/4 v10, 0x5

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x3

    aget v10, v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 340
    .local v6, "ty":F
    move-object v7, v4

    const/4 v8, 0x2

    move-object v9, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 341
    move-object v7, v4

    const/4 v8, 0x3

    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x3

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 342
    move-object v7, v4

    const/4 v8, 0x4

    move-object v9, v4

    const/4 v10, 0x2

    aget v9, v9, v10

    move v10, v3

    move v11, v5

    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 343
    move-object v7, v4

    const/4 v8, 0x5

    move-object v9, v4

    const/4 v10, 0x3

    aget v9, v9, v10

    move v10, v3

    move v11, v6

    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 344
    move-object v7, v2

    const/4 v8, 0x4

    move-object v9, v2

    const/4 v10, 0x4

    aget v9, v9, v10

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x6

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x4

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 345
    move-object v7, v2

    const/4 v8, 0x5

    move-object v9, v2

    const/4 v10, 0x5

    aget v9, v9, v10

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x7

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x5

    aget v12, v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 346
    move-object v7, v2

    const/4 v8, 0x2

    move v9, v5

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x4

    aget v11, v11, v12

    move v12, v5

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 347
    move-object v7, v2

    const/4 v8, 0x3

    move v9, v6

    move v10, v3

    move-object v11, v2

    const/4 v12, 0x5

    aget v11, v11, v12

    move v12, v6

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 348
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v4

    const/4 v10, 0x6

    move-object v11, v4

    const/4 v12, 0x4

    aget v11, v11, v12

    move v12, v3

    move-object v13, v2

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object v14, v4

    const/4 v15, 0x4

    aget v14, v14, v15

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v9, v18

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    aput v12, v10, v11

    aput v9, v7, v8

    .line 349
    move-object v7, v2

    const/4 v8, 0x1

    move-object v9, v4

    const/4 v10, 0x7

    move-object v11, v4

    const/4 v12, 0x5

    aget v11, v11, v12

    move v12, v3

    move-object v13, v2

    const/4 v14, 0x3

    aget v13, v13, v14

    move-object v14, v4

    const/4 v15, 0x5

    aget v14, v14, v15

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v9, v18

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    aput v12, v10, v11

    aput v9, v7, v8

    .line 351
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessMonotonicCubic(Ljava/util/List;[F)V

    .line 352
    return-void
.end method

.method private ProcessMonotonicCubic(Ljava/util/List;[F)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object/from16 v1, p1

    .local v1, "resVect":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object/from16 v2, p2

    .local v2, "coords":[F
    const/16 v11, 0x8

    new-array v11, v11, [F

    move-object v3, v11

    .line 186
    .local v3, "coords1":[F
    move-object v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    move/from16 v23, v11

    move/from16 v11, v23

    move/from16 v12, v23

    move v7, v12

    .local v7, "xMax":F
    move v6, v11

    .line 187
    .local v6, "xMin":F
    move-object v11, v2

    const/4 v12, 0x1

    aget v11, v11, v12

    move/from16 v23, v11

    move/from16 v11, v23

    move/from16 v12, v23

    move v9, v12

    .local v9, "yMax":F
    move v8, v11

    .line 189
    .local v8, "yMin":F
    const/4 v11, 0x2

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    const/16 v12, 0x8

    if-ge v11, v12, :cond_4

    .line 190
    move v11, v6

    move-object v12, v2

    move v13, v10

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    move-object v11, v2

    move v12, v10

    aget v11, v11, v12

    :goto_1
    move v6, v11

    .line 191
    move v11, v7

    move-object v12, v2

    move v13, v10

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move-object v11, v2

    move v12, v10

    aget v11, v11, v12

    :goto_2
    move v7, v11

    .line 192
    move v11, v8

    move-object v12, v2

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    move-object v11, v2

    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    :goto_3
    move v8, v11

    .line 193
    move v11, v9

    move-object v12, v2

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    move-object v11, v2

    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    :goto_4
    move v9, v11

    .line 189
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 190
    :cond_0
    move v11, v6

    goto :goto_1

    .line 191
    :cond_1
    move v11, v7

    goto :goto_2

    .line 192
    :cond_2
    move v11, v8

    goto :goto_3

    .line 193
    :cond_3
    move v11, v9

    goto :goto_4

    .line 196
    :cond_4
    move v11, v7

    move v12, v6

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/CubicApproximator;->maxCubicSize:F

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_5

    move v11, v9

    move v12, v8

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/CubicApproximator;->maxCubicSize:F

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_5

    move-object v11, v2

    .line 197
    invoke-static {v11}, Lcom/sun/javafx/geom/CubicApproximator;->getApproxError([F)F

    move-result v11

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/CubicApproximator;->accuracy:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 198
    :cond_5
    move-object v11, v3

    const/4 v12, 0x6

    move-object v13, v2

    const/4 v14, 0x6

    aget v13, v13, v14

    aput v13, v11, v12

    .line 199
    move-object v11, v3

    const/4 v12, 0x7

    move-object v13, v2

    const/4 v14, 0x7

    aget v13, v13, v14

    aput v13, v11, v12

    .line 200
    move-object v11, v3

    const/4 v12, 0x4

    move-object v13, v2

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object v14, v2

    const/4 v15, 0x6

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 201
    move-object v11, v3

    const/4 v12, 0x5

    move-object v13, v2

    const/4 v14, 0x5

    aget v13, v13, v14

    move-object v14, v2

    const/4 v15, 0x7

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 202
    move-object v11, v2

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x4

    aget v12, v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v4, v11

    .line 203
    .local v4, "tx":F
    move-object v11, v2

    const/4 v12, 0x3

    aget v11, v11, v12

    move-object v12, v2

    const/4 v13, 0x5

    aget v12, v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v5, v11

    .line 204
    .local v5, "ty":F
    move-object v11, v3

    const/4 v12, 0x2

    move v13, v4

    move-object v14, v3

    const/4 v15, 0x4

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 205
    move-object v11, v3

    const/4 v12, 0x3

    move v13, v5

    move-object v14, v3

    const/4 v15, 0x5

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 206
    move-object v11, v2

    const/4 v12, 0x2

    move-object v13, v2

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object v14, v2

    const/4 v15, 0x2

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 207
    move-object v11, v2

    const/4 v12, 0x3

    move-object v13, v2

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object v14, v2

    const/4 v15, 0x3

    aget v14, v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 208
    move-object v11, v2

    const/4 v12, 0x4

    move-object v13, v2

    const/4 v14, 0x2

    aget v13, v13, v14

    move v14, v4

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 209
    move-object v11, v2

    const/4 v12, 0x5

    move-object v13, v2

    const/4 v14, 0x3

    aget v13, v13, v14

    move v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    .line 210
    move-object v11, v2

    const/4 v12, 0x6

    move-object v13, v3

    const/4 v14, 0x0

    move-object v15, v2

    const/16 v16, 0x4

    aget v15, v15, v16

    move-object/from16 v16, v3

    const/16 v17, 0x2

    aget v16, v16, v17

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v13, v25

    move-object/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v25

    aput v16, v14, v15

    aput v13, v11, v12

    .line 211
    move-object v11, v2

    const/4 v12, 0x7

    move-object v13, v3

    const/4 v14, 0x1

    move-object v15, v2

    const/16 v16, 0x5

    aget v15, v15, v16

    move-object/from16 v16, v3

    const/16 v17, 0x3

    aget v16, v16, v17

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v13, v25

    move-object/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v25

    aput v16, v14, v15

    aput v13, v11, v12

    .line 213
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessMonotonicCubic(Ljava/util/List;[F)V

    .line 215
    move-object v11, v0

    move-object v12, v1

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessMonotonicCubic(Ljava/util/List;[F)V

    .line 221
    .end local v4    # "tx":F
    .end local v5    # "ty":F
    :goto_5
    return-void

    .line 217
    :cond_6
    move-object v11, v1

    new-instance v12, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    move-object v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object v15, v2

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v16, v2

    const/16 v17, 0x2

    aget v16, v16, v17

    move-object/from16 v17, v2

    const/16 v18, 0x3

    aget v17, v17, v18

    move-object/from16 v18, v2

    const/16 v19, 0x4

    aget v18, v18, v19

    move-object/from16 v19, v2

    const/16 v20, 0x5

    aget v19, v19, v20

    move-object/from16 v20, v2

    const/16 v21, 0x6

    aget v20, v20, v21

    move-object/from16 v21, v2

    const/16 v22, 0x7

    aget v21, v21, v22

    invoke-direct/range {v13 .. v21}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>(FFFFFFFF)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5
.end method

.method private approximate(Ljava/util/List;Ljava/util/List;)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/QuadCurve2D;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, p1

    .local v1, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object v2, p2

    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/QuadCurve2D;>;"
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/geom/CubicCurve2D;

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/CubicApproximator;->approximate(Lcom/sun/javafx/geom/CubicCurve2D;)Lcom/sun/javafx/geom/QuadCurve2D;

    move-result-object v7

    move-object v3, v7

    .line 92
    .local v3, "approx":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v7, v1

    const/4 v8, 0x0

    .line 93
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v8, v3

    invoke-static {v8}, Lcom/sun/javafx/geom/CubicApproximator;->elevate(Lcom/sun/javafx/geom/QuadCurve2D;)Lcom/sun/javafx/geom/CubicCurve2D;

    move-result-object v8

    .line 92
    invoke-static {v7, v8}, Lcom/sun/javafx/geom/CubicApproximator;->compareCPs(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)F

    move-result v7

    move v4, v7

    .line 95
    .local v4, "dMax":F
    move-object v7, v2

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 97
    const/4 v7, 0x1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 98
    move-object v7, v0

    move-object v8, v1

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/geom/CubicCurve2D;

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/CubicApproximator;->approximate(Lcom/sun/javafx/geom/CubicCurve2D;)Lcom/sun/javafx/geom/QuadCurve2D;

    move-result-object v7

    move-object v3, v7

    .line 99
    move-object v7, v1

    move v8, v5

    .line 100
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v8, v3

    invoke-static {v8}, Lcom/sun/javafx/geom/CubicApproximator;->elevate(Lcom/sun/javafx/geom/QuadCurve2D;)Lcom/sun/javafx/geom/CubicCurve2D;

    move-result-object v8

    .line 99
    invoke-static {v7, v8}, Lcom/sun/javafx/geom/CubicApproximator;->compareCPs(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)F

    move-result v7

    move v6, v7

    .line 101
    .local v6, "d":F
    move v7, v6

    move v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 102
    move v7, v6

    move v4, v7

    .line 104
    :cond_0
    move-object v7, v2

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "d":F
    :cond_1
    move v7, v4

    move v0, v7

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    return v0
.end method

.method private approximate(Lcom/sun/javafx/geom/CubicCurve2D;)Lcom/sun/javafx/geom/QuadCurve2D;
    .locals 11

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/CubicCurve2D;
    new-instance v2, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    const/high16 v6, 0x40400000    # 3.0f

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    mul-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    mul-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/geom/QuadCurve2D;-><init>(FFFFFF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    return-object v0
.end method

.method private static compare(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)F
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "c1":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "c2":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v2, v4

    .line 120
    .local v2, "res":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 121
    .local v3, "d":F
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v3

    move v2, v4

    .line 122
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 123
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v3

    move v2, v4

    .line 124
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 125
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v4, v3

    move v2, v4

    .line 126
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 127
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v4, v3

    move v2, v4

    .line 128
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 129
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v4, v3

    move v2, v4

    .line 130
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 131
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move v4, v3

    move v2, v4

    .line 132
    :cond_5
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 133
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    move v4, v3

    move v2, v4

    .line 135
    :cond_6
    move v4, v2

    move v0, v4

    .end local v0    # "c1":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method private static compareCPs(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)F
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "c1":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "c2":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v2, v4

    .line 162
    .local v2, "res":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 163
    .local v3, "d":F
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v3

    move v2, v4

    .line 164
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 165
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v3

    move v2, v4

    .line 166
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v3, v4

    .line 167
    move v4, v2

    move v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v4, v3

    move v2, v4

    .line 168
    :cond_2
    move v4, v2

    move v0, v4

    .end local v0    # "c1":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method private static elevate(Lcom/sun/javafx/geom/QuadCurve2D;)Lcom/sun/javafx/geom/CubicCurve2D;
    .locals 12

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "q":Lcom/sun/javafx/geom/QuadCurve2D;
    new-instance v1, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    const/high16 v6, 0x40000000    # 2.0f

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    const/high16 v7, 0x40000000    # 2.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-direct/range {v2 .. v10}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>(FFFFFFFF)V

    move-object v0, v1

    .end local v0    # "q":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public static getApproxError(Lcom/sun/javafx/geom/CubicCurve2D;)F
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    const/16 v1, 0x8

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x5

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x7

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    aput v4, v2, v3

    invoke-static {v1}, Lcom/sun/javafx/geom/CubicApproximator;->getApproxError([F)F

    move-result v1

    move v0, v1

    .end local v0    # "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method private static getApproxError([F)F
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "coords":[F
    const/high16 v3, -0x3fc00000    # -3.0f

    move-object v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x6

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    move v1, v3

    .line 144
    .local v1, "res":F
    const/high16 v3, -0x3fc00000    # -3.0f

    move-object v4, v0

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move-object v5, v0

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x7

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    move v2, v3

    .line 145
    .local v2, "d":F
    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v2

    move v1, v3

    .line 146
    :cond_0
    const/high16 v3, 0x40400000    # 3.0f

    move-object v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x6

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    move v2, v3

    .line 147
    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v2

    move v1, v3

    .line 148
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    move-object v4, v0

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move-object v5, v0

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x7

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    move v2, v3

    .line 149
    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move v3, v2

    move v1, v3

    .line 150
    :cond_2
    move v3, v1

    move v0, v3

    .end local v0    # "coords":[F
    return v0
.end method


# virtual methods
.method public SplitCubic(Ljava/util/List;[F)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 234
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object/from16 v1, p1

    .local v1, "resVect":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object/from16 v2, p2

    .local v2, "coords":[F
    const/4 v9, 0x4

    new-array v9, v9, [F

    move-object v3, v9

    .line 235
    .local v3, "params":[F
    const/4 v9, 0x3

    new-array v9, v9, [F

    move-object v4, v9

    .line 236
    .local v4, "eqn":[F
    const/4 v9, 0x2

    new-array v9, v9, [F

    move-object v5, v9

    .line 237
    .local v5, "res":[F
    const/4 v9, 0x0

    move v6, v9

    .line 244
    .local v6, "cnt":I
    move-object v9, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x2

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    move-object v9, v2

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x4

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    move-object v9, v2

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x6

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    :cond_0
    move-object v9, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x2

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    move-object v9, v2

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x4

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    move-object v9, v2

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x6

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 254
    :cond_1
    move-object v9, v4

    const/4 v10, 0x2

    move-object v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    neg-float v11, v11

    const/high16 v12, 0x40400000    # 3.0f

    move-object v13, v2

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x40400000    # 3.0f

    move-object v13, v2

    const/4 v14, 0x4

    aget v13, v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object v12, v2

    const/4 v13, 0x6

    aget v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 255
    move-object v9, v4

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    move-object v12, v2

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move-object v14, v2

    const/4 v15, 0x2

    aget v14, v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object v13, v2

    const/4 v14, 0x4

    aget v13, v13, v14

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 256
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    neg-float v11, v11

    move-object v12, v2

    const/4 v13, 0x2

    aget v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 258
    move-object v9, v4

    move-object v10, v5

    invoke-static {v9, v10}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v9

    move v7, v9

    .line 264
    .local v7, "nr":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 265
    move-object v9, v5

    move v10, v8

    aget v9, v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move-object v9, v5

    move v10, v8

    aget v9, v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 266
    move-object v9, v3

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    aput v11, v9, v10

    .line 264
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 276
    .end local v7    # "nr":I
    .end local v8    # "i":I
    :cond_3
    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x3

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_4

    move-object v9, v2

    const/4 v10, 0x3

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x5

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_4

    move-object v9, v2

    const/4 v10, 0x5

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x7

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    :cond_4
    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x3

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_5

    move-object v9, v2

    const/4 v10, 0x3

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x5

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_5

    move-object v9, v2

    const/4 v10, 0x5

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x7

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 286
    :cond_5
    move-object v9, v4

    const/4 v10, 0x2

    move-object v11, v2

    const/4 v12, 0x1

    aget v11, v11, v12

    neg-float v11, v11

    const/high16 v12, 0x40400000    # 3.0f

    move-object v13, v2

    const/4 v14, 0x3

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x40400000    # 3.0f

    move-object v13, v2

    const/4 v14, 0x5

    aget v13, v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object v12, v2

    const/4 v13, 0x7

    aget v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 287
    move-object v9, v4

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    move-object v12, v2

    const/4 v13, 0x1

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move-object v14, v2

    const/4 v15, 0x3

    aget v14, v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object v13, v2

    const/4 v14, 0x5

    aget v13, v13, v14

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 288
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x1

    aget v11, v11, v12

    neg-float v11, v11

    move-object v12, v2

    const/4 v13, 0x3

    aget v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 290
    move-object v9, v4

    move-object v10, v5

    invoke-static {v9, v10}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v9

    move v7, v9

    .line 296
    .restart local v7    # "nr":I
    const/4 v9, 0x0

    move v8, v9

    .restart local v8    # "i":I
    :goto_1
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_7

    .line 297
    move-object v9, v5

    move v10, v8

    aget v9, v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move-object v9, v5

    move v10, v8

    aget v9, v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 298
    move-object v9, v3

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    aput v11, v9, v10

    .line 296
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 303
    .end local v7    # "nr":I
    .end local v8    # "i":I
    :cond_7
    move v9, v6

    if-lez v9, :cond_9

    .line 307
    move-object v9, v3

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->sort([FII)V

    .line 310
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessFirstMonotonicPartOfCubic(Ljava/util/List;[FF)V

    .line 311
    const/4 v9, 0x1

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_9

    .line 312
    move-object v9, v3

    move v10, v7

    aget v9, v9, v10

    move-object v10, v3

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v8, v9

    .line 313
    .local v8, "param":F
    move v9, v8

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 314
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v14, v3

    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessFirstMonotonicPartOfCubic(Ljava/util/List;[FF)V

    .line 311
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 321
    .end local v7    # "i":I
    .end local v8    # "param":F
    :cond_9
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/geom/CubicApproximator;->ProcessMonotonicCubic(Ljava/util/List;[F)V

    .line 322
    return-void
.end method

.method public approximate(Ljava/util/List;Lcom/sun/javafx/geom/CubicCurve2D;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/QuadCurve2D;",
            ">;",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ")F"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, p1

    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/QuadCurve2D;>;"
    move-object v2, p2

    .local v2, "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 77
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/geom/CubicApproximator;->approximate(Ljava/util/List;Ljava/util/List;Lcom/sun/javafx/geom/CubicCurve2D;)F

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    return v0
.end method

.method public approximate(Ljava/util/List;Ljava/util/List;Lcom/sun/javafx/geom/CubicCurve2D;)F
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/QuadCurve2D;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ">;",
            "Lcom/sun/javafx/geom/CubicCurve2D;",
            ")F"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, p1

    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/QuadCurve2D;>;"
    move-object v2, p2

    .local v2, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/geom/CubicCurve2D;>;"
    move-object v3, p3

    .local v3, "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/geom/CubicApproximator;->getApproxError(Lcom/sun/javafx/geom/CubicCurve2D;)F

    move-result v5

    move v4, v5

    .line 62
    .local v4, "d":F
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicApproximator;->accuracy:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 63
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 64
    move-object v5, v1

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/CubicApproximator;->approximate(Lcom/sun/javafx/geom/CubicCurve2D;)Lcom/sun/javafx/geom/QuadCurve2D;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 65
    move v5, v4

    move v0, v5

    .line 71
    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    :goto_0
    return v0

    .line 67
    .restart local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x8

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x4

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x6

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    aput v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/CubicApproximator;->SplitCubic(Ljava/util/List;[F)V

    .line 71
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/geom/CubicApproximator;->approximate(Ljava/util/List;Ljava/util/List;)F

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public getAccuracy()F
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/CubicApproximator;->accuracy:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    return v0
.end method

.method public getMaxCubicSize()F
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/CubicApproximator;->maxCubicSize:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicApproximator;
    return v0
.end method

.method public setAccuracy(F)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move v1, p1

    .local v1, "accuracy":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/CubicApproximator;->accuracy:F

    .line 45
    return-void
.end method

.method public setMaxCubicSize(F)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicApproximator;
    move v1, p1

    .local v1, "maxCCubicSize":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/CubicApproximator;->maxCubicSize:F

    .line 53
    return-void
.end method

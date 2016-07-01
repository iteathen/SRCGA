.class public Lcom/sun/javafx/geom/QuadCurve2D;
.super Lcom/sun/javafx/geom/Shape;
.source "QuadCurve2D.java"


# static fields
.field private static final ABOVE:I = 0x2

.field private static final BELOW:I = -0x2

.field private static final HIGHEDGE:I = 0x1

.field private static final INSIDE:I = 0x0

.field private static final LOWEDGE:I = -0x1


# instance fields
.field public ctrlx:F

.field public ctrly:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 14

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "ctrlx":F
    move/from16 v4, p4

    .local v4, "ctrly":F
    move/from16 v5, p5

    .local v5, "x2":F
    move/from16 v6, p6

    .local v6, "y2":F
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 99
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 100
    return-void
.end method

.method private static evalQuadratic([FIZZ[FFFF)I
    .locals 17

    .prologue
    .line 631
    move-object/from16 v0, p0

    .local v0, "vals":[F
    move/from16 v1, p1

    .local v1, "num":I
    move/from16 v2, p2

    .local v2, "include0":Z
    move/from16 v3, p3

    .local v3, "include1":Z
    move-object/from16 v4, p4

    .local v4, "inflect":[F
    move/from16 v5, p5

    .local v5, "c1":F
    move/from16 v6, p6

    .local v6, "ctrl":F
    move/from16 v7, p7

    .local v7, "c2":F
    const/4 v12, 0x0

    move v8, v12

    .line 632
    .local v8, "j":I
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_0
    move v12, v9

    move v13, v1

    if-ge v12, v13, :cond_4

    .line 633
    move-object v12, v0

    move v13, v9

    aget v12, v12, v13

    move v10, v12

    .line 634
    .local v10, "t":F
    move v12, v2

    if-eqz v12, :cond_2

    move v12, v10

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    :goto_1
    move v12, v3

    if-eqz v12, :cond_3

    move v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    :goto_2
    move-object v12, v4

    if-eqz v12, :cond_0

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move-object v14, v4

    const/4 v15, 0x2

    aget v14, v14, v15

    mul-float/2addr v13, v14

    move v14, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 639
    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v10

    sub-float/2addr v12, v13

    move v11, v12

    .line 640
    .local v11, "u":F
    move-object v12, v0

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move v14, v5

    move v15, v11

    mul-float/2addr v14, v15

    move v15, v11

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v6

    mul-float v15, v15, v16

    move/from16 v16, v10

    mul-float v15, v15, v16

    move/from16 v16, v11

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v15, v7

    move/from16 v16, v10

    mul-float v15, v15, v16

    move/from16 v16, v10

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 632
    .end local v11    # "u":F
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 634
    :cond_2
    move v12, v10

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    goto :goto_1

    :cond_3
    move v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    goto :goto_2

    .line 643
    .end local v10    # "t":F
    :cond_4
    move v12, v8

    move v0, v12

    .end local v0    # "vals":[F
    return v0
.end method

.method private static fillEqn([FFFFF)V
    .locals 9

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "eqn":[F
    move v1, p1

    .local v1, "val":F
    move v2, p2

    .local v2, "c1":F
    move v3, p3

    .local v3, "cp":F
    move v4, p4

    .local v4, "c2":F
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v2

    move v8, v1

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 613
    move-object v5, v0

    const/4 v6, 0x1

    move v7, v3

    move v8, v3

    add-float/2addr v7, v8

    move v8, v2

    sub-float/2addr v7, v8

    move v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 614
    move-object v5, v0

    const/4 v6, 0x2

    move v7, v2

    move v8, v3

    sub-float/2addr v7, v8

    move v8, v3

    sub-float/2addr v7, v8

    move v8, v4

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 615
    return-void
.end method

.method public static getFlatness(FFFFFF)F
    .locals 12

    .prologue
    .line 237
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "ctrlx":F
    move v3, p3

    .local v3, "ctrly":F
    move/from16 v4, p4

    .local v4, "x2":F
    move/from16 v5, p5

    .local v5, "y2":F
    move v6, v0

    move v7, v1

    move v8, v4

    move v9, v5

    move v10, v2

    move v11, v3

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/geom/Line2D;->ptSegDist(FFFFFF)F

    move-result v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method public static getFlatness([FI)F
    .locals 10

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "coords":[F
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x5

    add-int/lit8 v6, v6, 0x5

    aget v5, v5, v6

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptSegDist(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "coords":[F
    return v0
.end method

.method public static getFlatnessSq(FFFFFF)F
    .locals 12

    .prologue
    .line 217
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "ctrlx":F
    move v3, p3

    .local v3, "ctrly":F
    move/from16 v4, p4

    .local v4, "x2":F
    move/from16 v5, p5

    .local v5, "y2":F
    move v6, v0

    move v7, v1

    move v8, v4

    move v9, v5

    move v10, v2

    move v11, v3

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method public static getFlatnessSq([FI)F
    .locals 10

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "coords":[F
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x5

    add-int/lit8 v6, v6, 0x5

    aget v5, v5, v6

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "coords":[F
    return v0
.end method

.method private static getTag(FFF)I
    .locals 5

    .prologue
    .line 659
    move v0, p0

    .local v0, "coord":F
    move v1, p1

    .local v1, "low":F
    move v2, p2

    .local v2, "high":F
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 660
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, -0x2

    :goto_0
    move v0, v3

    .line 665
    .end local v0    # "coord":F
    :goto_1
    return v0

    .line 660
    .restart local v0    # "coord":F
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 662
    :cond_1
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 663
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v3, 0x2

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 665
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static inwards(III)Z
    .locals 4

    .prologue
    .line 676
    move v0, p0

    .local v0, "pttag":I
    move v1, p1

    .local v1, "opt1tag":I
    move v2, p2

    .local v2, "opt2tag":I
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 680
    const/4 v3, 0x0

    move v0, v3

    .line 686
    .end local v0    # "pttag":I
    :goto_0
    return v0

    .line 682
    .restart local v0    # "pttag":I
    :pswitch_0
    move v3, v1

    if-gez v3, :cond_0

    move v3, v2

    if-ltz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 684
    :pswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 686
    :pswitch_2
    move v3, v1

    if-lez v3, :cond_2

    move v3, v2

    if-gtz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 676
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static solveQuadratic([F)I
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "eqn":[F
    move-object v1, v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v1

    move v0, v1

    .end local v0    # "eqn":[F
    return v0
.end method

.method public static solveQuadratic([F[F)I
    .locals 12

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "eqn":[F
    move-object v1, p1

    .local v1, "res":[F
    move-object v8, v0

    const/4 v9, 0x2

    aget v8, v8, v9

    move v2, v8

    .line 454
    .local v2, "a":F
    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move v3, v8

    .line 455
    .local v3, "b":F
    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move v4, v8

    .line 456
    .local v4, "c":F
    const/4 v8, 0x0

    move v5, v8

    .line 457
    .local v5, "roots":I
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    .line 459
    move v8, v3

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 461
    const/4 v8, -0x1

    move v0, v8

    .line 487
    .end local v0    # "eqn":[F
    :goto_0
    return v0

    .line 463
    .restart local v0    # "eqn":[F
    :cond_0
    move-object v8, v1

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move v10, v4

    neg-float v10, v10

    move v11, v3

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 487
    :cond_1
    :goto_1
    move v8, v5

    move v0, v8

    goto :goto_0

    .line 466
    :cond_2
    move v8, v3

    move v9, v3

    mul-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v4

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v6, v8

    .line 467
    .local v6, "d":F
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 469
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 471
    :cond_3
    move v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v6, v8

    .line 477
    move v8, v3

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 478
    move v8, v6

    neg-float v8, v8

    move v6, v8

    .line 480
    :cond_4
    move v8, v3

    move v9, v6

    add-float/2addr v8, v9

    const/high16 v9, -0x40000000    # -2.0f

    div-float/2addr v8, v9

    move v7, v8

    .line 482
    .local v7, "q":F
    move-object v8, v1

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move v10, v7

    move v11, v2

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 483
    move v8, v7

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 484
    move-object v8, v1

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    move v10, v4

    move v11, v7

    div-float/2addr v10, v11

    aput v10, v8, v9

    goto :goto_1
.end method

.method public static subdivide(Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/QuadCurve2D;)V
    .locals 20

    .prologue
    .line 328
    move-object/from16 v0, p0

    .local v0, "src":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object/from16 v1, p1

    .local v1, "left":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object/from16 v2, p2

    .local v2, "right":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move v3, v13

    .line 329
    .local v3, "x1":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move v4, v13

    .line 330
    .local v4, "y1":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move v5, v13

    .line 331
    .local v5, "ctrlx":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move v6, v13

    .line 332
    .local v6, "ctrly":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move v7, v13

    .line 333
    .local v7, "x2":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move v8, v13

    .line 334
    .local v8, "y2":F
    move v13, v3

    move v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v9, v13

    .line 335
    .local v9, "ctrlx1":F
    move v13, v4

    move v14, v6

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v10, v13

    .line 336
    .local v10, "ctrly1":F
    move v13, v7

    move v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v11, v13

    .line 337
    .local v11, "ctrlx2":F
    move v13, v8

    move v14, v6

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 338
    .local v12, "ctrly2":F
    move v13, v9

    move v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 339
    move v13, v10

    move v14, v12

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v6, v13

    .line 340
    move-object v13, v1

    if-eqz v13, :cond_0

    .line 341
    move-object v13, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 343
    :cond_0
    move-object v13, v2

    if-eqz v13, :cond_1

    .line 344
    move-object v13, v2

    move v14, v5

    move v15, v6

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 346
    :cond_1
    return-void
.end method

.method public static subdivide([FI[FI[FI)V
    .locals 15

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "src":[F
    move/from16 v1, p1

    .local v1, "srcoff":I
    move-object/from16 v2, p2

    .local v2, "left":[F
    move/from16 v3, p3

    .local v3, "leftoff":I
    move-object/from16 v4, p4

    .local v4, "right":[F
    move/from16 v5, p5

    .local v5, "rightoff":I
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    aget v12, v12, v13

    move v6, v12

    .line 380
    .local v6, "x1":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    move v7, v12

    .line 381
    .local v7, "y1":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v8, v12

    .line 382
    .local v8, "ctrlx":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v9, v12

    .line 383
    .local v9, "ctrly":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    move v10, v12

    .line 384
    .local v10, "x2":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    aget v12, v12, v13

    move v11, v12

    .line 385
    .local v11, "y2":F
    move-object v12, v2

    if-eqz v12, :cond_0

    .line 386
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move v14, v6

    aput v14, v12, v13

    .line 387
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v7

    aput v14, v12, v13

    .line 389
    :cond_0
    move-object v12, v4

    if-eqz v12, :cond_1

    .line 390
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v14, v10

    aput v14, v12, v13

    .line 391
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    move v14, v11

    aput v14, v12, v13

    .line 393
    :cond_1
    move v12, v6

    move v13, v8

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v6, v12

    .line 394
    move v12, v7

    move v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v7, v12

    .line 395
    move v12, v10

    move v13, v8

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v10, v12

    .line 396
    move v12, v11

    move v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v11, v12

    .line 397
    move v12, v6

    move v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v8, v12

    .line 398
    move v12, v7

    move v13, v11

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v9, v12

    .line 399
    move-object v12, v2

    if-eqz v12, :cond_2

    .line 400
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v6

    aput v14, v12, v13

    .line 401
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v7

    aput v14, v12, v13

    .line 402
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v14, v8

    aput v14, v12, v13

    .line 403
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    move v14, v9

    aput v14, v12, v13

    .line 405
    :cond_2
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 406
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move v14, v8

    aput v14, v12, v13

    .line 407
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v9

    aput v14, v12, v13

    .line 408
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v10

    aput v14, v12, v13

    .line 409
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v11

    aput v14, v12, v13

    .line 411
    :cond_3
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 25

    .prologue
    .line 494
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move/from16 v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move/from16 v21, v0

    move/from16 v4, v21

    .line 495
    .local v4, "x1":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move/from16 v21, v0

    move/from16 v5, v21

    .line 496
    .local v5, "y1":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move/from16 v21, v0

    move/from16 v6, v21

    .line 497
    .local v6, "xc":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move/from16 v21, v0

    move/from16 v7, v21

    .line 498
    .local v7, "yc":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move/from16 v21, v0

    move/from16 v8, v21

    .line 499
    .local v8, "x2":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move/from16 v21, v0

    move/from16 v9, v21

    .line 567
    .local v9, "y2":F
    move/from16 v21, v4

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v23, v6

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v22, v8

    add-float v21, v21, v22

    move/from16 v10, v21

    .line 568
    .local v10, "kx":F
    move/from16 v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v23, v7

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v22, v9

    add-float v21, v21, v22

    move/from16 v11, v21

    .line 569
    .local v11, "ky":F
    move/from16 v21, v2

    move/from16 v22, v4

    sub-float v21, v21, v22

    move/from16 v12, v21

    .line 570
    .local v12, "dx":F
    move/from16 v21, v3

    move/from16 v22, v5

    sub-float v21, v21, v22

    move/from16 v13, v21

    .line 571
    .local v13, "dy":F
    move/from16 v21, v8

    move/from16 v22, v4

    sub-float v21, v21, v22

    move/from16 v14, v21

    .line 572
    .local v14, "dxl":F
    move/from16 v21, v9

    move/from16 v22, v5

    sub-float v21, v21, v22

    move/from16 v15, v21

    .line 574
    .local v15, "dyl":F
    move/from16 v21, v12

    move/from16 v22, v11

    mul-float v21, v21, v22

    move/from16 v22, v13

    move/from16 v23, v10

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v22, v14

    move/from16 v23, v11

    mul-float v22, v22, v23

    move/from16 v23, v15

    move/from16 v24, v10

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    div-float v21, v21, v22

    move/from16 v16, v21

    .line 575
    .local v16, "t0":F
    move/from16 v21, v16

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_0

    move/from16 v21, v16

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_0

    move/from16 v21, v16

    move/from16 v22, v16

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_1

    .line 576
    :cond_0
    const/16 v21, 0x0

    move/from16 v1, v21

    .line 584
    .end local v1    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :goto_0
    return v1

    .line 579
    .restart local v1    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :cond_1
    move/from16 v21, v10

    move/from16 v22, v16

    mul-float v21, v21, v22

    move/from16 v22, v16

    mul-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v23, v6

    move/from16 v24, v4

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v23, v16

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v22, v4

    add-float v21, v21, v22

    move/from16 v17, v21

    .line 580
    .local v17, "xb":F
    move/from16 v21, v11

    move/from16 v22, v16

    mul-float v21, v21, v22

    move/from16 v22, v16

    mul-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v23, v7

    move/from16 v24, v5

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v23, v16

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v22, v5

    add-float v21, v21, v22

    move/from16 v18, v21

    .line 581
    .local v18, "yb":F
    move/from16 v21, v14

    move/from16 v22, v16

    mul-float v21, v21, v22

    move/from16 v22, v4

    add-float v21, v21, v22

    move/from16 v19, v21

    .line 582
    .local v19, "xl":F
    move/from16 v21, v15

    move/from16 v22, v16

    mul-float v21, v21, v22

    move/from16 v22, v5

    add-float v21, v21, v22

    move/from16 v20, v21

    .line 584
    .local v20, "yl":F
    move/from16 v21, v2

    move/from16 v22, v17

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_2

    move/from16 v21, v2

    move/from16 v22, v19

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_5

    :cond_2
    move/from16 v21, v2

    move/from16 v22, v19

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_3

    move/from16 v21, v2

    move/from16 v22, v17

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_5

    :cond_3
    move/from16 v21, v3

    move/from16 v22, v18

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_4

    move/from16 v21, v3

    move/from16 v22, v20

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_5

    :cond_4
    move/from16 v21, v3

    move/from16 v22, v20

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_6

    move/from16 v21, v3

    move/from16 v22, v18

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    :cond_5
    const/16 v21, 0x1

    :goto_1
    move/from16 v1, v21

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x0

    goto :goto_1
.end method

.method public contains(FFFF)Z
    .locals 9

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 878
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 885
    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :goto_0
    return v0

    .line 882
    .restart local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/QuadCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    .line 883
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/QuadCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 884
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/QuadCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 885
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/QuadCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/QuadCurve2D;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/QuadCurve2D;
    .locals 10

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    new-instance v1, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-direct/range {v2 .. v8}, Lcom/sun/javafx/geom/QuadCurve2D;-><init>(FFFFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/QuadCurve2D;->copy()Lcom/sun/javafx/geom/QuadCurve2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 945
    const/4 v3, 0x1

    move v0, v3

    .line 953
    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :goto_0
    return v0

    .line 947
    .restart local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;

    if-eqz v3, :cond_2

    .line 948
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v3

    .line 949
    .local v2, "curve":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 953
    .end local v2    # "curve":Lcom/sun/javafx/geom/QuadCurve2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 12

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v1, v5

    .line 130
    .local v1, "left":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v2, v5

    .line 131
    .local v2, "top":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v3, v5

    .line 132
    .local v3, "right":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v4, v5

    .line 133
    .local v4, "bottom":F
    new-instance v5, Lcom/sun/javafx/geom/RectBounds;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public getFlatness()F
    .locals 7

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    invoke-static/range {v1 .. v6}, Lcom/sun/javafx/geom/Line2D;->ptSegDist(FFFFFF)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return v0
.end method

.method public getFlatnessSq()F
    .locals 7

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    invoke-static/range {v1 .. v6}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/QuadIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/QuadIterator;-><init>(Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/FlatteningPathIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/QuadCurve2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 934
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 935
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 936
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 937
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x35

    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v2, v3

    move v1, v2

    .line 938
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x3b

    mul-int/lit8 v3, v3, 0x3b

    add-int/2addr v2, v3

    move v1, v2

    .line 939
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 37

    .prologue
    .line 695
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move/from16 v29, v5

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-lez v29, :cond_0

    move/from16 v29, v6

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gtz v29, :cond_1

    .line 696
    :cond_0
    const/16 v29, 0x0

    move/from16 v2, v29

    .line 870
    .end local v2    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :goto_0
    return v2

    .line 703
    .restart local v2    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    :cond_1
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move/from16 v29, v0

    move/from16 v7, v29

    .line 704
    .local v7, "x1":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move/from16 v29, v0

    move/from16 v8, v29

    .line 705
    .local v8, "y1":F
    move/from16 v29, v7

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v9, v29

    .line 706
    .local v9, "x1tag":I
    move/from16 v29, v8

    move/from16 v30, v4

    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v10, v29

    .line 707
    .local v10, "y1tag":I
    move/from16 v29, v9

    if-nez v29, :cond_2

    move/from16 v29, v10

    if-nez v29, :cond_2

    .line 708
    const/16 v29, 0x1

    move/from16 v2, v29

    goto :goto_0

    .line 710
    :cond_2
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move/from16 v29, v0

    move/from16 v11, v29

    .line 711
    .local v11, "x2":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    move/from16 v29, v0

    move/from16 v12, v29

    .line 712
    .local v12, "y2":F
    move/from16 v29, v11

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v13, v29

    .line 713
    .local v13, "x2tag":I
    move/from16 v29, v12

    move/from16 v30, v4

    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v14, v29

    .line 714
    .local v14, "y2tag":I
    move/from16 v29, v13

    if-nez v29, :cond_3

    move/from16 v29, v14

    if-nez v29, :cond_3

    .line 715
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 717
    :cond_3
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move/from16 v29, v0

    move/from16 v15, v29

    .line 718
    .local v15, "ctrlx":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move/from16 v29, v0

    move/from16 v16, v29

    .line 719
    .local v16, "ctrly":F
    move/from16 v29, v15

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v17, v29

    .line 720
    .local v17, "ctrlxtag":I
    move/from16 v29, v16

    move/from16 v30, v4

    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v18, v29

    .line 724
    .local v18, "ctrlytag":I
    move/from16 v29, v9

    if-gez v29, :cond_4

    move/from16 v29, v13

    if-gez v29, :cond_4

    move/from16 v29, v17

    if-gez v29, :cond_4

    .line 725
    const/16 v29, 0x0

    move/from16 v2, v29

    goto/16 :goto_0

    .line 727
    :cond_4
    move/from16 v29, v10

    if-gez v29, :cond_5

    move/from16 v29, v14

    if-gez v29, :cond_5

    move/from16 v29, v18

    if-gez v29, :cond_5

    .line 728
    const/16 v29, 0x0

    move/from16 v2, v29

    goto/16 :goto_0

    .line 730
    :cond_5
    move/from16 v29, v9

    if-lez v29, :cond_6

    move/from16 v29, v13

    if-lez v29, :cond_6

    move/from16 v29, v17

    if-lez v29, :cond_6

    .line 731
    const/16 v29, 0x0

    move/from16 v2, v29

    goto/16 :goto_0

    .line 733
    :cond_6
    move/from16 v29, v10

    if-lez v29, :cond_7

    move/from16 v29, v14

    if-lez v29, :cond_7

    move/from16 v29, v18

    if-lez v29, :cond_7

    .line 734
    const/16 v29, 0x0

    move/from16 v2, v29

    goto/16 :goto_0

    .line 742
    :cond_7
    move/from16 v29, v9

    move/from16 v30, v13

    move/from16 v31, v17

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->inwards(III)Z

    move-result v29

    if-eqz v29, :cond_8

    move/from16 v29, v10

    move/from16 v30, v14

    move/from16 v31, v18

    .line 743
    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->inwards(III)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 746
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 748
    :cond_8
    move/from16 v29, v13

    move/from16 v30, v9

    move/from16 v31, v17

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->inwards(III)Z

    move-result v29

    if-eqz v29, :cond_9

    move/from16 v29, v14

    move/from16 v30, v10

    move/from16 v31, v18

    .line 749
    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->inwards(III)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 752
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 756
    :cond_9
    move/from16 v29, v9

    move/from16 v30, v13

    mul-int v29, v29, v30

    if-gtz v29, :cond_a

    const/16 v29, 0x1

    :goto_1
    move/from16 v19, v29

    .line 757
    .local v19, "xoverlap":Z
    move/from16 v29, v10

    move/from16 v30, v14

    mul-int v29, v29, v30

    if-gtz v29, :cond_b

    const/16 v29, 0x1

    :goto_2
    move/from16 v20, v29

    .line 758
    .local v20, "yoverlap":Z
    move/from16 v29, v9

    if-nez v29, :cond_c

    move/from16 v29, v13

    if-nez v29, :cond_c

    move/from16 v29, v20

    if-eqz v29, :cond_c

    .line 759
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 756
    .end local v19    # "xoverlap":Z
    .end local v20    # "yoverlap":Z
    :cond_a
    const/16 v29, 0x0

    goto :goto_1

    .line 757
    .restart local v19    # "xoverlap":Z
    :cond_b
    const/16 v29, 0x0

    goto :goto_2

    .line 761
    .restart local v20    # "yoverlap":Z
    :cond_c
    move/from16 v29, v10

    if-nez v29, :cond_d

    move/from16 v29, v14

    if-nez v29, :cond_d

    move/from16 v29, v19

    if-eqz v29, :cond_d

    .line 762
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 771
    :cond_d
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v21, v29

    .line 772
    .local v21, "eqn":[F
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v22, v29

    .line 773
    .local v22, "res":[F
    move/from16 v29, v20

    if-nez v29, :cond_10

    .line 779
    move-object/from16 v29, v21

    move/from16 v30, v10

    if-gez v30, :cond_e

    move/from16 v30, v4

    :goto_3
    move/from16 v31, v8

    move/from16 v32, v16

    move/from16 v33, v12

    invoke-static/range {v29 .. v33}, Lcom/sun/javafx/geom/QuadCurve2D;->fillEqn([FFFFF)V

    .line 780
    move-object/from16 v29, v21

    move-object/from16 v30, v22

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    move-object/from16 v29, v22

    const/16 v30, 0x2

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v34, v7

    move/from16 v35, v15

    move/from16 v36, v11

    .line 781
    invoke-static/range {v29 .. v36}, Lcom/sun/javafx/geom/QuadCurve2D;->evalQuadratic([FIZZ[FFFF)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    move-object/from16 v29, v22

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    .line 783
    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move-object/from16 v30, v22

    const/16 v31, 0x1

    aget v30, v30, v31

    move/from16 v31, v3

    move/from16 v32, v3

    move/from16 v33, v5

    add-float v32, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v30

    mul-int v29, v29, v30

    if-gtz v29, :cond_f

    const/16 v29, 0x1

    :goto_4
    move/from16 v2, v29

    goto/16 :goto_0

    .line 779
    :cond_e
    move/from16 v30, v4

    move/from16 v31, v6

    add-float v30, v30, v31

    goto :goto_3

    .line 783
    :cond_f
    const/16 v29, 0x0

    goto :goto_4

    .line 787
    :cond_10
    move/from16 v29, v19

    if-nez v29, :cond_13

    .line 793
    move-object/from16 v29, v21

    move/from16 v30, v9

    if-gez v30, :cond_11

    move/from16 v30, v3

    :goto_5
    move/from16 v31, v7

    move/from16 v32, v15

    move/from16 v33, v11

    invoke-static/range {v29 .. v33}, Lcom/sun/javafx/geom/QuadCurve2D;->fillEqn([FFFFF)V

    .line 794
    move-object/from16 v29, v21

    move-object/from16 v30, v22

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    move-object/from16 v29, v22

    const/16 v30, 0x2

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v34, v8

    move/from16 v35, v16

    move/from16 v36, v12

    .line 795
    invoke-static/range {v29 .. v36}, Lcom/sun/javafx/geom/QuadCurve2D;->evalQuadratic([FIZZ[FFFF)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    move-object/from16 v29, v22

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v4

    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    .line 797
    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move-object/from16 v30, v22

    const/16 v31, 0x1

    aget v30, v30, v31

    move/from16 v31, v4

    move/from16 v32, v4

    move/from16 v33, v6

    add-float v32, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v30

    mul-int v29, v29, v30

    if-gtz v29, :cond_12

    const/16 v29, 0x1

    :goto_6
    move/from16 v2, v29

    goto/16 :goto_0

    .line 793
    :cond_11
    move/from16 v30, v3

    move/from16 v31, v5

    add-float v30, v30, v31

    goto :goto_5

    .line 797
    :cond_12
    const/16 v29, 0x0

    goto :goto_6

    .line 803
    :cond_13
    move/from16 v29, v11

    move/from16 v30, v7

    sub-float v29, v29, v30

    move/from16 v23, v29

    .line 804
    .local v23, "dx":F
    move/from16 v29, v12

    move/from16 v30, v8

    sub-float v29, v29, v30

    move/from16 v24, v29

    .line 805
    .local v24, "dy":F
    move/from16 v29, v12

    move/from16 v30, v7

    mul-float v29, v29, v30

    move/from16 v30, v11

    move/from16 v31, v8

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move/from16 v25, v29

    .line 807
    .local v25, "k":F
    move/from16 v29, v10

    if-nez v29, :cond_14

    .line 808
    move/from16 v29, v9

    move/from16 v26, v29

    .line 812
    .local v26, "c1tag":I
    :goto_7
    move/from16 v29, v14

    if-nez v29, :cond_16

    .line 813
    move/from16 v29, v13

    move/from16 v27, v29

    .line 819
    .local v27, "c2tag":I
    :goto_8
    move/from16 v29, v26

    move/from16 v30, v27

    mul-int v29, v29, v30

    if-gtz v29, :cond_18

    .line 820
    const/16 v29, 0x1

    move/from16 v2, v29

    goto/16 :goto_0

    .line 810
    .end local v26    # "c1tag":I
    .end local v27    # "c2tag":I
    :cond_14
    move/from16 v29, v25

    move/from16 v30, v23

    move/from16 v31, v10

    if-gez v31, :cond_15

    move/from16 v31, v4

    :goto_9
    mul-float v30, v30, v31

    add-float v29, v29, v30

    move/from16 v30, v24

    div-float v29, v29, v30

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v26, v29

    .restart local v26    # "c1tag":I
    goto :goto_7

    .end local v26    # "c1tag":I
    :cond_15
    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    goto :goto_9

    .line 815
    .restart local v26    # "c1tag":I
    :cond_16
    move/from16 v29, v25

    move/from16 v30, v23

    move/from16 v31, v14

    if-gez v31, :cond_17

    move/from16 v31, v4

    :goto_a
    mul-float v30, v30, v31

    add-float v29, v29, v30

    move/from16 v30, v24

    div-float v29, v29, v30

    move/from16 v30, v3

    move/from16 v31, v3

    move/from16 v32, v5

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v27, v29

    .restart local v27    # "c2tag":I
    goto :goto_8

    .end local v27    # "c2tag":I
    :cond_17
    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    goto :goto_a

    .line 849
    .restart local v27    # "c2tag":I
    :cond_18
    move/from16 v29, v26

    move/from16 v30, v9

    mul-int v29, v29, v30

    if-gtz v29, :cond_19

    move/from16 v29, v10

    :goto_b
    move/from16 v26, v29

    .line 856
    move-object/from16 v29, v21

    move/from16 v30, v27

    if-gez v30, :cond_1a

    move/from16 v30, v3

    :goto_c
    move/from16 v31, v7

    move/from16 v32, v15

    move/from16 v33, v11

    invoke-static/range {v29 .. v33}, Lcom/sun/javafx/geom/QuadCurve2D;->fillEqn([FFFFF)V

    .line 857
    move-object/from16 v29, v21

    move-object/from16 v30, v22

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v29

    move/from16 v28, v29

    .line 862
    .local v28, "num":I
    move-object/from16 v29, v22

    move/from16 v30, v28

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v34, v8

    move/from16 v35, v16

    move/from16 v36, v12

    invoke-static/range {v29 .. v36}, Lcom/sun/javafx/geom/QuadCurve2D;->evalQuadratic([FIZZ[FFFF)I

    move-result v29

    .line 866
    move-object/from16 v29, v22

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v4

    move/from16 v31, v4

    move/from16 v32, v6

    add-float v31, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/geom/QuadCurve2D;->getTag(FFF)I

    move-result v29

    move/from16 v27, v29

    .line 870
    move/from16 v29, v26

    move/from16 v30, v27

    mul-int v29, v29, v30

    if-gtz v29, :cond_1b

    const/16 v29, 0x1

    :goto_d
    move/from16 v2, v29

    goto/16 :goto_0

    .line 849
    .end local v28    # "num":I
    :cond_19
    move/from16 v29, v14

    goto :goto_b

    .line 856
    :cond_1a
    move/from16 v30, v3

    move/from16 v31, v5

    add-float v30, v30, v31

    goto :goto_c

    .line 870
    .restart local v28    # "num":I
    :cond_1b
    const/16 v29, 0x0

    goto :goto_d
.end method

.method public setCurve(FFFFFF)V
    .locals 9

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "ctrlx":F
    move v4, p4

    .local v4, "ctrly":F
    move v5, p5

    .local v5, "x2":F
    move v6, p6

    .local v6, "y2":F
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    .line 118
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    .line 119
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    .line 120
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    .line 121
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    .line 122
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    .line 123
    return-void
.end method

.method public setCurve(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 11

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "cp":Lcom/sun/javafx/geom/Point2D;
    move-object v3, p3

    .local v3, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v9, v3

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 171
    return-void
.end method

.method public setCurve(Lcom/sun/javafx/geom/QuadCurve2D;)V
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 198
    return-void
.end method

.method public setCurve([FI)V
    .locals 12

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "coords":[F
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    aget v8, v8, v9

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x5

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 159
    return-void
.end method

.method public setCurve([Lcom/sun/javafx/geom/Point2D;I)V
    .locals 12

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "pts":[Lcom/sun/javafx/geom/Point2D;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/QuadCurve2D;->setCurve(FFFFFF)V

    .line 188
    return-void
.end method

.method public subdivide(Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/QuadCurve2D;)V
    .locals 6

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v1, p1

    .local v1, "left":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v2, p2

    .local v2, "right":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/geom/QuadCurve2D;->subdivide(Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/QuadCurve2D;)V

    .line 309
    return-void
.end method

.method public toCubic()Lcom/sun/javafx/geom/CubicCurve2D;
    .locals 12

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadCurve2D;
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

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadCurve2D;
    return-object v0
.end method

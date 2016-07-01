.class public Lcom/sun/javafx/geom/CubicCurve2D;
.super Lcom/sun/javafx/geom/Shape;
.source "CubicCurve2D.java"


# static fields
.field private static final ABOVE:I = 0x2

.field private static final BELOW:I = -0x2

.field private static final HIGHEDGE:I = 0x1

.field private static final INSIDE:I = 0x0

.field private static final LOWEDGE:I = -0x1


# instance fields
.field public ctrlx1:F

.field public ctrlx2:F

.field public ctrly1:F

.field public ctrly2:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 18

    .prologue
    .line 123
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "ctrlx1":F
    move/from16 v4, p4

    .local v4, "ctrly1":F
    move/from16 v5, p5

    .local v5, "ctrlx2":F
    move/from16 v6, p6

    .local v6, "ctrly2":F
    move/from16 v7, p7

    .local v7, "x2":F
    move/from16 v8, p8

    .local v8, "y2":F
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 124
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 125
    return-void
.end method

.method private calcX(F)F
    .locals 8

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "t":F
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    sub-float/2addr v3, v4

    move v2, v3

    .line 1251
    .local v2, "u":F
    move v3, v2

    move v4, v2

    mul-float/2addr v3, v4

    move v4, v2

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move v5, v1

    move v6, v2

    mul-float/2addr v5, v6

    move v6, v2

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    mul-float/2addr v5, v6

    move v6, v1

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v2

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v4, v1

    move v5, v1

    mul-float/2addr v4, v5

    move v5, v1

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method private calcY(F)F
    .locals 8

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "t":F
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    sub-float/2addr v3, v4

    move v2, v3

    .line 1259
    .local v2, "u":F
    move v3, v2

    move v4, v2

    mul-float/2addr v3, v4

    move v4, v2

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    move v5, v1

    move v6, v2

    mul-float/2addr v5, v6

    move v6, v2

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    mul-float/2addr v5, v6

    move v6, v1

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v2

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v4, v1

    move v5, v1

    mul-float/2addr v4, v5

    move v5, v1

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method private static evalCubic([FIZZ[FFFFF)I
    .locals 18

    .prologue
    .line 886
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

    .local v6, "cp1":F
    move/from16 v7, p7

    .local v7, "cp2":F
    move/from16 v8, p8

    .local v8, "c2":F
    const/4 v13, 0x0

    move v9, v13

    .line 887
    .local v9, "j":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_0
    move v13, v10

    move v14, v1

    if-ge v13, v14, :cond_4

    .line 888
    move-object v13, v0

    move v14, v10

    aget v13, v13, v14

    move v11, v13

    .line 889
    .local v11, "t":F
    move v13, v2

    if-eqz v13, :cond_2

    move v13, v11

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    :goto_1
    move v13, v3

    if-eqz v13, :cond_3

    move v13, v11

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    :goto_2
    move-object v13, v4

    if-eqz v13, :cond_0

    move-object v13, v4

    const/4 v14, 0x1

    aget v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    move-object v15, v4

    const/16 v16, 0x2

    aget v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    move-object/from16 v16, v4

    const/16 v17, 0x3

    aget v16, v16, v17

    mul-float v15, v15, v16

    move/from16 v16, v11

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v15, v11

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    .line 894
    :cond_0
    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v11

    sub-float/2addr v13, v14

    move v12, v13

    .line 895
    .local v12, "u":F
    move-object v13, v0

    move v14, v9

    add-int/lit8 v9, v9, 0x1

    move v15, v5

    move/from16 v16, v12

    mul-float v15, v15, v16

    move/from16 v16, v12

    mul-float v15, v15, v16

    move/from16 v16, v12

    mul-float v15, v15, v16

    const/high16 v16, 0x40400000    # 3.0f

    move/from16 v17, v6

    mul-float v16, v16, v17

    move/from16 v17, v11

    mul-float v16, v16, v17

    move/from16 v17, v12

    mul-float v16, v16, v17

    move/from16 v17, v12

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/high16 v16, 0x40400000    # 3.0f

    move/from16 v17, v7

    mul-float v16, v16, v17

    move/from16 v17, v11

    mul-float v16, v16, v17

    move/from16 v17, v11

    mul-float v16, v16, v17

    move/from16 v17, v12

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v11

    mul-float v16, v16, v17

    move/from16 v17, v11

    mul-float v16, v16, v17

    move/from16 v17, v11

    mul-float v16, v16, v17

    add-float v15, v15, v16

    aput v15, v13, v14

    .line 887
    .end local v12    # "u":F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 889
    :cond_2
    move v13, v11

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    goto/16 :goto_1

    :cond_3
    move v13, v11

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    goto/16 :goto_2

    .line 898
    .end local v11    # "t":F
    :cond_4
    move v13, v9

    move v0, v13

    .end local v0    # "vals":[F
    return v0
.end method

.method private static fillEqn([FFFFFF)V
    .locals 11

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "eqn":[F
    move v1, p1

    .local v1, "val":F
    move v2, p2

    .local v2, "c1":F
    move v3, p3

    .local v3, "cp1":F
    move v4, p4

    .local v4, "cp2":F
    move/from16 v5, p5

    .local v5, "c2":F
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 866
    move-object v6, v0

    const/4 v7, 0x1

    move v8, v3

    move v9, v2

    sub-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 867
    move-object v6, v0

    const/4 v7, 0x2

    move v8, v4

    move v9, v3

    sub-float/2addr v8, v9

    move v9, v3

    sub-float/2addr v8, v9

    move v9, v2

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 868
    move-object v6, v0

    const/4 v7, 0x3

    move v8, v5

    move v9, v3

    move v10, v4

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v9, v2

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 869
    return-void
.end method

.method private static findZero(FF[F)F
    .locals 18

    .prologue
    .line 758
    move/from16 v0, p0

    .local v0, "t":F
    move/from16 v1, p1

    .local v1, "target":F
    move-object/from16 v2, p2

    .local v2, "eqn":[F
    const/4 v11, 0x3

    new-array v11, v11, [F

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    move-object v15, v2

    const/16 v16, 0x2

    aget v15, v15, v16

    mul-float/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x2

    const/high16 v14, 0x40400000    # 3.0f

    move-object v15, v2

    const/16 v16, 0x3

    aget v15, v15, v16

    mul-float/2addr v14, v15

    aput v14, v12, v13

    move-object v3, v11

    .line 760
    .local v3, "slopeqn":[F
    const/4 v11, 0x0

    move v5, v11

    .line 761
    .local v5, "origdelta":F
    move v11, v0

    move v6, v11

    .line 763
    .local v6, "origt":F
    :goto_0
    move-object v11, v3

    const/4 v12, 0x2

    move v13, v0

    invoke-static {v11, v12, v13}, Lcom/sun/javafx/geom/CubicCurve2D;->solveEqn([FIF)F

    move-result v11

    move v4, v11

    .line 764
    .local v4, "slope":F
    move v11, v4

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    .line 766
    move v11, v0

    move v0, v11

    .line 800
    .end local v0    # "t":F
    :goto_1
    return v0

    .line 768
    .restart local v0    # "t":F
    :cond_0
    move-object v11, v2

    const/4 v12, 0x3

    move v13, v0

    invoke-static {v11, v12, v13}, Lcom/sun/javafx/geom/CubicCurve2D;->solveEqn([FIF)F

    move-result v11

    move v7, v11

    .line 769
    .local v7, "y":F
    move v11, v7

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    .line 771
    move v11, v0

    move v0, v11

    goto :goto_1

    .line 774
    :cond_1
    move v11, v7

    move v12, v4

    div-float/2addr v11, v12

    neg-float v11, v11

    move v8, v11

    .line 776
    .local v8, "delta":F
    move v11, v5

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 777
    move v11, v8

    move v5, v11

    .line 779
    :cond_2
    move v11, v0

    move v12, v1

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 780
    move v11, v8

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    move v11, v0

    move v0, v11

    goto :goto_1

    .line 781
    :cond_3
    move v11, v0

    move v12, v1

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 782
    move v11, v8

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    move v11, v0

    move v0, v11

    goto :goto_1

    .line 784
    :cond_4
    move v11, v8

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    move v11, v1

    const/4 v12, 0x1

    add-float/2addr v11, v12

    :goto_2
    move v0, v11

    goto :goto_1

    :cond_5
    move v11, v1

    const/4 v12, 0x1

    sub-float/2addr v11, v12

    goto :goto_2

    .line 788
    :cond_6
    move v11, v0

    move v12, v8

    add-float/2addr v11, v12

    move v9, v11

    .line 789
    .local v9, "newt":F
    move v11, v0

    move v12, v9

    cmpl-float v11, v11, v12

    if-nez v11, :cond_7

    .line 791
    move v11, v0

    move v0, v11

    goto :goto_1

    .line 793
    :cond_7
    move v11, v8

    move v12, v5

    mul-float/2addr v11, v12

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    .line 795
    move v11, v6

    move v12, v0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    move v11, v1

    move v12, v6

    move v13, v0

    .line 796
    invoke-static {v11, v12, v13}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v11

    .line 797
    :goto_3
    move v10, v11

    .line 798
    .local v10, "tag":I
    move v11, v10

    if-eqz v11, :cond_9

    .line 800
    move v11, v6

    move v12, v0

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v0, v11

    goto :goto_1

    .line 796
    .end local v10    # "tag":I
    :cond_8
    move v11, v1

    move v12, v0

    move v13, v6

    .line 797
    invoke-static {v11, v12, v13}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v11

    goto :goto_3

    .line 804
    .restart local v10    # "tag":I
    :cond_9
    move v11, v1

    move v0, v11

    .line 808
    .end local v10    # "tag":I
    :goto_4
    goto/16 :goto_0

    .line 806
    :cond_a
    move v11, v9

    move v0, v11

    goto :goto_4
.end method

.method private static fixRoots([F[F)V
    .locals 10

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "res":[F
    move-object v1, p1

    .local v1, "eqn":[F
    const v5, 0x3727c5ac    # 1.0E-5f

    move v2, v5

    .line 739
    .local v2, "EPSILON":F
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 740
    move-object v5, v0

    move v6, v3

    aget v5, v5, v6

    move v4, v5

    .line 741
    .local v4, "t":F
    move v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 742
    move-object v5, v0

    move v6, v3

    move v7, v4

    const/4 v8, 0x0

    move-object v9, v1

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/geom/CubicCurve2D;->findZero(FF[F)F

    move-result v7

    aput v7, v5, v6

    .line 739
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    :cond_1
    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 744
    move-object v5, v0

    move v6, v3

    move v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v1

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/geom/CubicCurve2D;->findZero(FF[F)F

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 747
    .end local v4    # "t":F
    :cond_2
    return-void
.end method

.method public static getFlatness(FFFFFFFF)F
    .locals 16

    .prologue
    .line 364
    move/from16 v0, p0

    .local v0, "x1":F
    move/from16 v1, p1

    .local v1, "y1":F
    move/from16 v2, p2

    .local v2, "ctrlx1":F
    move/from16 v3, p3

    .local v3, "ctrly1":F
    move/from16 v4, p4

    .local v4, "ctrlx2":F
    move/from16 v5, p5

    .local v5, "ctrly2":F
    move/from16 v6, p6

    .local v6, "x2":F
    move/from16 v7, p7

    .local v7, "y2":F
    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatnessSq(FFFFFFFF)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v0, v8

    .end local v0    # "x1":F
    return v0
.end method

.method public static getFlatness([FI)F
    .locals 12

    .prologue
    .line 400
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

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    aget v7, v7, v8

    move-object v8, v0

    move v9, v1

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    aget v8, v8, v9

    move-object v9, v0

    move v10, v1

    const/4 v11, 0x7

    add-int/lit8 v10, v10, 0x7

    aget v9, v9, v10

    invoke-static/range {v2 .. v9}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatness(FFFFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "coords":[F
    return v0
.end method

.method public static getFlatnessSq(FFFFFFFF)F
    .locals 15

    .prologue
    .line 331
    move v0, p0

    .local v0, "x1":F
    move/from16 v1, p1

    .local v1, "y1":F
    move/from16 v2, p2

    .local v2, "ctrlx1":F
    move/from16 v3, p3

    .local v3, "ctrly1":F
    move/from16 v4, p4

    .local v4, "ctrlx2":F
    move/from16 v5, p5

    .local v5, "ctrly2":F
    move/from16 v6, p6

    .local v6, "x2":F
    move/from16 v7, p7

    .local v7, "y2":F
    move v8, v0

    move v9, v1

    move v10, v6

    move v11, v7

    move v12, v2

    move v13, v3

    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v8

    move v9, v0

    move v10, v1

    move v11, v6

    move v12, v7

    move v13, v4

    move v14, v5

    .line 332
    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v9

    .line 331
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v0, v8

    .end local v0    # "x1":F
    return v0
.end method

.method public static getFlatnessSq([FI)F
    .locals 12

    .prologue
    .line 381
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

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    aget v7, v7, v8

    move-object v8, v0

    move v9, v1

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    aget v8, v8, v9

    move-object v9, v0

    move v10, v1

    const/4 v11, 0x7

    add-int/lit8 v10, v10, 0x7

    aget v9, v9, v10

    invoke-static/range {v2 .. v9}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatnessSq(FFFFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "coords":[F
    return v0
.end method

.method private static getTag(FFF)I
    .locals 5

    .prologue
    .line 914
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

    .line 915
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, -0x2

    :goto_0
    move v0, v3

    .line 920
    .end local v0    # "coord":F
    :goto_1
    return v0

    .line 915
    .restart local v0    # "coord":F
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 917
    :cond_1
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 918
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

    .line 920
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static inwards(III)Z
    .locals 4

    .prologue
    .line 931
    move v0, p0

    .local v0, "pttag":I
    move v1, p1

    .local v1, "opt1tag":I
    move v2, p2

    .local v2, "opt2tag":I
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 935
    const/4 v3, 0x0

    move v0, v3

    .line 941
    .end local v0    # "pttag":I
    :goto_0
    return v0

    .line 937
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

    .line 939
    :pswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 941
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

    .line 931
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static solveCubic([F)I
    .locals 3

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "eqn":[F
    move-object v1, v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/javafx/geom/CubicCurve2D;->solveCubic([F[F)I

    move-result v1

    move v0, v1

    .end local v0    # "eqn":[F
    return v0
.end method

.method public static solveCubic([F[F)I
    .locals 26

    .prologue
    .line 659
    move-object/from16 v3, p0

    .local v3, "eqn":[F
    move-object/from16 v4, p1

    .local v4, "res":[F
    move-object/from16 v18, v3

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v5, v18

    .line 660
    .local v5, "d":F
    move/from16 v18, v5

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 662
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/geom/QuadCurve2D;->solveQuadratic([F[F)I

    move-result v18

    move/from16 v3, v18

    .line 700
    .end local v3    # "eqn":[F
    :goto_0
    return v3

    .line 664
    .restart local v3    # "eqn":[F
    :cond_0
    move-object/from16 v18, v3

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v19, v5

    div-float v18, v18, v19

    move/from16 v6, v18

    .line 665
    .local v6, "a":F
    move-object/from16 v18, v3

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v5

    div-float v18, v18, v19

    move/from16 v7, v18

    .line 666
    .local v7, "b":F
    move-object/from16 v18, v3

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v5

    div-float v18, v18, v19

    move/from16 v8, v18

    .line 667
    .local v8, "c":F
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 668
    .local v9, "roots":I
    move/from16 v18, v6

    move/from16 v19, v6

    mul-float v18, v18, v19

    const/high16 v19, 0x40400000    # 3.0f

    move/from16 v20, v7

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    const/high16 v19, 0x41100000    # 9.0f

    div-float v18, v18, v19

    move/from16 v10, v18

    .line 669
    .local v10, "Q":F
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v19, v6

    mul-float v18, v18, v19

    move/from16 v19, v6

    mul-float v18, v18, v19

    move/from16 v19, v6

    mul-float v18, v18, v19

    const/high16 v19, 0x41100000    # 9.0f

    move/from16 v20, v6

    mul-float v19, v19, v20

    move/from16 v20, v7

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    const/high16 v19, 0x41d80000    # 27.0f

    move/from16 v20, v8

    mul-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x42580000    # 54.0f

    div-float v18, v18, v19

    move/from16 v11, v18

    .line 670
    .local v11, "R":F
    move/from16 v18, v11

    move/from16 v19, v11

    mul-float v18, v18, v19

    move/from16 v12, v18

    .line 671
    .local v12, "R2":F
    move/from16 v18, v10

    move/from16 v19, v10

    mul-float v18, v18, v19

    move/from16 v19, v10

    mul-float v18, v18, v19

    move/from16 v13, v18

    .line 672
    .local v13, "Q3":F
    move/from16 v18, v6

    const/high16 v19, 0x40400000    # 3.0f

    div-float v18, v18, v19

    move/from16 v6, v18

    .line 673
    move/from16 v18, v12

    move/from16 v19, v13

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 674
    move/from16 v18, v11

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v13

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 675
    .local v14, "theta":F
    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 676
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 680
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v3, v18

    .line 681
    move-object/from16 v18, v4

    const/16 v19, 0x0

    move-object/from16 v20, v3

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v14

    const/high16 v23, 0x40400000    # 3.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 684
    move-object/from16 v18, v4

    move/from16 v19, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v14

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 685
    move-object/from16 v18, v4

    move/from16 v19, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v14

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 686
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/geom/CubicCurve2D;->fixRoots([F[F)V

    .line 687
    .line 700
    .end local v14    # "theta":F
    :goto_1
    move/from16 v18, v9

    move/from16 v3, v18

    goto/16 :goto_0

    .line 688
    :cond_2
    move/from16 v18, v11

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    move/from16 v14, v18

    .line 689
    .local v14, "neg":Z
    move/from16 v18, v12

    move/from16 v19, v13

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 690
    .local v15, "S":F
    move/from16 v18, v14

    if-eqz v18, :cond_3

    .line 691
    move/from16 v18, v11

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 693
    :cond_3
    move/from16 v18, v11

    move/from16 v19, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 694
    .local v16, "A":F
    move/from16 v18, v14

    if-nez v18, :cond_4

    .line 695
    move/from16 v18, v16

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 697
    :cond_4
    move/from16 v18, v16

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    const/16 v18, 0x0

    :goto_3
    move/from16 v17, v18

    .line 698
    .local v17, "B":F
    move-object/from16 v18, v4

    move/from16 v19, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v16

    move/from16 v21, v17

    add-float v20, v20, v21

    move/from16 v21, v6

    sub-float v20, v20, v21

    aput v20, v18, v19

    goto :goto_1

    .line 688
    .end local v14    # "neg":Z
    .end local v15    # "S":F
    .end local v16    # "A":F
    .end local v17    # "B":F
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 697
    .restart local v14    # "neg":Z
    .restart local v15    # "S":F
    .restart local v16    # "A":F
    :cond_6
    move/from16 v18, v10

    move/from16 v19, v16

    div-float v18, v18, v19

    goto :goto_3
.end method

.method private static solveEqn([FIF)F
    .locals 7

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "eqn":[F
    move v1, p1

    .local v1, "order":I
    move v2, p2

    .local v2, "t":F
    move-object v4, v0

    move v5, v1

    aget v4, v4, v5

    move v3, v4

    .line 751
    .local v3, "v":F
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 752
    move v4, v3

    move v5, v2

    mul-float/2addr v4, v5

    move-object v5, v0

    move v6, v1

    aget v5, v5, v6

    add-float/2addr v4, v5

    move v3, v4

    goto :goto_0

    .line 754
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "eqn":[F
    return v0
.end method

.method public static subdivide(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)V
    .locals 27

    .prologue
    .line 516
    move-object/from16 v1, p0

    .local v1, "src":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object/from16 v2, p1

    .local v2, "left":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object/from16 v3, p2

    .local v3, "right":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move/from16 v18, v0

    move/from16 v4, v18

    .line 517
    .local v4, "x1":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move/from16 v18, v0

    move/from16 v5, v18

    .line 518
    .local v5, "y1":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move/from16 v18, v0

    move/from16 v6, v18

    .line 519
    .local v6, "ctrlx1":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move/from16 v18, v0

    move/from16 v7, v18

    .line 520
    .local v7, "ctrly1":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move/from16 v18, v0

    move/from16 v8, v18

    .line 521
    .local v8, "ctrlx2":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move/from16 v18, v0

    move/from16 v9, v18

    .line 522
    .local v9, "ctrly2":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move/from16 v18, v0

    move/from16 v10, v18

    .line 523
    .local v10, "x2":F
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move/from16 v18, v0

    move/from16 v11, v18

    .line 524
    .local v11, "y2":F
    move/from16 v18, v6

    move/from16 v19, v8

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v12, v18

    .line 525
    .local v12, "centerx":F
    move/from16 v18, v7

    move/from16 v19, v9

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v13, v18

    .line 526
    .local v13, "centery":F
    move/from16 v18, v4

    move/from16 v19, v6

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v6, v18

    .line 527
    move/from16 v18, v5

    move/from16 v19, v7

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v7, v18

    .line 528
    move/from16 v18, v10

    move/from16 v19, v8

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v8, v18

    .line 529
    move/from16 v18, v11

    move/from16 v19, v9

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v9, v18

    .line 530
    move/from16 v18, v6

    move/from16 v19, v12

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v14, v18

    .line 531
    .local v14, "ctrlx12":F
    move/from16 v18, v7

    move/from16 v19, v13

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v15, v18

    .line 532
    .local v15, "ctrly12":F
    move/from16 v18, v8

    move/from16 v19, v12

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v16, v18

    .line 533
    .local v16, "ctrlx21":F
    move/from16 v18, v9

    move/from16 v19, v13

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v17, v18

    .line 534
    .local v17, "ctrly21":F
    move/from16 v18, v14

    move/from16 v19, v16

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v12, v18

    .line 535
    move/from16 v18, v15

    move/from16 v19, v17

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v13, v18

    .line 536
    move-object/from16 v18, v2

    if-eqz v18, :cond_0

    .line 537
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-virtual/range {v18 .. v26}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 540
    :cond_0
    move-object/from16 v18, v3

    if-eqz v18, :cond_1

    .line 541
    move-object/from16 v18, v3

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-virtual/range {v18 .. v26}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 544
    :cond_1
    return-void
.end method

.method public static subdivide([FI[FI[FI)V
    .locals 19

    .prologue
    .line 576
    move-object/from16 v0, p0

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
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget v16, v16, v17

    move/from16 v6, v16

    .line 577
    .local v6, "x1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v7, v16

    .line 578
    .local v7, "y1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v8, v16

    .line 579
    .local v8, "ctrlx1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    aget v16, v16, v17

    move/from16 v9, v16

    .line 580
    .local v9, "ctrly1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    aget v16, v16, v17

    move/from16 v10, v16

    .line 581
    .local v10, "ctrlx2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    aget v16, v16, v17

    move/from16 v11, v16

    .line 582
    .local v11, "ctrly2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    aget v16, v16, v17

    move/from16 v12, v16

    .line 583
    .local v12, "x2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    aget v16, v16, v17

    move/from16 v13, v16

    .line 584
    .local v13, "y2":F
    move-object/from16 v16, v2

    if-eqz v16, :cond_0

    .line 585
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v18, v6

    aput v18, v16, v17

    .line 586
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v7

    aput v18, v16, v17

    .line 588
    :cond_0
    move-object/from16 v16, v4

    if-eqz v16, :cond_1

    .line 589
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    move/from16 v18, v12

    aput v18, v16, v17

    .line 590
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v18, v13

    aput v18, v16, v17

    .line 592
    :cond_1
    move/from16 v16, v6

    move/from16 v17, v8

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v6, v16

    .line 593
    move/from16 v16, v7

    move/from16 v17, v9

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v7, v16

    .line 594
    move/from16 v16, v12

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v12, v16

    .line 595
    move/from16 v16, v13

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v13, v16

    .line 596
    move/from16 v16, v8

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v14, v16

    .line 597
    .local v14, "centerx":F
    move/from16 v16, v9

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v15, v16

    .line 598
    .local v15, "centery":F
    move/from16 v16, v6

    move/from16 v17, v14

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v8, v16

    .line 599
    move/from16 v16, v7

    move/from16 v17, v15

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v9, v16

    .line 600
    move/from16 v16, v12

    move/from16 v17, v14

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v10, v16

    .line 601
    move/from16 v16, v13

    move/from16 v17, v15

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v11, v16

    .line 602
    move/from16 v16, v8

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v14, v16

    .line 603
    move/from16 v16, v9

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v15, v16

    .line 604
    move-object/from16 v16, v2

    if-eqz v16, :cond_2

    .line 605
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v6

    aput v18, v16, v17

    .line 606
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v7

    aput v18, v16, v17

    .line 607
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move/from16 v18, v8

    aput v18, v16, v17

    .line 608
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v18, v9

    aput v18, v16, v17

    .line 609
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    move/from16 v18, v14

    aput v18, v16, v17

    .line 610
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v18, v15

    aput v18, v16, v17

    .line 612
    :cond_2
    move-object/from16 v16, v4

    if-eqz v16, :cond_3

    .line 613
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v18, v14

    aput v18, v16, v17

    .line 614
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v15

    aput v18, v16, v17

    .line 615
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v10

    aput v18, v16, v17

    .line 616
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v11

    aput v18, v16, v17

    .line 617
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move/from16 v18, v12

    aput v18, v16, v17

    .line 618
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v18, v13

    aput v18, v16, v17

    .line 620
    :cond_3
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 16

    .prologue
    .line 815
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move v4, v1

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    move v5, v2

    const/4 v6, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 821
    const/4 v4, 0x0

    move v0, v4

    .line 832
    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :goto_0
    return v0

    .line 825
    .restart local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :cond_0
    move v4, v1

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    .line 826
    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v4

    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    const/4 v15, 0x0

    .line 827
    invoke-static/range {v5 .. v15}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForCubic(FFFFFFFFFFI)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 832
    .local v3, "crossings":I
    move v4, v3

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public contains(FFFF)Z
    .locals 13

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 1158
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 1172
    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :goto_0
    return v0

    .line 1163
    .restart local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/CubicCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    .line 1164
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/CubicCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 1165
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/CubicCurve2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 1166
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/CubicCurve2D;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1167
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1172
    :cond_3
    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static/range {v5 .. v12}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/CubicCurve2D;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/CubicCurve2D;
    .locals 12

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    new-instance v1, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-direct/range {v2 .. v10}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>(FFFFFFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/CubicCurve2D;->copy()Lcom/sun/javafx/geom/CubicCurve2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 1237
    const/4 v3, 0x1

    move v0, v3

    .line 1246
    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :goto_0
    return v0

    .line 1239
    .restart local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;

    if-eqz v3, :cond_2

    .line 1240
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v3

    .line 1241
    .local v2, "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1246
    .end local v2    # "curve":Lcom/sun/javafx/geom/CubicCurve2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public eval(F)Lcom/sun/javafx/geom/Point2D;
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "t":F
    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v2, v3

    .line 189
    .local v2, "result":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/CubicCurve2D;->eval(FLcom/sun/javafx/geom/Point2D;)V

    .line 190
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public eval(FLcom/sun/javafx/geom/Point2D;)V
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "td":F
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/CubicCurve2D;->calcX(F)F

    move-result v4

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/CubicCurve2D;->calcY(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 204
    return-void
.end method

.method public evalDt(F)Lcom/sun/javafx/geom/Point2D;
    .locals 7

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "t":F
    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v2, v3

    .line 219
    .local v2, "result":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/CubicCurve2D;->evalDt(FLcom/sun/javafx/geom/Point2D;)V

    .line 220
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public evalDt(FLcom/sun/javafx/geom/Point2D;)V
    .locals 12

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "td":F
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/Point2D;
    move v7, v1

    move v3, v7

    .line 236
    .local v3, "t":F
    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v3

    sub-float/2addr v7, v8

    move v4, v7

    .line 237
    .local v4, "u":F
    const/high16 v7, 0x40400000    # 3.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    sub-float/2addr v8, v9

    move v9, v4

    mul-float/2addr v8, v9

    move v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v10, v4

    mul-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    sub-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    move v5, v7

    .line 240
    .local v5, "x":F
    const/high16 v7, 0x40400000    # 3.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    sub-float/2addr v8, v9

    move v9, v4

    mul-float/2addr v8, v9

    move v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v10, v4

    mul-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    sub-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    move v6, v7

    .line 243
    .local v6, "y":F
    move-object v7, v2

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 244
    return-void
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 12

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 167
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v1, v5

    .line 169
    .local v1, "left":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    .line 170
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 169
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v2, v5

    .line 171
    .local v2, "top":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 171
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v3, v5

    .line 173
    .local v3, "right":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    .line 174
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 173
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v4, v5

    .line 175
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

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public getFlatness()F
    .locals 9

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static/range {v1 .. v8}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatness(FFFFFFFF)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method public getFlatnessSq()F
    .locals 9

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static/range {v1 .. v8}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatnessSq(FFFFFFFF)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/CubicIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/CubicIterator;-><init>(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
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

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/CubicCurve2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 1224
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 1225
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 1226
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 1227
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x35

    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v2, v3

    move v1, v2

    .line 1228
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x3b

    mul-int/lit8 v3, v3, 0x3b

    add-int/2addr v2, v3

    move v1, v2

    .line 1229
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x3d

    mul-int/lit8 v3, v3, 0x3d

    add-int/2addr v2, v3

    move v1, v2

    .line 1230
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x65

    mul-int/lit8 v3, v3, 0x65

    add-int/2addr v2, v3

    move v1, v2

    .line 1231
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 44

    .prologue
    .line 950
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move/from16 v35, v5

    const/16 v36, 0x0

    cmpg-float v35, v35, v36

    if-lez v35, :cond_0

    move/from16 v35, v6

    const/16 v36, 0x0

    cmpg-float v35, v35, v36

    if-gtz v35, :cond_1

    .line 951
    :cond_0
    const/16 v35, 0x0

    move/from16 v2, v35

    .line 1149
    .end local v2    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :goto_0
    return v2

    .line 958
    .restart local v2    # "this":Lcom/sun/javafx/geom/CubicCurve2D;
    :cond_1
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move/from16 v35, v0

    move/from16 v7, v35

    .line 959
    .local v7, "x1":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move/from16 v35, v0

    move/from16 v8, v35

    .line 960
    .local v8, "y1":F
    move/from16 v35, v7

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v9, v35

    .line 961
    .local v9, "x1tag":I
    move/from16 v35, v8

    move/from16 v36, v4

    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v10, v35

    .line 962
    .local v10, "y1tag":I
    move/from16 v35, v9

    if-nez v35, :cond_2

    move/from16 v35, v10

    if-nez v35, :cond_2

    .line 963
    const/16 v35, 0x1

    move/from16 v2, v35

    goto :goto_0

    .line 965
    :cond_2
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move/from16 v35, v0

    move/from16 v11, v35

    .line 966
    .local v11, "x2":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move/from16 v35, v0

    move/from16 v12, v35

    .line 967
    .local v12, "y2":F
    move/from16 v35, v11

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v13, v35

    .line 968
    .local v13, "x2tag":I
    move/from16 v35, v12

    move/from16 v36, v4

    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v14, v35

    .line 969
    .local v14, "y2tag":I
    move/from16 v35, v13

    if-nez v35, :cond_3

    move/from16 v35, v14

    if-nez v35, :cond_3

    .line 970
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 973
    :cond_3
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move/from16 v35, v0

    move/from16 v15, v35

    .line 974
    .local v15, "ctrlx1":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move/from16 v35, v0

    move/from16 v16, v35

    .line 975
    .local v16, "ctrly1":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move/from16 v35, v0

    move/from16 v17, v35

    .line 976
    .local v17, "ctrlx2":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move/from16 v35, v0

    move/from16 v18, v35

    .line 977
    .local v18, "ctrly2":F
    move/from16 v35, v15

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v19, v35

    .line 978
    .local v19, "ctrlx1tag":I
    move/from16 v35, v16

    move/from16 v36, v4

    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v20, v35

    .line 979
    .local v20, "ctrly1tag":I
    move/from16 v35, v17

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v21, v35

    .line 980
    .local v21, "ctrlx2tag":I
    move/from16 v35, v18

    move/from16 v36, v4

    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v22, v35

    .line 984
    .local v22, "ctrly2tag":I
    move/from16 v35, v9

    if-gez v35, :cond_4

    move/from16 v35, v13

    if-gez v35, :cond_4

    move/from16 v35, v19

    if-gez v35, :cond_4

    move/from16 v35, v21

    if-gez v35, :cond_4

    .line 987
    const/16 v35, 0x0

    move/from16 v2, v35

    goto/16 :goto_0

    .line 989
    :cond_4
    move/from16 v35, v10

    if-gez v35, :cond_5

    move/from16 v35, v14

    if-gez v35, :cond_5

    move/from16 v35, v20

    if-gez v35, :cond_5

    move/from16 v35, v22

    if-gez v35, :cond_5

    .line 992
    const/16 v35, 0x0

    move/from16 v2, v35

    goto/16 :goto_0

    .line 994
    :cond_5
    move/from16 v35, v9

    if-lez v35, :cond_6

    move/from16 v35, v13

    if-lez v35, :cond_6

    move/from16 v35, v19

    if-lez v35, :cond_6

    move/from16 v35, v21

    if-lez v35, :cond_6

    .line 997
    const/16 v35, 0x0

    move/from16 v2, v35

    goto/16 :goto_0

    .line 999
    :cond_6
    move/from16 v35, v10

    if-lez v35, :cond_7

    move/from16 v35, v14

    if-lez v35, :cond_7

    move/from16 v35, v20

    if-lez v35, :cond_7

    move/from16 v35, v22

    if-lez v35, :cond_7

    .line 1002
    const/16 v35, 0x0

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1010
    :cond_7
    move/from16 v35, v9

    move/from16 v36, v13

    move/from16 v37, v19

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->inwards(III)Z

    move-result v35

    if-eqz v35, :cond_8

    move/from16 v35, v10

    move/from16 v36, v14

    move/from16 v37, v20

    .line 1011
    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->inwards(III)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 1014
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1016
    :cond_8
    move/from16 v35, v13

    move/from16 v36, v9

    move/from16 v37, v21

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->inwards(III)Z

    move-result v35

    if-eqz v35, :cond_9

    move/from16 v35, v14

    move/from16 v36, v10

    move/from16 v37, v22

    .line 1017
    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->inwards(III)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 1020
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1024
    :cond_9
    move/from16 v35, v9

    move/from16 v36, v13

    mul-int v35, v35, v36

    if-gtz v35, :cond_a

    const/16 v35, 0x1

    :goto_1
    move/from16 v23, v35

    .line 1025
    .local v23, "xoverlap":Z
    move/from16 v35, v10

    move/from16 v36, v14

    mul-int v35, v35, v36

    if-gtz v35, :cond_b

    const/16 v35, 0x1

    :goto_2
    move/from16 v24, v35

    .line 1026
    .local v24, "yoverlap":Z
    move/from16 v35, v9

    if-nez v35, :cond_c

    move/from16 v35, v13

    if-nez v35, :cond_c

    move/from16 v35, v24

    if-eqz v35, :cond_c

    .line 1027
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1024
    .end local v23    # "xoverlap":Z
    .end local v24    # "yoverlap":Z
    :cond_a
    const/16 v35, 0x0

    goto :goto_1

    .line 1025
    .restart local v23    # "xoverlap":Z
    :cond_b
    const/16 v35, 0x0

    goto :goto_2

    .line 1029
    .restart local v24    # "yoverlap":Z
    :cond_c
    move/from16 v35, v10

    if-nez v35, :cond_d

    move/from16 v35, v14

    if-nez v35, :cond_d

    move/from16 v35, v23

    if-eqz v35, :cond_d

    .line 1030
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1039
    :cond_d
    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v25, v35

    .line 1040
    .local v25, "eqn":[F
    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v26, v35

    .line 1041
    .local v26, "res":[F
    move/from16 v35, v24

    if-nez v35, :cond_10

    .line 1047
    move-object/from16 v35, v25

    move/from16 v36, v10

    if-gez v36, :cond_e

    move/from16 v36, v4

    :goto_3
    move/from16 v37, v8

    move/from16 v38, v16

    move/from16 v39, v18

    move/from16 v40, v12

    invoke-static/range {v35 .. v40}, Lcom/sun/javafx/geom/CubicCurve2D;->fillEqn([FFFFFF)V

    .line 1048
    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-static/range {v35 .. v36}, Lcom/sun/javafx/geom/CubicCurve2D;->solveCubic([F[F)I

    move-result v35

    move/from16 v27, v35

    .line 1049
    .local v27, "num":I
    move-object/from16 v35, v26

    move/from16 v36, v27

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v7

    move/from16 v41, v15

    move/from16 v42, v17

    move/from16 v43, v11

    invoke-static/range {v35 .. v43}, Lcom/sun/javafx/geom/CubicCurve2D;->evalCubic([FIZZ[FFFFF)I

    move-result v35

    move/from16 v27, v35

    .line 1054
    move/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_f

    move-object/from16 v35, v26

    const/16 v36, 0x0

    aget v35, v35, v36

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    .line 1055
    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move-object/from16 v36, v26

    const/16 v37, 0x1

    aget v36, v36, v37

    move/from16 v37, v3

    move/from16 v38, v3

    move/from16 v39, v5

    add-float v38, v38, v39

    invoke-static/range {v36 .. v38}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v36

    mul-int v35, v35, v36

    if-gtz v35, :cond_f

    const/16 v35, 0x1

    :goto_4
    move/from16 v2, v35

    goto/16 :goto_0

    .line 1047
    .end local v27    # "num":I
    :cond_e
    move/from16 v36, v4

    move/from16 v37, v6

    add-float v36, v36, v37

    goto :goto_3

    .line 1055
    .restart local v27    # "num":I
    :cond_f
    const/16 v35, 0x0

    goto :goto_4

    .line 1059
    .end local v27    # "num":I
    :cond_10
    move/from16 v35, v23

    if-nez v35, :cond_13

    .line 1065
    move-object/from16 v35, v25

    move/from16 v36, v9

    if-gez v36, :cond_11

    move/from16 v36, v3

    :goto_5
    move/from16 v37, v7

    move/from16 v38, v15

    move/from16 v39, v17

    move/from16 v40, v11

    invoke-static/range {v35 .. v40}, Lcom/sun/javafx/geom/CubicCurve2D;->fillEqn([FFFFFF)V

    .line 1066
    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-static/range {v35 .. v36}, Lcom/sun/javafx/geom/CubicCurve2D;->solveCubic([F[F)I

    move-result v35

    move/from16 v27, v35

    .line 1067
    .restart local v27    # "num":I
    move-object/from16 v35, v26

    move/from16 v36, v27

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v8

    move/from16 v41, v16

    move/from16 v42, v18

    move/from16 v43, v12

    invoke-static/range {v35 .. v43}, Lcom/sun/javafx/geom/CubicCurve2D;->evalCubic([FIZZ[FFFFF)I

    move-result v35

    move/from16 v27, v35

    .line 1072
    move/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    move-object/from16 v35, v26

    const/16 v36, 0x0

    aget v35, v35, v36

    move/from16 v36, v4

    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    .line 1073
    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move-object/from16 v36, v26

    const/16 v37, 0x1

    aget v36, v36, v37

    move/from16 v37, v4

    move/from16 v38, v4

    move/from16 v39, v6

    add-float v38, v38, v39

    invoke-static/range {v36 .. v38}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v36

    mul-int v35, v35, v36

    if-gtz v35, :cond_12

    const/16 v35, 0x1

    :goto_6
    move/from16 v2, v35

    goto/16 :goto_0

    .line 1065
    .end local v27    # "num":I
    :cond_11
    move/from16 v36, v3

    move/from16 v37, v5

    add-float v36, v36, v37

    goto :goto_5

    .line 1073
    .restart local v27    # "num":I
    :cond_12
    const/16 v35, 0x0

    goto :goto_6

    .line 1079
    .end local v27    # "num":I
    :cond_13
    move/from16 v35, v11

    move/from16 v36, v7

    sub-float v35, v35, v36

    move/from16 v27, v35

    .line 1080
    .local v27, "dx":F
    move/from16 v35, v12

    move/from16 v36, v8

    sub-float v35, v35, v36

    move/from16 v28, v35

    .line 1081
    .local v28, "dy":F
    move/from16 v35, v12

    move/from16 v36, v7

    mul-float v35, v35, v36

    move/from16 v36, v11

    move/from16 v37, v8

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    move/from16 v29, v35

    .line 1083
    .local v29, "k":F
    move/from16 v35, v10

    if-nez v35, :cond_14

    .line 1084
    move/from16 v35, v9

    move/from16 v30, v35

    .line 1088
    .local v30, "c1tag":I
    :goto_7
    move/from16 v35, v14

    if-nez v35, :cond_16

    .line 1089
    move/from16 v35, v13

    move/from16 v31, v35

    .line 1095
    .local v31, "c2tag":I
    :goto_8
    move/from16 v35, v30

    move/from16 v36, v31

    mul-int v35, v35, v36

    if-gtz v35, :cond_18

    .line 1096
    const/16 v35, 0x1

    move/from16 v2, v35

    goto/16 :goto_0

    .line 1086
    .end local v30    # "c1tag":I
    .end local v31    # "c2tag":I
    :cond_14
    move/from16 v35, v29

    move/from16 v36, v27

    move/from16 v37, v10

    if-gez v37, :cond_15

    move/from16 v37, v4

    :goto_9
    mul-float v36, v36, v37

    add-float v35, v35, v36

    move/from16 v36, v28

    div-float v35, v35, v36

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v30, v35

    .restart local v30    # "c1tag":I
    goto :goto_7

    .end local v30    # "c1tag":I
    :cond_15
    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    goto :goto_9

    .line 1091
    .restart local v30    # "c1tag":I
    :cond_16
    move/from16 v35, v29

    move/from16 v36, v27

    move/from16 v37, v14

    if-gez v37, :cond_17

    move/from16 v37, v4

    :goto_a
    mul-float v36, v36, v37

    add-float v35, v35, v36

    move/from16 v36, v28

    div-float v35, v35, v36

    move/from16 v36, v3

    move/from16 v37, v3

    move/from16 v38, v5

    add-float v37, v37, v38

    invoke-static/range {v35 .. v37}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v35

    move/from16 v31, v35

    .restart local v31    # "c2tag":I
    goto :goto_8

    .end local v31    # "c2tag":I
    :cond_17
    move/from16 v37, v4

    move/from16 v38, v6

    add-float v37, v37, v38

    goto :goto_a

    .line 1126
    .restart local v31    # "c2tag":I
    :cond_18
    move/from16 v35, v30

    move/from16 v36, v9

    mul-int v35, v35, v36

    if-gtz v35, :cond_19

    move/from16 v35, v10

    :goto_b
    move/from16 v30, v35

    .line 1136
    move-object/from16 v35, v25

    move/from16 v36, v31

    if-gez v36, :cond_1a

    move/from16 v36, v3

    :goto_c
    move/from16 v37, v7

    move/from16 v38, v15

    move/from16 v39, v17

    move/from16 v40, v11

    invoke-static/range {v35 .. v40}, Lcom/sun/javafx/geom/CubicCurve2D;->fillEqn([FFFFFF)V

    .line 1137
    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-static/range {v35 .. v36}, Lcom/sun/javafx/geom/CubicCurve2D;->solveCubic([F[F)I

    move-result v35

    move/from16 v32, v35

    .line 1138
    .local v32, "num":I
    move-object/from16 v35, v26

    move/from16 v36, v32

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v8

    move/from16 v41, v16

    move/from16 v42, v18

    move/from16 v43, v12

    invoke-static/range {v35 .. v43}, Lcom/sun/javafx/geom/CubicCurve2D;->evalCubic([FIZZ[FFFFF)I

    move-result v35

    move/from16 v32, v35

    .line 1143
    move/from16 v35, v32

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v33, v35

    .line 1144
    .local v33, "tags":[I
    const/16 v35, 0x0

    move/from16 v34, v35

    .local v34, "i":I
    :goto_d
    move/from16 v35, v34

    move/from16 v36, v32

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1b

    .line 1145
    move-object/from16 v35, v33

    move/from16 v36, v34

    move-object/from16 v37, v26

    move/from16 v38, v34

    aget v37, v37, v38

    move/from16 v38, v4

    move/from16 v39, v4

    move/from16 v40, v6

    add-float v39, v39, v40

    invoke-static/range {v37 .. v39}, Lcom/sun/javafx/geom/CubicCurve2D;->getTag(FFF)I

    move-result v37

    aput v37, v35, v36

    .line 1144
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 1126
    .end local v32    # "num":I
    .end local v33    # "tags":[I
    .end local v34    # "i":I
    :cond_19
    move/from16 v35, v14

    goto :goto_b

    .line 1136
    :cond_1a
    move/from16 v36, v3

    move/from16 v37, v5

    add-float v36, v36, v37

    goto :goto_c

    .line 1147
    .restart local v32    # "num":I
    .restart local v33    # "tags":[I
    .restart local v34    # "i":I
    :cond_1b
    move-object/from16 v35, v33

    move/from16 v36, v32

    move/from16 v37, v30

    aput v37, v35, v36

    .line 1148
    move-object/from16 v35, v33

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->sort([I)V

    .line 1149
    move/from16 v35, v32

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_1c

    move-object/from16 v35, v33

    const/16 v36, 0x0

    aget v35, v35, v36

    move-object/from16 v36, v33

    const/16 v37, 0x1

    aget v36, v36, v37

    mul-int v35, v35, v36

    if-lez v35, :cond_1d

    :cond_1c
    move/from16 v35, v32

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_1e

    move-object/from16 v35, v33

    const/16 v36, 0x2

    aget v35, v35, v36

    move-object/from16 v36, v33

    const/16 v37, 0x3

    aget v36, v36, v37

    mul-int v35, v35, v36

    if-gtz v35, :cond_1e

    :cond_1d
    const/16 v35, 0x1

    :goto_e
    move/from16 v2, v35

    goto/16 :goto_0

    :cond_1e
    const/16 v35, 0x0

    goto :goto_e
.end method

.method public setCurve(FFFFFFFF)V
    .locals 11

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "ctrlx1":F
    move v4, p4

    .local v4, "ctrly1":F
    move/from16 v5, p5

    .local v5, "ctrlx2":F
    move/from16 v6, p6

    .local v6, "ctrly2":F
    move/from16 v7, p7

    .local v7, "x2":F
    move/from16 v8, p8

    .local v8, "y2":F
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    .line 154
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    .line 155
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    .line 156
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    .line 157
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    .line 158
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    .line 159
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    .line 160
    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    .line 161
    return-void
.end method

.method public setCurve(Lcom/sun/javafx/geom/CubicCurve2D;)V
    .locals 11

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    invoke-virtual/range {v2 .. v10}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 301
    return-void
.end method

.method public setCurve(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 14

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v2, p2

    .local v2, "cp1":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v3, p3

    .local v3, "cp2":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v4, p4

    .local v4, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual/range {v5 .. v13}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 276
    return-void
.end method

.method public setCurve([FI)V
    .locals 14

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "coords":[F
    move/from16 v2, p2

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

    move-object v10, v1

    move v11, v2

    const/4 v12, 0x6

    add-int/lit8 v11, v11, 0x6

    aget v10, v10, v11

    move-object v11, v1

    move v12, v2

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    aget v11, v11, v12

    invoke-virtual/range {v3 .. v11}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 260
    return-void
.end method

.method public setCurve([Lcom/sun/javafx/geom/Point2D;I)V
    .locals 14

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "pts":[Lcom/sun/javafx/geom/Point2D;
    move/from16 v2, p2

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

    move-object v10, v1

    move v11, v2

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v11, v1

    move v12, v2

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    aget-object v11, v11, v12

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual/range {v3 .. v11}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 292
    return-void
.end method

.method public subdivide(FLcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)V
    .locals 35

    .prologue
    .line 439
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move/from16 v2, p1

    .local v2, "t":F
    move-object/from16 v3, p2

    .local v3, "left":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object/from16 v4, p3

    .local v4, "right":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object/from16 v26, v3

    if-nez v26, :cond_0

    move-object/from16 v26, v4

    if-nez v26, :cond_0

    .line 485
    :goto_0
    return-void

    .line 441
    :cond_0
    move-object/from16 v26, v1

    move/from16 v27, v2

    invoke-direct/range {v26 .. v27}, Lcom/sun/javafx/geom/CubicCurve2D;->calcX(F)F

    move-result v26

    move/from16 v5, v26

    .line 442
    .local v5, "npx":F
    move-object/from16 v26, v1

    move/from16 v27, v2

    invoke-direct/range {v26 .. v27}, Lcom/sun/javafx/geom/CubicCurve2D;->calcY(F)F

    move-result v26

    move/from16 v6, v26

    .line 444
    .local v6, "npy":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    move/from16 v26, v0

    move/from16 v7, v26

    .line 445
    .local v7, "x1":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    move/from16 v26, v0

    move/from16 v8, v26

    .line 446
    .local v8, "y1":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    move/from16 v26, v0

    move/from16 v9, v26

    .line 447
    .local v9, "c1x":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    move/from16 v26, v0

    move/from16 v10, v26

    .line 448
    .local v10, "c1y":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    move/from16 v26, v0

    move/from16 v11, v26

    .line 449
    .local v11, "c2x":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    move/from16 v26, v0

    move/from16 v12, v26

    .line 450
    .local v12, "c2y":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    move/from16 v26, v0

    move/from16 v13, v26

    .line 451
    .local v13, "x2":F
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    move/from16 v26, v0

    move/from16 v14, v26

    .line 452
    .local v14, "y2":F
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v2

    sub-float v26, v26, v27

    move/from16 v15, v26

    .line 453
    .local v15, "u":F
    move/from16 v26, v15

    move/from16 v27, v9

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v11

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v16, v26

    .line 454
    .local v16, "hx":F
    move/from16 v26, v15

    move/from16 v27, v10

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v12

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v17, v26

    .line 456
    .local v17, "hy":F
    move-object/from16 v26, v3

    if-eqz v26, :cond_1

    .line 457
    move/from16 v26, v7

    move/from16 v18, v26

    .line 458
    .local v18, "lx1":F
    move/from16 v26, v8

    move/from16 v19, v26

    .line 459
    .local v19, "ly1":F
    move/from16 v26, v15

    move/from16 v27, v7

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v9

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v20, v26

    .line 460
    .local v20, "lc1x":F
    move/from16 v26, v15

    move/from16 v27, v8

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v10

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v21, v26

    .line 461
    .local v21, "lc1y":F
    move/from16 v26, v15

    move/from16 v27, v20

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v16

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v22, v26

    .line 462
    .local v22, "lc2x":F
    move/from16 v26, v15

    move/from16 v27, v21

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v17

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v23, v26

    .line 463
    .local v23, "lc2y":F
    move/from16 v26, v5

    move/from16 v24, v26

    .line 464
    .local v24, "lx2":F
    move/from16 v26, v6

    move/from16 v25, v26

    .line 465
    .local v25, "ly2":F
    move-object/from16 v26, v3

    move/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v24

    move/from16 v34, v25

    invoke-virtual/range {v26 .. v34}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 471
    .end local v18    # "lx1":F
    .end local v19    # "ly1":F
    .end local v20    # "lc1x":F
    .end local v21    # "lc1y":F
    .end local v22    # "lc2x":F
    .end local v23    # "lc2y":F
    .end local v24    # "lx2":F
    .end local v25    # "ly2":F
    :cond_1
    move-object/from16 v26, v4

    if-eqz v26, :cond_2

    .line 472
    move/from16 v26, v5

    move/from16 v18, v26

    .line 473
    .local v18, "rx1":F
    move/from16 v26, v6

    move/from16 v19, v26

    .line 474
    .local v19, "ry1":F
    move/from16 v26, v15

    move/from16 v27, v11

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v13

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v20, v26

    .line 475
    .local v20, "rc2x":F
    move/from16 v26, v15

    move/from16 v27, v12

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v14

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v21, v26

    .line 476
    .local v21, "rc2y":F
    move/from16 v26, v15

    move/from16 v27, v16

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v20

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v22, v26

    .line 477
    .local v22, "rc1x":F
    move/from16 v26, v15

    move/from16 v27, v17

    mul-float v26, v26, v27

    move/from16 v27, v2

    move/from16 v28, v21

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v23, v26

    .line 478
    .local v23, "rc1y":F
    move/from16 v26, v13

    move/from16 v24, v26

    .line 479
    .local v24, "rx2":F
    move/from16 v26, v14

    move/from16 v25, v26

    .line 480
    .local v25, "ry2":F
    move-object/from16 v26, v4

    move/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v22

    move/from16 v30, v23

    move/from16 v31, v20

    move/from16 v32, v21

    move/from16 v33, v24

    move/from16 v34, v25

    invoke-virtual/range {v26 .. v34}, Lcom/sun/javafx/geom/CubicCurve2D;->setCurve(FFFFFFFF)V

    .line 485
    .end local v18    # "rx1":F
    .end local v19    # "ry1":F
    .end local v20    # "rc2x":F
    .end local v21    # "rc2y":F
    .end local v22    # "rc1x":F
    .end local v23    # "rc1y":F
    .end local v24    # "rx2":F
    .end local v25    # "ry2":F
    :cond_2
    goto/16 :goto_0
.end method

.method public subdivide(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)V
    .locals 6

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v1, p1

    .local v1, "left":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v2, p2

    .local v2, "right":Lcom/sun/javafx/geom/CubicCurve2D;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/geom/CubicCurve2D;->subdivide(Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;Lcom/sun/javafx/geom/CubicCurve2D;)V

    .line 499
    return-void
.end method

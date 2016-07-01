.class public Lcom/sun/scenario/animation/SplineInterpolator;
.super Ljavafx/animation/Interpolator;
.source "SplineInterpolator.java"


# static fields
.field private static final SAMPLE_INCREMENT:D = 0.0625

.field private static final SAMPLE_SIZE:I = 0x10


# instance fields
.field private final isCurveLinear:Z

.field private final x1:D

.field private final x2:D

.field private final xSamples:[D

.field private final y1:D

.field private final y2:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 23

    .prologue
    .line 94
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide/from16 v4, p1

    .local v4, "px1":D
    move-wide/from16 v6, p3

    .local v6, "py1":D
    move-wide/from16 v8, p5

    .local v8, "px2":D
    move-wide/from16 v10, p7

    .local v10, "py2":D
    move-object v13, v3

    invoke-direct {v13}, Ljavafx/animation/Interpolator;-><init>()V

    .line 79
    move-object v13, v3

    const/16 v14, 0x11

    new-array v14, v14, [D

    iput-object v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    .line 96
    move-wide v13, v4

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v4

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_0

    move-wide v13, v6

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v6

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_0

    move-wide v13, v8

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v8

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_0

    move-wide v13, v10

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_1

    .line 98
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Control point coordinates must all be in range [0,1]"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 103
    :cond_1
    move-object v13, v3

    move-wide v14, v4

    iput-wide v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    .line 104
    move-object v13, v3

    move-wide v14, v6

    iput-wide v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    .line 105
    move-object v13, v3

    move-wide v14, v8

    iput-wide v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    .line 106
    move-object v13, v3

    move-wide v14, v10

    iput-wide v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    .line 109
    move-object v13, v3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    iput-boolean v14, v13, Lcom/sun/scenario/animation/SplineInterpolator;->isCurveLinear:Z

    .line 112
    move-object v13, v3

    iget-boolean v13, v13, Lcom/sun/scenario/animation/SplineInterpolator;->isCurveLinear:Z

    if-nez v13, :cond_3

    .line 113
    const/4 v13, 0x0

    move v12, v13

    .local v12, "i":I
    :goto_1
    move v13, v12

    const/16 v14, 0x11

    if-ge v13, v14, :cond_3

    .line 114
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    move v14, v12

    move-object v15, v3

    move/from16 v16, v12

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fb0000000000000L    # 0.0625

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    move-wide/from16 v20, v0

    invoke-direct/range {v15 .. v21}, Lcom/sun/scenario/animation/SplineInterpolator;->eval(DDD)D

    move-result-wide v15

    aput-wide v15, v13, v14

    .line 113
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 109
    .end local v12    # "i":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 117
    :cond_3
    return-void
.end method

.method private eval(DDD)D
    .locals 21

    .prologue
    .line 213
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide/from16 v2, p1

    .local v2, "t":D
    move-wide/from16 v4, p3

    .local v4, "p1":D
    move-wide/from16 v6, p5

    .local v6, "p2":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 214
    .local v8, "compT":D
    move-wide v10, v2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-wide v14, v8

    mul-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide/from16 v16, v2

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v2

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v1
.end method

.method private evalDerivative(DDD)D
    .locals 23

    .prologue
    .line 237
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide/from16 v2, p1

    .local v2, "t":D
    move-wide/from16 v4, p3

    .local v4, "p1":D
    move-wide/from16 v6, p5

    .local v6, "p2":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 238
    .local v8, "compT":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    move-wide v12, v8

    move-wide v14, v8

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    move-wide/from16 v18, v6

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v2

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v6

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v1
.end method

.method private findTForX(D)D
    .locals 21

    .prologue
    .line 287
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-object v14, v3

    move-wide v15, v4

    invoke-direct/range {v14 .. v16}, Lcom/sun/scenario/animation/SplineInterpolator;->getInitialGuessForT(D)D

    move-result-wide v14

    move-wide v6, v14

    .line 293
    .local v6, "t":D
    const/4 v14, 0x4

    move v8, v14

    .line 294
    .local v8, "numIterations":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_0
    move v14, v9

    const/4 v15, 0x4

    if-ge v14, v15, :cond_0

    .line 296
    move-object v14, v3

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    move-wide/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lcom/sun/scenario/animation/SplineInterpolator;->eval(DDD)D

    move-result-wide v14

    move-wide/from16 v16, v4

    sub-double v14, v14, v16

    move-wide v10, v14

    .line 297
    .local v10, "xT":D
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 298
    .line 311
    .end local v10    # "xT":D
    :cond_0
    :goto_1
    move-wide v14, v6

    move-wide v3, v14

    .end local v3    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v3

    .line 302
    .restart local v3    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    .restart local v10    # "xT":D
    :cond_1
    move-object v14, v3

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    move-wide/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lcom/sun/scenario/animation/SplineInterpolator;->evalDerivative(DDD)D

    move-result-wide v14

    move-wide v12, v14

    .line 303
    .local v12, "dXdT":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    .line 304
    goto :goto_1

    .line 308
    :cond_2
    move-wide v14, v6

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    div-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private getInitialGuessForT(D)D
    .locals 13

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide v1, p1

    .local v1, "x":D
    const/4 v6, 0x1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    const/16 v7, 0x11

    if-ge v6, v7, :cond_2

    .line 257
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    move v7, v3

    aget-wide v6, v6, v7

    move-wide v8, v1

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    .line 258
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    move v7, v3

    aget-wide v6, v6, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 259
    .local v4, "xRange":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 261
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v6, v8

    move-wide v0, v6

    .line 273
    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    .end local v4    # "xRange":D
    :goto_1
    return-wide v0

    .line 264
    .restart local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    .restart local v4    # "xRange":D
    :cond_0
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/animation/SplineInterpolator;->xSamples:[D

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    move-wide v10, v4

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v6, v8

    move-wide v0, v6

    goto :goto_1

    .line 256
    .end local v4    # "xRange":D
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v0, v6

    goto :goto_1
.end method


# virtual methods
.method public curve(D)D
    .locals 13

    .prologue
    .line 180
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 181
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "x must be in range [0,1]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->isCurveLinear:Z

    if-nez v4, :cond_2

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    .line 186
    :cond_2
    move-wide v4, v2

    move-wide v1, v4

    .line 191
    .end local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    :cond_3
    move-object v4, v1

    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/animation/SplineInterpolator;->findTForX(D)D

    move-result-wide v5

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-direct/range {v4 .. v10}, Lcom/sun/scenario/animation/SplineInterpolator;->eval(DDD)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 147
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 148
    const/4 v4, 0x0

    move v1, v4

    .line 166
    .end local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    :goto_0
    return v1

    .line 150
    .restart local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 151
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 153
    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/sun/scenario/animation/SplineInterpolator;

    move-object v3, v4

    .line 154
    .local v3, "other":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 155
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 157
    :cond_2
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 158
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 160
    :cond_3
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 161
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 163
    :cond_4
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 164
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 166
    :cond_5
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public getX1()D
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v0
.end method

.method public getX2()D
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v0
.end method

.method public getY1()D
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v0
.end method

.method public getY2()D
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    const/4 v3, 0x7

    move v2, v3

    .line 138
    .local v2, "hash":I
    const/16 v3, 0x13

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 139
    const/16 v3, 0x13

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 140
    const/16 v3, 0x13

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 141
    const/16 v3, 0x13

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 142
    move v3, v2

    move v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/SplineInterpolator;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplineInterpolator [x1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/SplineInterpolator;->x1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/SplineInterpolator;->y1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/SplineInterpolator;->x2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/SplineInterpolator;->y2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/SplineInterpolator;
    return-object v0
.end method

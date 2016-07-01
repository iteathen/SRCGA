.class final Lcom/sun/javafx/geom/Order2;
.super Lcom/sun/javafx/geom/Curve;
.source "Order2.java"


# instance fields
.field private cx0:D

.field private cy0:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D


# direct methods
.method public constructor <init>(DDDDDDI)V
    .locals 23

    .prologue
    .line 162
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Order2;
    move-wide/from16 v4, p1

    .local v4, "x0":D
    move-wide/from16 v6, p3

    .local v6, "y0":D
    move-wide/from16 v8, p5

    .local v8, "cx0":D
    move-wide/from16 v10, p7

    .local v10, "cy0":D
    move-wide/from16 v12, p9

    .local v12, "x1":D
    move-wide/from16 v14, p11

    .local v14, "y1":D
    move/from16 v16, p13

    .local v16, "direction":I
    move-object/from16 v17, v3

    move/from16 v18, v16

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    .line 166
    move-wide/from16 v17, v10

    move-wide/from16 v19, v6

    cmpg-double v17, v17, v19

    if-gez v17, :cond_1

    .line 167
    move-wide/from16 v17, v6

    move-wide/from16 v10, v17

    .line 171
    :cond_0
    :goto_0
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->x0:D

    .line 172
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->y0:D

    .line 173
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->cx0:D

    .line 174
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->cy0:D

    .line 175
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->x1:D

    .line 176
    move-object/from16 v17, v3

    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->y1:D

    .line 177
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v20, v8

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->xmin:D

    .line 178
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v20, v8

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->xmax:D

    .line 179
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    .line 180
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    .line 181
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v20, v12

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    .line 182
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    .line 183
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    .line 184
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    sub-double v18, v18, v20

    move-wide/from16 v20, v10

    sub-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    .line 185
    return-void

    .line 168
    :cond_1
    move-wide/from16 v17, v10

    move-wide/from16 v19, v14

    cmpl-double v17, v17, v19

    if-lez v17, :cond_0

    .line 169
    move-wide/from16 v17, v14

    move-wide/from16 v10, v17

    goto/16 :goto_0
.end method

.method public static TforY(DDDD)D
    .locals 20

    .prologue
    .line 264
    move-wide/from16 v0, p0

    .local v0, "y":D
    move-wide/from16 v2, p2

    .local v2, "ycoeff0":D
    move-wide/from16 v4, p4

    .local v4, "ycoeff1":D
    move-wide/from16 v6, p6

    .local v6, "ycoeff2":D
    move-wide v14, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v2, v14

    .line 265
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 271
    move-wide v14, v2

    neg-double v14, v14

    move-wide/from16 v16, v4

    div-double v14, v14, v16

    move-wide v8, v14

    .line 272
    .local v8, "root":D
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    move-wide v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    .line 273
    move-wide v14, v8

    move-wide v0, v14

    .line 338
    .end local v0    # "y":D
    .end local v8    # "root":D
    :goto_0
    return-wide v0

    .line 275
    .line 336
    .restart local v0    # "y":D
    :cond_0
    move-wide v14, v2

    move-wide v8, v14

    .line 337
    .local v8, "y0":D
    move-wide v14, v2

    move-wide/from16 v16, v4

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    move-wide v10, v14

    .line 338
    .local v10, "y1":D
    const-wide/16 v14, 0x0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    const-wide/16 v14, 0x0

    :goto_1
    move-wide v0, v14

    goto :goto_0

    .line 277
    .end local v8    # "y0":D
    .end local v10    # "y1":D
    :cond_1
    move-wide v14, v4

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 279
    .local v8, "d":D
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    .line 280
    move-wide v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-wide v8, v14

    .line 287
    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    .line 288
    move-wide v14, v8

    neg-double v14, v14

    move-wide v8, v14

    .line 290
    :cond_2
    move-wide v14, v4

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    div-double v14, v14, v16

    move-wide v10, v14

    .line 292
    .local v10, "q":D
    move-wide v14, v10

    move-wide/from16 v16, v6

    div-double v14, v14, v16

    move-wide v12, v14

    .line 293
    .local v12, "root":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_3

    move-wide v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_3

    .line 294
    move-wide v14, v12

    move-wide v0, v14

    goto :goto_0

    .line 296
    :cond_3
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    .line 297
    move-wide v14, v2

    move-wide/from16 v16, v10

    div-double v14, v14, v16

    move-wide v12, v14

    .line 298
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    move-wide v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    .line 299
    move-wide v14, v12

    move-wide v0, v14

    goto/16 :goto_0

    .line 338
    .end local v12    # "root":D
    .local v8, "y0":D
    .local v10, "y1":D
    :cond_4
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDI)V
    .locals 33

    .prologue
    .line 79
    move-object/from16 v1, p0

    .local v1, "curves":Ljava/util/Vector;
    move-wide/from16 v2, p1

    .local v2, "x0":D
    move-wide/from16 v4, p3

    .local v4, "y0":D
    move-wide/from16 v6, p5

    .local v6, "cx0":D
    move-wide/from16 v8, p7

    .local v8, "cy0":D
    move-wide/from16 v10, p9

    .local v10, "x1":D
    move-wide/from16 v12, p11

    .local v12, "y1":D
    move/from16 v14, p13

    .local v14, "direction":I
    move-wide v15, v4

    move-wide/from16 v17, v12

    cmpl-double v15, v15, v17

    if-lez v15, :cond_1

    .line 80
    move-object v15, v1

    new-instance v16, Lcom/sun/javafx/geom/Order2;

    move-object/from16 v31, v16

    move-object/from16 v16, v31

    move-object/from16 v17, v31

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move/from16 v30, v14

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v17 .. v30}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    move-wide v15, v12

    move-wide/from16 v17, v4

    cmpl-double v15, v15, v17

    if-lez v15, :cond_0

    .line 82
    move-object v15, v1

    new-instance v16, Lcom/sun/javafx/geom/Order2;

    move-object/from16 v31, v16

    move-object/from16 v16, v31

    move-object/from16 v17, v31

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move/from16 v30, v14

    invoke-direct/range {v17 .. v30}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v15

    goto :goto_0
.end method

.method public static getHorizontalParams(DDD[D)I
    .locals 16

    .prologue
    .line 110
    move-wide/from16 v1, p0

    .local v1, "c0":D
    move-wide/from16 v3, p2

    .local v3, "cp":D
    move-wide/from16 v5, p4

    .local v5, "c1":D
    move-object/from16 v7, p6

    .local v7, "ret":[D
    move-wide v12, v1

    move-wide v14, v3

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_0

    move-wide v12, v3

    move-wide v14, v5

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_0

    .line 111
    const/4 v12, 0x0

    move v1, v12

    .line 126
    .end local v1    # "c0":D
    :goto_0
    return v1

    .line 113
    .restart local v1    # "c0":D
    :cond_0
    move-wide v12, v1

    move-wide v14, v3

    sub-double/2addr v12, v14

    move-wide v1, v12

    .line 114
    move-wide v12, v5

    move-wide v14, v3

    sub-double/2addr v12, v14

    move-wide v5, v12

    .line 115
    move-wide v12, v1

    move-wide v14, v5

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 117
    .local v8, "denom":D
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 118
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 120
    :cond_1
    move-wide v12, v1

    move-wide v14, v8

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 122
    .local v10, "t":D
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-lez v12, :cond_2

    move-wide v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    .line 123
    :cond_2
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 125
    :cond_3
    move-object v12, v7

    const/4 v13, 0x0

    move-wide v14, v10

    aput-wide v14, v12, v13

    .line 126
    const/4 v12, 0x1

    move v1, v12

    goto :goto_0
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDI)V
    .locals 36

    .prologue
    .line 53
    move-object/from16 v2, p0

    .local v2, "curves":Ljava/util/Vector;
    move-object/from16 v3, p1

    .local v3, "tmp":[D
    move-wide/from16 v4, p2

    .local v4, "x0":D
    move-wide/from16 v6, p4

    .local v6, "y0":D
    move-wide/from16 v8, p6

    .local v8, "cx0":D
    move-wide/from16 v10, p8

    .local v10, "cy0":D
    move-wide/from16 v12, p10

    .local v12, "x1":D
    move-wide/from16 v14, p12

    .local v14, "y1":D
    move/from16 v16, p14

    .local v16, "direction":I
    move-wide/from16 v22, v6

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    move-object/from16 v28, v3

    invoke-static/range {v22 .. v28}, Lcom/sun/javafx/geom/Order2;->getHorizontalParams(DDD[D)I

    move-result v22

    move/from16 v17, v22

    .line 54
    .local v17, "numparams":I
    move/from16 v22, v17

    if-nez v22, :cond_0

    .line 57
    move-object/from16 v22, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    move/from16 v35, v16

    invoke-static/range {v22 .. v35}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    .line 58
    .line 72
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object/from16 v22, v3

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 62
    .local v18, "t":D
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-wide/from16 v24, v4

    aput-wide v24, v22, v23

    move-object/from16 v22, v3

    const/16 v23, 0x1

    move-wide/from16 v24, v6

    aput-wide v24, v22, v23

    .line 63
    move-object/from16 v22, v3

    const/16 v23, 0x2

    move-wide/from16 v24, v8

    aput-wide v24, v22, v23

    move-object/from16 v22, v3

    const/16 v23, 0x3

    move-wide/from16 v24, v10

    aput-wide v24, v22, v23

    .line 64
    move-object/from16 v22, v3

    const/16 v23, 0x4

    move-wide/from16 v24, v12

    aput-wide v24, v22, v23

    move-object/from16 v22, v3

    const/16 v23, 0x5

    move-wide/from16 v24, v14

    aput-wide v24, v22, v23

    .line 65
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-wide/from16 v24, v18

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    .line 66
    move/from16 v22, v16

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x0

    :goto_1
    move/from16 v20, v22

    .line 67
    .local v20, "i0":I
    const/16 v22, 0x4

    move/from16 v23, v20

    rsub-int/lit8 v22, v23, 0x4

    move/from16 v21, v22

    .line 68
    .local v21, "i1":I
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v20

    aget-wide v23, v23, v24

    move-object/from16 v25, v3

    move/from16 v26, v20

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget-wide v25, v25, v26

    move-object/from16 v27, v3

    move/from16 v28, v20

    const/16 v29, 0x2

    add-int/lit8 v28, v28, 0x2

    aget-wide v27, v27, v28

    move-object/from16 v29, v3

    move/from16 v30, v20

    const/16 v31, 0x3

    add-int/lit8 v30, v30, 0x3

    aget-wide v29, v29, v30

    move-object/from16 v31, v3

    move/from16 v32, v20

    const/16 v33, 0x4

    add-int/lit8 v32, v32, 0x4

    aget-wide v31, v31, v32

    move-object/from16 v33, v3

    move/from16 v34, v20

    const/16 v35, 0x5

    add-int/lit8 v34, v34, 0x5

    aget-wide v33, v33, v34

    move/from16 v35, v16

    invoke-static/range {v22 .. v35}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    .line 70
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v21

    aget-wide v23, v23, v24

    move-object/from16 v25, v3

    move/from16 v26, v21

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget-wide v25, v25, v26

    move-object/from16 v27, v3

    move/from16 v28, v21

    const/16 v29, 0x2

    add-int/lit8 v28, v28, 0x2

    aget-wide v27, v27, v28

    move-object/from16 v29, v3

    move/from16 v30, v21

    const/16 v31, 0x3

    add-int/lit8 v30, v30, 0x3

    aget-wide v29, v29, v30

    move-object/from16 v31, v3

    move/from16 v32, v21

    const/16 v33, 0x4

    add-int/lit8 v32, v32, 0x4

    aget-wide v31, v31, v32

    move-object/from16 v33, v3

    move/from16 v34, v21

    const/16 v35, 0x5

    add-int/lit8 v34, v34, 0x5

    aget-wide v33, v33, v34

    move/from16 v35, v16

    invoke-static/range {v22 .. v35}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    .line 72
    goto/16 :goto_0

    .line 66
    .end local v20    # "i0":I
    .end local v21    # "i1":I
    :cond_1
    const/16 v22, 0x4

    goto/16 :goto_1
.end method

.method public static split([DID)V
    .locals 24

    .prologue
    .line 137
    move-object/from16 v0, p0

    .local v0, "coords":[D
    move/from16 v1, p1

    .local v1, "pos":I
    move-wide/from16 v2, p2

    .local v2, "t":D
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x8

    add-int/lit8 v17, v17, 0x8

    move-object/from16 v18, v0

    move/from16 v19, v1

    const/16 v20, 0x4

    add-int/lit8 v19, v19, 0x4

    aget-wide v18, v18, v19

    move-wide/from16 v22, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v22

    move-wide/from16 v12, v20

    .local v12, "x1":D
    aput-wide v18, v16, v17

    .line 138
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x9

    add-int/lit8 v17, v17, 0x9

    move-object/from16 v18, v0

    move/from16 v19, v1

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget-wide v18, v18, v19

    move-wide/from16 v22, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v22

    move-wide/from16 v14, v20

    .local v14, "y1":D
    aput-wide v18, v16, v17

    .line 139
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget-wide v16, v16, v17

    move-wide/from16 v8, v16

    .line 140
    .local v8, "cx":D
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    aget-wide v16, v16, v17

    move-wide/from16 v10, v16

    .line 141
    .local v10, "cy":D
    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 142
    move-wide/from16 v16, v10

    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 143
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget-wide v16, v16, v17

    move-wide/from16 v4, v16

    .line 144
    .local v4, "x0":D
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget-wide v16, v16, v17

    move-wide/from16 v6, v16

    .line 145
    .local v6, "y0":D
    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v4, v16

    .line 146
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v6, v16

    .line 147
    move-wide/from16 v16, v4

    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v8, v16

    .line 148
    move-wide/from16 v16, v6

    move-wide/from16 v18, v14

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 149
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move-wide/from16 v18, v4

    aput-wide v18, v16, v17

    .line 150
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move-wide/from16 v18, v6

    aput-wide v18, v16, v17

    .line 151
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move-wide/from16 v18, v8

    aput-wide v18, v16, v17

    .line 152
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move-wide/from16 v18, v10

    aput-wide v18, v16, v17

    .line 153
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    move-wide/from16 v18, v12

    aput-wide v18, v16, v17

    .line 154
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move-wide/from16 v18, v14

    aput-wide v18, v16, v17

    .line 155
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 13

    .prologue
    .line 250
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v2, p1

    .local v2, "y":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y0:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 251
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 256
    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-wide v1

    .line 253
    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 254
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v1, v4

    goto :goto_0

    .line 256
    :cond_1
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    invoke-static/range {v4 .. v11}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public XforT(D)D
    .locals 9

    .prologue
    .line 342
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1
.end method

.method public XforY(D)D
    .locals 9

    .prologue
    .line 240
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v2, p1

    .local v2, "y":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y0:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 241
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->x0:D

    move-wide v1, v4

    .line 246
    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-wide v1

    .line 243
    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 244
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->x1:D

    move-wide v1, v4

    goto :goto_0

    .line 246
    :cond_1
    move-object v4, v1

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Order2;->TforY(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Order2;->XforT(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public YforT(D)D
    .locals 9

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->cx0:D

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order2;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->cy0:D

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order2;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-object v0
.end method

.method public dXforT(DI)D
    .locals 9

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 358
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-wide v0

    .line 352
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order2;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 354
    :pswitch_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 356
    :pswitch_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dYforT(DI)D
    .locals 9

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 371
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-wide v0

    .line 365
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order2;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 367
    :pswitch_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 369
    :pswitch_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 10

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v1

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/Order2;->x0:D

    double-to-float v5, v5

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y0:D

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 385
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    neg-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    move-wide v2, v4

    .line 386
    .local v2, "t":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 387
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Order2;->XforT(D)D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Order2;->YforT(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 389
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/Order2;->x1:D

    double-to-float v5, v5

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y1:D

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 390
    return-void
.end method

.method public getCX0()D
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->cx0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getCY0()D
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->cy0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return v0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 18

    .prologue
    .line 431
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    new-instance v2, Lcom/sun/javafx/geom/Order2;

    move-object/from16 v17, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v17

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->x0:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order2;->y0:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order2;->cx0:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order2;->cy0:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/Order2;->x1:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/Order2;->y1:D

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Order2;->direction:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-object v1
.end method

.method public getSegment([F)I
    .locals 6

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->cx0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 436
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->cy0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 437
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Order2;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 438
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->x1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 439
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->y1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 444
    :goto_0
    const/4 v2, 0x2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return v0

    .line 441
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->x0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 442
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order2;->y0:D

    double-to-float v4, v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 31

    .prologue
    .line 394
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Order2;
    move-wide/from16 v3, p1

    .local v3, "ystart":D
    move-wide/from16 v5, p3

    .local v5, "yend":D
    move/from16 v7, p5

    .local v7, "dir":I
    move-wide v14, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->y0:D

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_2

    .line 395
    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    .line 396
    move-object v14, v2

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Order2;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v14

    move-object v2, v14

    .line 424
    .end local v2    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-object v2

    .line 398
    .restart local v2    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    const-wide/16 v14, 0x0

    move-wide v8, v14

    .line 402
    .local v8, "t0":D
    :goto_1
    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_3

    .line 403
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide v10, v14

    .line 407
    .local v10, "t1":D
    :goto_2
    const/16 v14, 0xa

    new-array v14, v14, [D

    move-object v12, v14

    .line 408
    .local v12, "eqn":[D
    move-object v14, v12

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->x0:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 409
    move-object v14, v12

    const/4 v15, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->y0:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 410
    move-object v14, v12

    const/4 v15, 0x2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->cx0:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 411
    move-object v14, v12

    const/4 v15, 0x3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->cy0:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 412
    move-object v14, v12

    const/4 v15, 0x4

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->x1:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 413
    move-object v14, v12

    const/4 v15, 0x5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 414
    move-wide v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    .line 415
    move-object v14, v12

    const/4 v15, 0x0

    move-wide/from16 v16, v10

    invoke-static/range {v14 .. v17}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    .line 418
    :cond_1
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_4

    .line 419
    const/4 v14, 0x0

    move v13, v14

    .line 424
    .local v13, "i":I
    :goto_3
    new-instance v14, Lcom/sun/javafx/geom/Order2;

    move-object/from16 v29, v14

    move-object/from16 v14, v29

    move-object/from16 v15, v29

    move-object/from16 v16, v12

    move/from16 v17, v13

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget-wide v16, v16, v17

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    move/from16 v21, v13

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget-wide v20, v20, v21

    move-object/from16 v22, v12

    move/from16 v23, v13

    const/16 v24, 0x3

    add-int/lit8 v23, v23, 0x3

    aget-wide v22, v22, v23

    move-object/from16 v24, v12

    move/from16 v25, v13

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    aget-wide v24, v24, v25

    move-wide/from16 v26, v5

    move/from16 v28, v7

    invoke-direct/range {v15 .. v28}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    move-object v2, v14

    goto/16 :goto_0

    .line 400
    .end local v8    # "t0":D
    .end local v10    # "t1":D
    .end local v12    # "eqn":[D
    .end local v13    # "i":I
    :cond_2
    move-wide v14, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide/from16 v20, v0

    invoke-static/range {v14 .. v21}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v14

    move-wide v8, v14

    .restart local v8    # "t0":D
    goto/16 :goto_1

    .line 405
    :cond_3
    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide/from16 v20, v0

    invoke-static/range {v14 .. v21}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v14

    move-wide v10, v14

    .restart local v10    # "t1":D
    goto/16 :goto_2

    .line 421
    .restart local v12    # "eqn":[D
    :cond_4
    move-object v14, v12

    const/4 v15, 0x0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    .line 422
    const/4 v14, 0x4

    move v13, v14

    .restart local v13    # "i":I
    goto/16 :goto_3
.end method

.method public getX0()D
    .locals 4

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order2;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->x1:D

    goto :goto_0
.end method

.method public getX1()D
    .locals 4

    .prologue
    .line 232
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order2;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->x1:D

    goto :goto_0
.end method

.method public getXBot()D
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->x1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getXMax()D
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->xmax:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getXMin()D
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->xmin:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getXTop()D
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->x0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getY0()D
    .locals 4

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order2;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->y1:D

    goto :goto_0
.end method

.method public getY1()D
    .locals 4

    .prologue
    .line 236
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order2;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order2;->y1:D

    goto :goto_0
.end method

.method public getYBot()D
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->y1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public getYTop()D
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order2;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order2;->y0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order2;
    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 15

    .prologue
    .line 376
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order2;
    move-wide/from16 v2, p1

    .local v2, "t0":D
    move-wide/from16 v4, p3

    .local v4, "t1":D
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    neg-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    move-wide v6, v8

    .line 377
    .local v6, "t":D
    move-wide v8, v6

    move-wide v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    move-wide v8, v6

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 378
    move-wide v8, v6

    move-wide v1, v8

    .line 380
    .end local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order2;
    :cond_0
    move-wide v8, v4

    move-wide v1, v8

    goto :goto_0
.end method

.class final Lcom/sun/javafx/geom/Order3;
.super Lcom/sun/javafx/geom/Curve;
.source "Order3.java"


# instance fields
.field private TforY1:D

.field private TforY2:D

.field private TforY3:D

.field private YforT1:D

.field private YforT2:D

.field private YforT3:D

.field private cx0:D

.field private cx1:D

.field private cy0:D

.field private cy1:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xcoeff3:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D

.field private ycoeff3:D


# direct methods
.method public constructor <init>(DDDDDDDDI)V
    .locals 31

    .prologue
    .line 287
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Order3;
    move-wide/from16 v4, p1

    .local v4, "x0":D
    move-wide/from16 v6, p3

    .local v6, "y0":D
    move-wide/from16 v8, p5

    .local v8, "cx0":D
    move-wide/from16 v10, p7

    .local v10, "cy0":D
    move-wide/from16 v12, p9

    .local v12, "cx1":D
    move-wide/from16 v14, p11

    .local v14, "cy1":D
    move-wide/from16 v16, p13

    .local v16, "x1":D
    move-wide/from16 v18, p15

    .local v18, "y1":D
    move/from16 v20, p17

    .local v20, "direction":I
    move-object/from16 v21, v3

    move/from16 v22, v20

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    .line 291
    move-wide/from16 v21, v10

    move-wide/from16 v23, v6

    cmpg-double v21, v21, v23

    if-gez v21, :cond_0

    move-wide/from16 v21, v6

    move-wide/from16 v10, v21

    .line 292
    :cond_0
    move-wide/from16 v21, v14

    move-wide/from16 v23, v18

    cmpl-double v21, v21, v23

    if-lez v21, :cond_1

    move-wide/from16 v21, v18

    move-wide/from16 v14, v21

    .line 293
    :cond_1
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->x0:D

    .line 294
    move-object/from16 v21, v3

    move-wide/from16 v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->y0:D

    .line 295
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->cx0:D

    .line 296
    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->cy0:D

    .line 297
    move-object/from16 v21, v3

    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->cx1:D

    .line 298
    move-object/from16 v21, v3

    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->cy1:D

    .line 299
    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->x1:D

    .line 300
    move-object/from16 v21, v3

    move-wide/from16 v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->y1:D

    .line 301
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v16

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v24, v8

    move-wide/from16 v26, v12

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xmin:D

    .line 302
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v16

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v24, v8

    move-wide/from16 v26, v12

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xmax:D

    .line 303
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    .line 304
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    .line 305
    move-object/from16 v21, v3

    move-wide/from16 v22, v12

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v4

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    .line 306
    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    move-wide/from16 v24, v12

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    .line 307
    move-object/from16 v21, v3

    move-wide/from16 v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    .line 308
    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    .line 309
    move-object/from16 v21, v3

    move-wide/from16 v22, v14

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v6

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    .line 310
    move-object/from16 v21, v3

    move-wide/from16 v22, v18

    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    .line 311
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-wide/from16 v24, v6

    move-object/from16 v28, v23

    move-wide/from16 v29, v24

    move-wide/from16 v23, v29

    move-object/from16 v25, v28

    move-wide/from16 v26, v29

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT3:D

    move-object/from16 v28, v22

    move-wide/from16 v29, v23

    move-wide/from16 v22, v29

    move-object/from16 v24, v28

    move-wide/from16 v25, v29

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT2:D

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT1:D

    .line 312
    return-void
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDDDI)V
    .locals 41

    .prologue
    .line 111
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

    .local v10, "cx1":D
    move-wide/from16 v12, p11

    .local v12, "cy1":D
    move-wide/from16 v14, p13

    .local v14, "x1":D
    move-wide/from16 v16, p15

    .local v16, "y1":D
    move/from16 v18, p17

    .local v18, "direction":I
    move-wide/from16 v19, v4

    move-wide/from16 v21, v16

    cmpl-double v19, v19, v21

    if-lez v19, :cond_1

    .line 112
    move-object/from16 v19, v1

    new-instance v20, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v39, v20

    move-object/from16 v20, v39

    move-object/from16 v21, v39

    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    move-wide/from16 v34, v2

    move-wide/from16 v36, v4

    move/from16 v38, v18

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v38, v0

    invoke-direct/range {v21 .. v38}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    move-wide/from16 v19, v16

    move-wide/from16 v21, v4

    cmpl-double v19, v19, v21

    if-lez v19, :cond_0

    .line 115
    move-object/from16 v19, v1

    new-instance v20, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v39, v20

    move-object/from16 v20, v39

    move-object/from16 v21, v39

    move-wide/from16 v22, v2

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    move-wide/from16 v34, v14

    move-wide/from16 v36, v16

    move/from16 v38, v18

    invoke-direct/range {v21 .. v38}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v19

    goto :goto_0
.end method

.method public static getHorizontalParams(DDDD[D)I
    .locals 20

    .prologue
    .line 219
    move-wide/from16 v0, p0

    .local v0, "c0":D
    move-wide/from16 v2, p2

    .local v2, "cp0":D
    move-wide/from16 v4, p4

    .local v4, "cp1":D
    move-wide/from16 v6, p6

    .local v6, "c1":D
    move-object/from16 v8, p8

    .local v8, "ret":[D
    move-wide v14, v0

    move-wide/from16 v16, v2

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    move-wide v14, v2

    move-wide/from16 v16, v4

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    move-wide v14, v4

    move-wide/from16 v16, v6

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    .line 220
    const/4 v14, 0x0

    move v0, v14

    .line 240
    .end local v0    # "c0":D
    :goto_0
    return v0

    .line 222
    .restart local v0    # "c0":D
    :cond_0
    move-wide v14, v6

    move-wide/from16 v16, v4

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 223
    move-wide v14, v4

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    move-wide v4, v14

    .line 224
    move-wide v14, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v2, v14

    .line 225
    move-object v14, v8

    const/4 v15, 0x0

    move-wide/from16 v16, v2

    aput-wide v16, v14, v15

    .line 226
    move-object v14, v8

    const/4 v15, 0x1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v2

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 227
    move-object v14, v8

    const/4 v15, 0x2

    move-wide/from16 v16, v6

    move-wide/from16 v18, v4

    sub-double v16, v16, v18

    move-wide/from16 v18, v4

    sub-double v16, v16, v18

    move-wide/from16 v18, v2

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 228
    move-object v14, v8

    move-object v15, v8

    invoke-static {v14, v15}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result v14

    move v9, v14

    .line 229
    .local v9, "numroots":I
    const/4 v14, 0x0

    move v10, v14

    .line 230
    .local v10, "j":I
    const/4 v14, 0x0

    move v11, v14

    .local v11, "i":I
    :goto_1
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_3

    .line 231
    move-object v14, v8

    move v15, v11

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 233
    .local v12, "t":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    move-wide v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    .line 234
    move v14, v10

    move v15, v11

    if-ge v14, v15, :cond_1

    .line 235
    move-object v14, v8

    move v15, v10

    move-wide/from16 v16, v12

    aput-wide v16, v14, v15

    .line 237
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 230
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 240
    .end local v12    # "t":D
    :cond_3
    move v14, v10

    move v0, v14

    goto :goto_0
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDDDI)V
    .locals 44

    .prologue
    .line 60
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

    .local v12, "cx1":D
    move-wide/from16 v14, p12

    .local v14, "cy1":D
    move-wide/from16 v16, p14

    .local v16, "x1":D
    move-wide/from16 v18, p16

    .local v18, "y1":D
    move/from16 v20, p18

    .local v20, "direction":I
    move-wide/from16 v25, v6

    move-wide/from16 v27, v10

    move-wide/from16 v29, v14

    move-wide/from16 v31, v18

    move-object/from16 v33, v3

    invoke-static/range {v25 .. v33}, Lcom/sun/javafx/geom/Order3;->getHorizontalParams(DDDD[D)I

    move-result v25

    move/from16 v21, v25

    .line 61
    .local v21, "numparams":I
    move/from16 v25, v21

    if-nez v25, :cond_0

    .line 64
    move-object/from16 v25, v2

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    move-wide/from16 v38, v16

    move-wide/from16 v40, v18

    move/from16 v42, v20

    invoke-static/range {v25 .. v42}, Lcom/sun/javafx/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    .line 65
    .line 103
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object/from16 v25, v3

    const/16 v26, 0x3

    move-wide/from16 v27, v4

    aput-wide v27, v25, v26

    move-object/from16 v25, v3

    const/16 v26, 0x4

    move-wide/from16 v27, v6

    aput-wide v27, v25, v26

    .line 69
    move-object/from16 v25, v3

    const/16 v26, 0x5

    move-wide/from16 v27, v8

    aput-wide v27, v25, v26

    move-object/from16 v25, v3

    const/16 v26, 0x6

    move-wide/from16 v27, v10

    aput-wide v27, v25, v26

    .line 70
    move-object/from16 v25, v3

    const/16 v26, 0x7

    move-wide/from16 v27, v12

    aput-wide v27, v25, v26

    move-object/from16 v25, v3

    const/16 v26, 0x8

    move-wide/from16 v27, v14

    aput-wide v27, v25, v26

    .line 71
    move-object/from16 v25, v3

    const/16 v26, 0x9

    move-wide/from16 v27, v16

    aput-wide v27, v25, v26

    move-object/from16 v25, v3

    const/16 v26, 0xa

    move-wide/from16 v27, v18

    aput-wide v27, v25, v26

    .line 72
    move-object/from16 v25, v3

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    move-wide/from16 v22, v25

    .line 73
    .local v22, "t":D
    move/from16 v25, v21

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    move-wide/from16 v25, v22

    move-object/from16 v27, v3

    const/16 v28, 0x1

    aget-wide v27, v27, v28

    cmpl-double v25, v25, v27

    if-lez v25, :cond_1

    .line 75
    move-object/from16 v25, v3

    const/16 v26, 0x0

    move-object/from16 v27, v3

    const/16 v28, 0x1

    aget-wide v27, v27, v28

    aput-wide v27, v25, v26

    .line 76
    move-object/from16 v25, v3

    const/16 v26, 0x1

    move-wide/from16 v27, v22

    aput-wide v27, v25, v26

    .line 77
    move-object/from16 v25, v3

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    move-wide/from16 v22, v25

    .line 79
    :cond_1
    move-object/from16 v25, v3

    const/16 v26, 0x3

    move-wide/from16 v27, v22

    invoke-static/range {v25 .. v28}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    .line 80
    move/from16 v25, v21

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 82
    move-object/from16 v25, v3

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    move-wide/from16 v27, v22

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v29, v22

    sub-double v27, v27, v29

    div-double v25, v25, v27

    move-wide/from16 v22, v25

    .line 83
    move-object/from16 v25, v3

    const/16 v26, 0x9

    move-wide/from16 v27, v22

    invoke-static/range {v25 .. v28}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    .line 85
    :cond_2
    const/16 v25, 0x3

    move/from16 v24, v25

    .line 86
    .local v24, "index":I
    move/from16 v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 87
    move/from16 v25, v24

    move/from16 v26, v21

    const/16 v27, 0x6

    mul-int/lit8 v26, v26, 0x6

    add-int v25, v25, v26

    move/from16 v24, v25

    .line 89
    :cond_3
    :goto_1
    move/from16 v25, v21

    if-ltz v25, :cond_5

    .line 90
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v27, v24

    const/16 v28, 0x0

    add-int/lit8 v27, v27, 0x0

    aget-wide v26, v26, v27

    move-object/from16 v28, v3

    move/from16 v29, v24

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-wide v28, v28, v29

    move-object/from16 v30, v3

    move/from16 v31, v24

    const/16 v32, 0x2

    add-int/lit8 v31, v31, 0x2

    aget-wide v30, v30, v31

    move-object/from16 v32, v3

    move/from16 v33, v24

    const/16 v34, 0x3

    add-int/lit8 v33, v33, 0x3

    aget-wide v32, v32, v33

    move-object/from16 v34, v3

    move/from16 v35, v24

    const/16 v36, 0x4

    add-int/lit8 v35, v35, 0x4

    aget-wide v34, v34, v35

    move-object/from16 v36, v3

    move/from16 v37, v24

    const/16 v38, 0x5

    add-int/lit8 v37, v37, 0x5

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move/from16 v39, v24

    const/16 v40, 0x6

    add-int/lit8 v39, v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move/from16 v41, v24

    const/16 v42, 0x7

    add-int/lit8 v41, v41, 0x7

    aget-wide v40, v40, v41

    move/from16 v42, v20

    invoke-static/range {v25 .. v42}, Lcom/sun/javafx/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    .line 96
    add-int/lit8 v21, v21, -0x1

    .line 97
    move/from16 v25, v20

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 98
    add-int/lit8 v24, v24, 0x6

    goto :goto_1

    .line 100
    :cond_4
    add-int/lit8 v24, v24, -0x6

    goto :goto_1

    .line 103
    :cond_5
    goto/16 :goto_0
.end method

.method public static solveQuadratic([D[D)I
    .locals 22

    .prologue
    .line 141
    move-object/from16 v3, p0

    .local v3, "eqn":[D
    move-object/from16 v4, p1

    .local v4, "res":[D
    move-object/from16 v16, v3

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    move-wide/from16 v5, v16

    .line 142
    .local v5, "a":D
    move-object/from16 v16, v3

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    move-wide/from16 v7, v16

    .line 143
    .local v7, "b":D
    move-object/from16 v16, v3

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    move-wide/from16 v9, v16

    .line 144
    .local v9, "c":D
    const/16 v16, 0x0

    move/from16 v11, v16

    .line 145
    .local v11, "roots":I
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    .line 147
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    .line 149
    const/16 v16, -0x1

    move/from16 v3, v16

    .line 175
    .end local v3    # "eqn":[D
    :goto_0
    return v3

    .line 151
    .restart local v3    # "eqn":[D
    :cond_0
    move-object/from16 v16, v4

    move/from16 v17, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    div-double v18, v18, v20

    aput-wide v18, v16, v17

    .line 175
    :cond_1
    :goto_1
    move/from16 v16, v11

    move/from16 v3, v16

    goto :goto_0

    .line 154
    :cond_2
    move-wide/from16 v16, v7

    move-wide/from16 v18, v7

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    move-wide/from16 v20, v5

    mul-double v18, v18, v20

    move-wide/from16 v20, v9

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 155
    .local v12, "d":D
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 157
    const/16 v16, 0x0

    move/from16 v3, v16

    goto :goto_0

    .line 159
    :cond_3
    move-wide/from16 v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 165
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_4

    .line 166
    move-wide/from16 v16, v12

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v12, v16

    .line 168
    :cond_4
    move-wide/from16 v16, v7

    move-wide/from16 v18, v12

    add-double v16, v16, v18

    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    div-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 170
    .local v14, "q":D
    move-object/from16 v16, v4

    move/from16 v17, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v18, v14

    move-wide/from16 v20, v5

    div-double v18, v18, v20

    aput-wide v18, v16, v17

    .line 171
    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_1

    .line 172
    move-object/from16 v16, v4

    move/from16 v17, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v18, v9

    move-wide/from16 v20, v14

    div-double v18, v18, v20

    aput-wide v18, v16, v17

    goto :goto_1
.end method

.method public static split([DID)V
    .locals 30

    .prologue
    .line 251
    move-object/from16 v0, p0

    .local v0, "coords":[D
    move/from16 v1, p1

    .local v1, "pos":I
    move-wide/from16 v2, p2

    .local v2, "t":D
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    move-object/from16 v22, v0

    move/from16 v23, v1

    const/16 v24, 0x6

    add-int/lit8 v23, v23, 0x6

    aget-wide v22, v22, v23

    move-wide/from16 v28, v22

    move-wide/from16 v22, v28

    move-wide/from16 v24, v28

    move-wide/from16 v16, v24

    .local v16, "x1":D
    aput-wide v22, v20, v21

    .line 252
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0xd

    add-int/lit8 v21, v21, 0xd

    move-object/from16 v22, v0

    move/from16 v23, v1

    const/16 v24, 0x7

    add-int/lit8 v23, v23, 0x7

    aget-wide v22, v22, v23

    move-wide/from16 v28, v22

    move-wide/from16 v22, v28

    move-wide/from16 v24, v28

    move-wide/from16 v18, v24

    .local v18, "y1":D
    aput-wide v22, v20, v21

    .line 253
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    aget-wide v20, v20, v21

    move-wide/from16 v12, v20

    .line 254
    .local v12, "cx1":D
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    .line 255
    .local v14, "cy1":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v16

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 256
    move-wide/from16 v20, v14

    move-wide/from16 v22, v18

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 257
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget-wide v20, v20, v21

    move-wide/from16 v4, v20

    .line 258
    .local v4, "x0":D
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    move-wide/from16 v6, v20

    .line 259
    .local v6, "y0":D
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget-wide v20, v20, v21

    move-wide/from16 v8, v20

    .line 260
    .local v8, "cx0":D
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x3

    add-int/lit8 v21, v21, 0x3

    aget-wide v20, v20, v21

    move-wide/from16 v10, v20

    .line 261
    .local v10, "cy0":D
    move-wide/from16 v20, v4

    move-wide/from16 v22, v8

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 262
    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v6, v20

    .line 263
    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 264
    move-wide/from16 v20, v10

    move-wide/from16 v22, v14

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 265
    move-wide/from16 v20, v8

    move-wide/from16 v22, v16

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 266
    move-wide/from16 v20, v10

    move-wide/from16 v22, v18

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 267
    move-wide/from16 v20, v4

    move-wide/from16 v22, v8

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 268
    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v24, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 269
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    move-wide/from16 v22, v4

    aput-wide v22, v20, v21

    .line 270
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x3

    add-int/lit8 v21, v21, 0x3

    move-wide/from16 v22, v6

    aput-wide v22, v20, v21

    .line 271
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move-wide/from16 v22, v8

    aput-wide v22, v20, v21

    .line 272
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    move-wide/from16 v22, v10

    aput-wide v22, v20, v21

    .line 273
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x6

    add-int/lit8 v21, v21, 0x6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v12

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    move-wide/from16 v26, v2

    mul-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 274
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x7

    add-int/lit8 v21, v21, 0x7

    move-wide/from16 v22, v10

    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    move-wide/from16 v26, v2

    mul-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 275
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x8

    add-int/lit8 v21, v21, 0x8

    move-wide/from16 v22, v12

    aput-wide v22, v20, v21

    .line 276
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0x9

    add-int/lit8 v21, v21, 0x9

    move-wide/from16 v22, v14

    aput-wide v22, v20, v21

    .line 277
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0xa

    add-int/lit8 v21, v21, 0xa

    move-wide/from16 v22, v16

    aput-wide v22, v20, v21

    .line 278
    move-object/from16 v20, v0

    move/from16 v21, v1

    const/16 v22, 0xb

    add-int/lit8 v21, v21, 0xb

    move-wide/from16 v22, v18

    aput-wide v22, v20, v21

    .line 279
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 47

    .prologue
    .line 389
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Order3;
    move-wide/from16 v4, p1

    .local v4, "y":D
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gtz v32, :cond_0

    const-wide/16 v32, 0x0

    move-wide/from16 v3, v32

    .line 461
    .end local v3    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-wide v3

    .line 390
    .restart local v3    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_1

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v3, v32

    goto :goto_0

    .line 391
    :cond_1
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->YforT1:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_2

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->TforY1:D

    move-wide/from16 v32, v0

    move-wide/from16 v3, v32

    goto :goto_0

    .line 392
    :cond_2
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->YforT2:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_3

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->TforY2:D

    move-wide/from16 v32, v0

    move-wide/from16 v3, v32

    goto :goto_0

    .line 393
    :cond_3
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->YforT3:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_4

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->TforY3:D

    move-wide/from16 v32, v0

    move-wide/from16 v3, v32

    goto :goto_0

    .line 395
    :cond_4
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_5

    .line 397
    move-wide/from16 v32, v4

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    move-wide/from16 v34, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    move-wide/from16 v36, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    move-wide/from16 v38, v0

    invoke-static/range {v32 .. v39}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v32

    move-wide/from16 v3, v32

    goto/16 :goto_0

    .line 399
    :cond_5
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v6, v32

    .line 400
    .local v6, "a":D
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v8, v32

    .line 401
    .local v8, "b":D
    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    move-wide/from16 v32, v0

    move-wide/from16 v34, v4

    sub-double v32, v32, v34

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v10, v32

    .line 402
    .local v10, "c":D
    const/16 v32, 0x0

    move/from16 v12, v32

    .line 403
    .local v12, "roots":I
    move-wide/from16 v32, v6

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    div-double v32, v32, v34

    move-wide/from16 v13, v32

    .line 404
    .local v13, "Q":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    move-wide/from16 v36, v6

    mul-double v34, v34, v36

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x403b000000000000L    # 27.0

    move-wide/from16 v36, v10

    mul-double v34, v34, v36

    add-double v32, v32, v34

    const-wide/high16 v34, 0x404b000000000000L    # 54.0

    div-double v32, v32, v34

    move-wide/from16 v15, v32

    .line 405
    .local v15, "R":D
    move-wide/from16 v32, v15

    move-wide/from16 v34, v15

    mul-double v32, v32, v34

    move-wide/from16 v17, v32

    .line 406
    .local v17, "R2":D
    move-wide/from16 v32, v13

    move-wide/from16 v34, v13

    mul-double v32, v32, v34

    move-wide/from16 v34, v13

    mul-double v32, v32, v34

    move-wide/from16 v19, v32

    .line 407
    .local v19, "Q3":D
    move-wide/from16 v32, v6

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    move-wide/from16 v21, v32

    .line 409
    .local v21, "a_3":D
    move-wide/from16 v32, v17

    move-wide/from16 v34, v19

    cmpg-double v32, v32, v34

    if-gez v32, :cond_a

    .line 410
    move-wide/from16 v32, v15

    move-wide/from16 v34, v19

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->acos(D)D

    move-result-wide v32

    move-wide/from16 v25, v32

    .line 411
    .local v25, "theta":D
    const-wide/high16 v32, -0x4000000000000000L    # -2.0

    move-wide/from16 v34, v13

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v13, v32

    .line 412
    move-object/from16 v32, v3

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    move-wide/from16 v37, v10

    move-wide/from16 v39, v4

    move-wide/from16 v41, v13

    move-wide/from16 v43, v25

    const-wide/high16 v45, 0x4008000000000000L    # 3.0

    div-double v43, v43, v45

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->cos(D)D

    move-result-wide v43

    mul-double v41, v41, v43

    move-wide/from16 v43, v21

    sub-double v41, v41, v43

    invoke-virtual/range {v32 .. v42}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v32

    move-wide/from16 v23, v32

    .line 413
    .local v23, "t":D
    move-wide/from16 v32, v23

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_6

    .line 414
    move-object/from16 v32, v3

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    move-wide/from16 v37, v10

    move-wide/from16 v39, v4

    move-wide/from16 v41, v13

    move-wide/from16 v43, v25

    const-wide v45, 0x401921fb54442d18L    # 6.283185307179586

    add-double v43, v43, v45

    const-wide/high16 v45, 0x4008000000000000L    # 3.0

    div-double v43, v43, v45

    .line 415
    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->cos(D)D

    move-result-wide v43

    mul-double v41, v41, v43

    move-wide/from16 v43, v21

    sub-double v41, v41, v43

    .line 414
    invoke-virtual/range {v32 .. v42}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v32

    move-wide/from16 v23, v32

    .line 417
    :cond_6
    move-wide/from16 v32, v23

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_7

    .line 418
    move-object/from16 v32, v3

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    move-wide/from16 v37, v10

    move-wide/from16 v39, v4

    move-wide/from16 v41, v13

    move-wide/from16 v43, v25

    const-wide v45, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v43, v43, v45

    const-wide/high16 v45, 0x4008000000000000L    # 3.0

    div-double v43, v43, v45

    .line 419
    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->cos(D)D

    move-result-wide v43

    mul-double v41, v41, v43

    move-wide/from16 v43, v21

    sub-double v41, v41, v43

    .line 418
    invoke-virtual/range {v32 .. v42}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v32

    move-wide/from16 v23, v32

    .line 421
    .line 434
    .end local v25    # "theta":D
    :cond_7
    :goto_1
    move-wide/from16 v32, v23

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_8

    .line 436
    const-wide/16 v32, 0x0

    move-wide/from16 v25, v32

    .line 437
    .local v25, "t0":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v27, v32

    .line 439
    .local v27, "t1":D
    :goto_2
    move-wide/from16 v32, v25

    move-wide/from16 v34, v27

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    move-wide/from16 v23, v32

    .line 440
    move-wide/from16 v32, v23

    move-wide/from16 v34, v25

    cmpl-double v32, v32, v34

    if-eqz v32, :cond_8

    move-wide/from16 v32, v23

    move-wide/from16 v34, v27

    cmpl-double v32, v32, v34

    if-nez v32, :cond_f

    .line 441
    .line 453
    .end local v25    # "t0":D
    .end local v27    # "t1":D
    :cond_8
    move-wide/from16 v32, v23

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_9

    .line 454
    move-object/from16 v32, v3

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->TforY2:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->TforY3:D

    .line 455
    move-object/from16 v32, v3

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->YforT2:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT3:D

    .line 456
    move-object/from16 v32, v3

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->TforY1:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->TforY2:D

    .line 457
    move-object/from16 v32, v3

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->YforT1:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT2:D

    .line 458
    move-object/from16 v32, v3

    move-wide/from16 v33, v23

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->TforY1:D

    .line 459
    move-object/from16 v32, v3

    move-wide/from16 v33, v4

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/Order3;->YforT1:D

    .line 461
    :cond_9
    move-wide/from16 v32, v23

    move-wide/from16 v3, v32

    goto/16 :goto_0

    .line 422
    .end local v23    # "t":D
    :cond_a
    move-wide/from16 v32, v15

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_d

    const/16 v32, 0x1

    :goto_3
    move/from16 v25, v32

    .line 423
    .local v25, "neg":Z
    move-wide/from16 v32, v17

    move-wide/from16 v34, v19

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v26, v32

    .line 424
    .local v26, "S":D
    move/from16 v32, v25

    if-eqz v32, :cond_b

    .line 425
    move-wide/from16 v32, v15

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v15, v32

    .line 427
    :cond_b
    move-wide/from16 v32, v15

    move-wide/from16 v34, v26

    add-double v32, v32, v34

    const-wide v34, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v28, v32

    .line 428
    .local v28, "A":D
    move/from16 v32, v25

    if-nez v32, :cond_c

    .line 429
    move-wide/from16 v32, v28

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v28, v32

    .line 431
    :cond_c
    move-wide/from16 v32, v28

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_e

    const-wide/16 v32, 0x0

    :goto_4
    move-wide/from16 v30, v32

    .line 432
    .local v30, "B":D
    move-object/from16 v32, v3

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    move-wide/from16 v37, v10

    move-wide/from16 v39, v4

    move-wide/from16 v41, v28

    move-wide/from16 v43, v30

    add-double v41, v41, v43

    move-wide/from16 v43, v21

    sub-double v41, v41, v43

    invoke-virtual/range {v32 .. v42}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v32

    move-wide/from16 v23, v32

    .restart local v23    # "t":D
    goto/16 :goto_1

    .line 422
    .end local v23    # "t":D
    .end local v25    # "neg":Z
    .end local v26    # "S":D
    .end local v28    # "A":D
    .end local v30    # "B":D
    :cond_d
    const/16 v32, 0x0

    goto :goto_3

    .line 431
    .restart local v25    # "neg":Z
    .restart local v26    # "S":D
    .restart local v28    # "A":D
    :cond_e
    move-wide/from16 v32, v13

    move-wide/from16 v34, v28

    div-double v32, v32, v34

    goto :goto_4

    .line 443
    .end local v26    # "S":D
    .end local v28    # "A":D
    .restart local v23    # "t":D
    .local v25, "t0":D
    .restart local v27    # "t1":D
    :cond_f
    move-object/from16 v32, v3

    move-wide/from16 v33, v23

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v32

    move-wide/from16 v29, v32

    .line 444
    .local v29, "yt":D
    move-wide/from16 v32, v29

    move-wide/from16 v34, v4

    cmpg-double v32, v32, v34

    if-gez v32, :cond_10

    .line 445
    move-wide/from16 v32, v23

    move-wide/from16 v25, v32

    .line 451
    :goto_5
    goto/16 :goto_2

    .line 446
    :cond_10
    move-wide/from16 v32, v29

    move-wide/from16 v34, v4

    cmpl-double v32, v32, v34

    if-lez v32, :cond_8

    .line 447
    move-wide/from16 v32, v23

    move-wide/from16 v27, v32

    goto :goto_5
.end method

.method public XforT(D)D
    .locals 9

    .prologue
    .line 549
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1
.end method

.method public XforY(D)D
    .locals 9

    .prologue
    .line 539
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-wide v2, p1

    .local v2, "y":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->y0:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 540
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->x0:D

    move-wide v1, v4

    .line 545
    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-wide v1

    .line 542
    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->y1:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 543
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->x1:D

    move-wide v1, v4

    goto :goto_0

    .line 545
    :cond_1
    move-object v4, v1

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Order3;->XforT(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public YforT(D)D
    .locals 9

    .prologue
    .line 553
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v2

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Order3;->getCX0()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order3;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Order3;->getCY0()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order3;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 688
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Order3;->getCX1()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order3;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Order3;->getCY1()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Order3;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-object v0
.end method

.method public dXforT(DI)D
    .locals 11

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 567
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-wide v0

    .line 559
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 561
    :pswitch_1
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 563
    :pswitch_2
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 565
    :pswitch_3
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dYforT(DI)D
    .locals 11

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 582
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-wide v0

    .line 574
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 576
    :pswitch_1
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 578
    :pswitch_2
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v4, v6

    move-wide v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 580
    :pswitch_3
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 16

    .prologue
    .line 598
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object/from16 v2, p1

    .local v2, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v8, v2

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Order3;->x0:D

    double-to-float v9, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order3;->y0:D

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 599
    const/4 v8, 0x3

    new-array v8, v8, [D

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    aput-wide v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v11, v13

    aput-wide v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v11, v13

    aput-wide v11, v9, v10

    move-object v3, v8

    .line 600
    .local v3, "eqn":[D
    move-object v8, v3

    move-object v9, v3

    invoke-static {v8, v9}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result v8

    move v4, v8

    .line 601
    .local v4, "numroots":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 602
    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 603
    .local v6, "t":D
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 604
    move-object v8, v2

    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/Order3;->XforT(D)D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v1

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 601
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    .end local v6    # "t":D
    :cond_1
    move-object v8, v2

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Order3;->x1:D

    double-to-float v9, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order3;->y1:D

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 608
    return-void
.end method

.method public getCX0()D
    .locals 4

    .prologue
    .line 351
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cx0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cx1:D

    goto :goto_0
.end method

.method public getCX1()D
    .locals 4

    .prologue
    .line 359
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cx0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cx1:D

    goto :goto_0
.end method

.method public getCY0()D
    .locals 4

    .prologue
    .line 355
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cy0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cy1:D

    goto :goto_0
.end method

.method public getCY1()D
    .locals 4

    .prologue
    .line 363
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cy0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->cy1:D

    goto :goto_0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return v0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 24

    .prologue
    .line 663
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Order3;
    new-instance v4, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v23, v4

    move-object/from16 v4, v23

    move-object/from16 v5, v23

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order3;->x0:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order3;->y0:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order3;->cx0:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/Order3;->cy0:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/Order3;->cx1:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->cy1:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->x1:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Order3;->direction:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v5 .. v22}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    move-object v3, v4

    .end local v3    # "this":Lcom/sun/javafx/geom/Order3;
    return-object v3
.end method

.method public getSegment([F)I
    .locals 6

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 668
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cx0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 669
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cy0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 670
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cx1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 671
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cy1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 672
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->x1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 673
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->y1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 682
    :goto_0
    const/4 v2, 0x3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return v0

    .line 675
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cx1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 676
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cy1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 677
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cx0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 678
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->cy0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 679
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->x0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 680
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order3;->y0:D

    double-to-float v4, v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 37

    .prologue
    .line 611
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Order3;
    move-wide/from16 v4, p1

    .local v4, "ystart":D
    move-wide/from16 v6, p3

    .local v6, "yend":D
    move/from16 v8, p5

    .local v8, "dir":I
    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_0

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_0

    .line 612
    move-object/from16 v16, v3

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/Order3;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v16

    move-object/from16 v3, v16

    .line 655
    .end local v3    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-object v3

    .line 614
    .restart local v3    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    const/16 v16, 0xe

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 616
    .local v9, "eqn":[D
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 617
    .local v10, "t0":D
    move-object/from16 v16, v3

    move-wide/from16 v17, v6

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 618
    .local v12, "t1":D
    move-object/from16 v16, v9

    const/16 v17, 0x0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->x0:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 619
    move-object/from16 v16, v9

    const/16 v17, 0x1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 620
    move-object/from16 v16, v9

    const/16 v17, 0x2

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->cx0:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 621
    move-object/from16 v16, v9

    const/16 v17, 0x3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->cy0:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 622
    move-object/from16 v16, v9

    const/16 v17, 0x4

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->cx1:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 623
    move-object/from16 v16, v9

    const/16 v17, 0x5

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->cy1:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 624
    move-object/from16 v16, v9

    const/16 v17, 0x6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->x1:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 625
    move-object/from16 v16, v9

    const/16 v17, 0x7

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 626
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    cmpl-double v16, v16, v18

    if-lez v16, :cond_1

    .line 641
    move-wide/from16 v16, v10

    move-wide/from16 v14, v16

    .line 642
    .local v14, "t":D
    move-wide/from16 v16, v12

    move-wide/from16 v10, v16

    .line 643
    move-wide/from16 v16, v14

    move-wide/from16 v12, v16

    .line 645
    .end local v14    # "t":D
    :cond_1
    move-wide/from16 v16, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_2

    .line 646
    move-object/from16 v16, v9

    const/16 v17, 0x0

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    .line 649
    :cond_2
    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_3

    .line 650
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 655
    .local v14, "i":I
    :goto_1
    new-instance v16, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v35, v16

    move-object/from16 v16, v35

    move-object/from16 v17, v35

    move-object/from16 v18, v9

    move/from16 v19, v14

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget-wide v18, v18, v19

    move-wide/from16 v20, v4

    move-object/from16 v22, v9

    move/from16 v23, v14

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget-wide v22, v22, v23

    move-object/from16 v24, v9

    move/from16 v25, v14

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    aget-wide v24, v24, v25

    move-object/from16 v26, v9

    move/from16 v27, v14

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget-wide v26, v26, v27

    move-object/from16 v28, v9

    move/from16 v29, v14

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    aget-wide v28, v28, v29

    move-object/from16 v30, v9

    move/from16 v31, v14

    const/16 v32, 0x6

    add-int/lit8 v31, v31, 0x6

    aget-wide v30, v30, v31

    move-wide/from16 v32, v6

    move/from16 v34, v8

    invoke-direct/range {v17 .. v34}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 652
    .end local v14    # "i":I
    :cond_3
    move-object/from16 v16, v9

    const/16 v17, 0x0

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    .line 653
    const/16 v16, 0x6

    move/from16 v14, v16

    .restart local v14    # "i":I
    goto :goto_1
.end method

.method public getX0()D
    .locals 4

    .prologue
    .line 343
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->x1:D

    goto :goto_0
.end method

.method public getX1()D
    .locals 4

    .prologue
    .line 367
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->x1:D

    goto :goto_0
.end method

.method public getXBot()D
    .locals 3

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->x1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public getXMax()D
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->xmax:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public getXMin()D
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->xmin:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public getXTop()D
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->x0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public getY0()D
    .locals 4

    .prologue
    .line 347
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->y1:D

    goto :goto_0
.end method

.method public getY1()D
    .locals 4

    .prologue
    .line 371
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order3;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order3;->y1:D

    goto :goto_0
.end method

.method public getYBot()D
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public getYTop()D
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order3;->y0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 17

    .prologue
    .line 587
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order3;
    move-wide/from16 v2, p1

    .local v2, "t0":D
    move-wide/from16 v4, p3

    .local v4, "t1":D
    const/4 v9, 0x3

    new-array v9, v9, [D

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    aput-wide v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    move-object v6, v9

    .line 588
    .local v6, "eqn":[D
    move-object v9, v6

    move-object v10, v6

    invoke-static {v9, v10}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result v9

    move v7, v9

    .line 589
    .local v7, "numroots":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_1

    .line 590
    move-object v9, v6

    move v10, v8

    aget-wide v9, v9, v10

    move-wide v11, v2

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    move-object v9, v6

    move v10, v8

    aget-wide v9, v9, v10

    move-wide v11, v4

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 591
    move-object v9, v6

    move v10, v8

    aget-wide v9, v9, v10

    move-wide v4, v9

    .line 589
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 594
    :cond_1
    move-wide v9, v4

    move-wide v1, v9

    .end local v1    # "this":Lcom/sun/javafx/geom/Order3;
    return-wide v1
.end method

.method public refine(DDDDD)D
    .locals 33

    .prologue
    .line 467
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order3;
    move-wide/from16 v1, p1

    .local v1, "a":D
    move-wide/from16 v3, p3

    .local v3, "b":D
    move-wide/from16 v5, p5

    .local v5, "c":D
    move-wide/from16 v7, p7

    .local v7, "target":D
    move-wide/from16 v9, p9

    .local v9, "t":D
    move-wide/from16 v26, v9

    const-wide v28, -0x4046666666666666L    # -0.1

    cmpg-double v26, v26, v28

    if-ltz v26, :cond_0

    move-wide/from16 v26, v9

    const-wide v28, 0x3ff199999999999aL    # 1.1

    cmpl-double v26, v26, v28

    if-lez v26, :cond_1

    .line 468
    :cond_0
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v26

    .line 535
    .end local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :goto_0
    return-wide v0

    .line 470
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order3;
    :cond_1
    move-object/from16 v26, v0

    move-wide/from16 v27, v9

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 472
    .local v11, "y":D
    move-wide/from16 v26, v11

    move-wide/from16 v28, v7

    cmpg-double v26, v26, v28

    if-gez v26, :cond_3

    .line 473
    move-wide/from16 v26, v9

    move-wide/from16 v13, v26

    .line 474
    .local v13, "t0":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v15, v26

    .line 479
    .local v15, "t1":D
    :goto_1
    move-wide/from16 v26, v9

    move-wide/from16 v17, v26

    .line 480
    .local v17, "origt":D
    move-wide/from16 v26, v11

    move-wide/from16 v19, v26

    .line 481
    .local v19, "origy":D
    const/16 v26, 0x1

    move/from16 v21, v26

    .line 482
    .local v21, "useslope":Z
    :goto_2
    move-wide/from16 v26, v11

    move-wide/from16 v28, v7

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_2

    .line 483
    move/from16 v26, v21

    if-nez v26, :cond_5

    .line 484
    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 485
    .local v22, "t2":D
    move-wide/from16 v26, v22

    move-wide/from16 v28, v13

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_2

    move-wide/from16 v26, v22

    move-wide/from16 v28, v15

    cmpl-double v26, v26, v28

    if-nez v26, :cond_4

    .line 486
    .line 511
    .end local v22    # "t2":D
    :cond_2
    const/16 v26, 0x0

    move/from16 v22, v26

    .line 535
    .local v22, "verbose":Z
    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-lez v26, :cond_a

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    :goto_3
    move-wide/from16 v0, v26

    goto :goto_0

    .line 476
    .end local v13    # "t0":D
    .end local v15    # "t1":D
    .end local v17    # "origt":D
    .end local v19    # "origy":D
    .end local v21    # "useslope":Z
    .end local v22    # "verbose":Z
    :cond_3
    const-wide/16 v26, 0x0

    move-wide/from16 v13, v26

    .line 477
    .restart local v13    # "t0":D
    move-wide/from16 v26, v9

    move-wide/from16 v15, v26

    .restart local v15    # "t1":D
    goto :goto_1

    .line 488
    .restart local v17    # "origt":D
    .restart local v19    # "origy":D
    .restart local v21    # "useslope":Z
    .local v22, "t2":D
    :cond_4
    move-wide/from16 v26, v22

    move-wide/from16 v9, v26

    .line 502
    .end local v22    # "t2":D
    :goto_4
    move-object/from16 v26, v0

    move-wide/from16 v27, v9

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 503
    move-wide/from16 v26, v11

    move-wide/from16 v28, v7

    cmpg-double v26, v26, v28

    if-gez v26, :cond_9

    .line 504
    move-wide/from16 v26, v9

    move-wide/from16 v13, v26

    goto :goto_2

    .line 490
    :cond_5
    move-object/from16 v26, v0

    move-wide/from16 v27, v9

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/sun/javafx/geom/Order3;->dYforT(DI)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 491
    .local v22, "slope":D
    move-wide/from16 v26, v22

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_6

    .line 492
    const/16 v26, 0x0

    move/from16 v21, v26

    .line 493
    goto :goto_2

    .line 495
    :cond_6
    move-wide/from16 v26, v9

    move-wide/from16 v28, v7

    move-wide/from16 v30, v11

    sub-double v28, v28, v30

    move-wide/from16 v30, v22

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v24, v26

    .line 496
    .local v24, "t2":D
    move-wide/from16 v26, v24

    move-wide/from16 v28, v9

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_7

    move-wide/from16 v26, v24

    move-wide/from16 v28, v13

    cmpg-double v26, v26, v28

    if-lez v26, :cond_7

    move-wide/from16 v26, v24

    move-wide/from16 v28, v15

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_8

    .line 497
    :cond_7
    const/16 v26, 0x0

    move/from16 v21, v26

    .line 498
    goto/16 :goto_2

    .line 500
    :cond_8
    move-wide/from16 v26, v24

    move-wide/from16 v9, v26

    goto :goto_4

    .line 505
    .end local v22    # "slope":D
    .end local v24    # "t2":D
    :cond_9
    move-wide/from16 v26, v11

    move-wide/from16 v28, v7

    cmpl-double v26, v26, v28

    if-lez v26, :cond_2

    .line 506
    move-wide/from16 v26, v9

    move-wide/from16 v15, v26

    goto/16 :goto_2

    .line 535
    .local v22, "verbose":Z
    :cond_a
    move-wide/from16 v26, v9

    goto/16 :goto_3
.end method

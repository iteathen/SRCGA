.class public abstract Lcom/sun/javafx/geom/Curve;
.super Ljava/lang/Object;
.source "Curve.java"


# static fields
.field public static final DECREASING:I = -0x1

.field public static final INCREASING:I = 0x1

.field public static final TMIN:D = 0.001


# instance fields
.field protected direction:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    move v1, p1

    .local v1, "direction":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/Curve;->direction:I

    .line 98
    return-void
.end method

.method public static diffbits(DD)J
    .locals 8

    .prologue
    .line 127
    move-wide v0, p0

    .local v0, "y1":D
    move-wide v2, p2

    .local v2, "y2":D
    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-wide v6, v2

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-wide v0, v4

    .end local v0    # "y1":D
    return-wide v0
.end method

.method public static insertCubic(Ljava/util/Vector;[DDDDDDDDD)V
    .locals 38

    .prologue
    .line 82
    move-object/from16 v0, p0

    .local v0, "curves":Ljava/util/Vector;
    move-object/from16 v1, p1

    .local v1, "tmp":[D
    move-wide/from16 v2, p2

    .local v2, "x0":D
    move-wide/from16 v4, p4

    .local v4, "y0":D
    move-wide/from16 v6, p6

    .local v6, "cx0":D
    move-wide/from16 v8, p8

    .local v8, "cy0":D
    move-wide/from16 v10, p10

    .local v10, "cx1":D
    move-wide/from16 v12, p12

    .local v12, "cy1":D
    move-wide/from16 v14, p14

    .local v14, "x1":D
    move-wide/from16 v16, p16

    .local v16, "y1":D
    move-wide/from16 v18, v4

    move-wide/from16 v20, v16

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 83
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v2

    move-wide/from16 v34, v4

    const/16 v36, -0x1

    invoke-static/range {v18 .. v36}, Lcom/sun/javafx/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    move-wide/from16 v18, v4

    move-wide/from16 v20, v16

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-wide/from16 v34, v16

    const/16 v36, 0x1

    invoke-static/range {v18 .. v36}, Lcom/sun/javafx/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    goto :goto_0
.end method

.method public static insertLine(Ljava/util/Vector;DDDD)V
    .locals 23

    .prologue
    .line 44
    move-object/from16 v1, p0

    .local v1, "curves":Ljava/util/Vector;
    move-wide/from16 v2, p1

    .local v2, "x0":D
    move-wide/from16 v4, p3

    .local v4, "y0":D
    move-wide/from16 v6, p5

    .local v6, "x1":D
    move-wide/from16 v8, p7

    .local v8, "y1":D
    move-wide v10, v4

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 45
    move-object v10, v1

    new-instance v11, Lcom/sun/javafx/geom/Order1;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v21}, Lcom/sun/javafx/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    move-wide v10, v4

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 49
    move-object v10, v1

    new-instance v11, Lcom/sun/javafx/geom/Order1;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    const/16 v21, -0x1

    invoke-direct/range {v12 .. v21}, Lcom/sun/javafx/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0
.end method

.method public static insertMove(Ljava/util/Vector;DD)V
    .locals 13

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "curves":Ljava/util/Vector;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/geom/Order0;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Order0;-><init>(DD)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 38
    return-void
.end method

.method public static insertQuad(Ljava/util/Vector;[DDDDDDD)V
    .locals 30

    .prologue
    .line 62
    move-object/from16 v0, p0

    .local v0, "curves":Ljava/util/Vector;
    move-object/from16 v1, p1

    .local v1, "tmp":[D
    move-wide/from16 v2, p2

    .local v2, "x0":D
    move-wide/from16 v4, p4

    .local v4, "y0":D
    move-wide/from16 v6, p6

    .local v6, "cx0":D
    move-wide/from16 v8, p8

    .local v8, "cy0":D
    move-wide/from16 v10, p10

    .local v10, "x1":D
    move-wide/from16 v12, p12

    .local v12, "y1":D
    move-wide v14, v4

    move-wide/from16 v16, v12

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    .line 63
    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    const/16 v28, -0x1

    invoke-static/range {v14 .. v28}, Lcom/sun/javafx/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    move-wide v14, v4

    move-wide/from16 v16, v12

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    move-wide v14, v4

    move-wide/from16 v16, v8

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    const/16 v28, 0x1

    invoke-static/range {v14 .. v28}, Lcom/sun/javafx/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    goto :goto_0
.end method

.method public static next(D)D
    .locals 6

    .prologue
    .line 134
    move-wide v0, p0

    .local v0, "v":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "v":D
    return-wide v0
.end method

.method public static orderof(DD)I
    .locals 8

    .prologue
    .line 114
    move-wide v0, p0

    .local v0, "x1":D
    move-wide v2, p2

    .local v2, "x2":D
    move-wide v4, v0

    move-wide v6, v2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 115
    const/4 v4, -0x1

    move v0, v4

    .line 120
    .end local v0    # "x1":D
    :goto_0
    return v0

    .line 117
    .restart local v0    # "x1":D
    :cond_0
    move-wide v4, v0

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 118
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 120
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static prev(D)D
    .locals 6

    .prologue
    .line 131
    move-wide v0, p0

    .local v0, "v":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "v":D
    return-wide v0
.end method

.method public static round(D)D
    .locals 4

    .prologue
    .line 110
    move-wide v0, p0

    .local v0, "v":D
    move-wide v2, v0

    move-wide v0, v2

    .end local v0    # "v":D
    return-wide v0
.end method

.method public static signeddiffbits(DD)J
    .locals 8

    .prologue
    .line 124
    move-wide v0, p0

    .local v0, "y1":D
    move-wide v2, p2

    .local v2, "y2":D
    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "y1":D
    return-wide v0
.end method


# virtual methods
.method public abstract TforY(D)D
.end method

.method public abstract XforT(D)D
.end method

.method public abstract XforY(D)D
.end method

.method public abstract YforT(D)D
.end method

.method public accumulateCrossings(Lcom/sun/javafx/geom/Crossings;)Z
    .locals 34

    .prologue
    .line 186
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v3, p1

    .local v3, "c":Lcom/sun/javafx/geom/Crossings;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Crossings;->getXHi()D

    move-result-wide v28

    move-wide/from16 v4, v28

    .line 187
    .local v4, "xhi":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Curve;->getXMin()D

    move-result-wide v28

    move-wide/from16 v30, v4

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_0

    .line 188
    const/16 v28, 0x0

    move/from16 v2, v28

    .line 239
    .end local v2    # "this":Lcom/sun/javafx/geom/Curve;
    :goto_0
    return v2

    .line 190
    .restart local v2    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Crossings;->getXLo()D

    move-result-wide v28

    move-wide/from16 v6, v28

    .line 191
    .local v6, "xlo":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Crossings;->getYLo()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .line 192
    .local v8, "ylo":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Crossings;->getYHi()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 193
    .local v10, "yhi":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 194
    .local v12, "y0":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 196
    .local v14, "y1":D
    move-wide/from16 v28, v12

    move-wide/from16 v30, v8

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 197
    move-wide/from16 v28, v14

    move-wide/from16 v30, v8

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_1

    .line 198
    const/16 v28, 0x0

    move/from16 v2, v28

    goto :goto_0

    .line 200
    :cond_1
    move-wide/from16 v28, v8

    move-wide/from16 v18, v28

    .line 201
    .local v18, "ystart":D
    move-object/from16 v28, v2

    move-wide/from16 v29, v8

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 209
    .local v16, "tstart":D
    :goto_1
    move-wide/from16 v28, v14

    move-wide/from16 v30, v10

    cmpl-double v28, v28, v30

    if-lez v28, :cond_5

    .line 210
    move-wide/from16 v28, v10

    move-wide/from16 v22, v28

    .line 211
    .local v22, "yend":D
    move-object/from16 v28, v2

    move-wide/from16 v29, v10

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 216
    .local v20, "tend":D
    :goto_2
    const/16 v28, 0x0

    move/from16 v24, v28

    .line 217
    .local v24, "hitLo":Z
    const/16 v28, 0x0

    move/from16 v25, v28

    .line 219
    .local v25, "hitHi":Z
    :goto_3
    move-object/from16 v28, v2

    move-wide/from16 v29, v16

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 220
    .local v26, "x":D
    move-wide/from16 v28, v26

    move-wide/from16 v30, v4

    cmpg-double v28, v28, v30

    if-gez v28, :cond_8

    .line 221
    move/from16 v28, v25

    if-nez v28, :cond_2

    move-wide/from16 v28, v26

    move-wide/from16 v30, v6

    cmpl-double v28, v28, v30

    if-lez v28, :cond_6

    .line 222
    :cond_2
    const/16 v28, 0x1

    move/from16 v2, v28

    goto/16 :goto_0

    .line 203
    .end local v16    # "tstart":D
    .end local v18    # "ystart":D
    .end local v20    # "tend":D
    .end local v22    # "yend":D
    .end local v24    # "hitLo":Z
    .end local v25    # "hitHi":Z
    .end local v26    # "x":D
    :cond_3
    move-wide/from16 v28, v12

    move-wide/from16 v30, v10

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_4

    .line 204
    const/16 v28, 0x0

    move/from16 v2, v28

    goto/16 :goto_0

    .line 206
    :cond_4
    move-wide/from16 v28, v12

    move-wide/from16 v18, v28

    .line 207
    .restart local v18    # "ystart":D
    const-wide/16 v28, 0x0

    move-wide/from16 v16, v28

    .restart local v16    # "tstart":D
    goto :goto_1

    .line 213
    :cond_5
    move-wide/from16 v28, v14

    move-wide/from16 v22, v28

    .line 214
    .restart local v22    # "yend":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v28

    .restart local v20    # "tend":D
    goto :goto_2

    .line 224
    .restart local v24    # "hitLo":Z
    .restart local v25    # "hitHi":Z
    .restart local v26    # "x":D
    :cond_6
    const/16 v28, 0x1

    move/from16 v24, v28

    .line 231
    :goto_4
    move-wide/from16 v28, v16

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_a

    .line 232
    .line 236
    move/from16 v28, v24

    if-eqz v28, :cond_7

    .line 237
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v31, v22

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/geom/Curve;->direction:I

    move/from16 v33, v0

    invoke-virtual/range {v28 .. v33}, Lcom/sun/javafx/geom/Crossings;->record(DDI)V

    .line 239
    :cond_7
    const/16 v28, 0x0

    move/from16 v2, v28

    goto/16 :goto_0

    .line 226
    :cond_8
    move/from16 v28, v24

    if-eqz v28, :cond_9

    .line 227
    const/16 v28, 0x1

    move/from16 v2, v28

    goto/16 :goto_0

    .line 229
    :cond_9
    const/16 v28, 0x1

    move/from16 v25, v28

    goto :goto_4

    .line 234
    :cond_a
    move-object/from16 v28, v2

    move-wide/from16 v29, v16

    move-wide/from16 v31, v20

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/Curve;->nextVertical(DD)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 235
    goto/16 :goto_3
.end method

.method public compareTo(Lcom/sun/javafx/geom/Curve;[D)I
    .locals 73

    .prologue
    .line 256
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v1, p1

    .local v1, "that":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v2, p2

    .local v2, "yrange":[D
    move-object/from16 v40, v2

    const/16 v41, 0x0

    aget-wide v40, v40, v41

    move-wide/from16 v3, v40

    .line 257
    .local v3, "y0":D
    move-object/from16 v40, v2

    const/16 v41, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v5, v40

    .line 258
    .local v5, "y1":D
    move-wide/from16 v40, v5

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-object/from16 v42, v1

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v5, v40

    .line 259
    move-wide/from16 v40, v5

    move-object/from16 v42, v2

    const/16 v43, 0x0

    aget-wide v42, v42, v43

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_0

    .line 260
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "this == "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "that == "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v1

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "target range = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v2

    const/16 v43, 0x0

    aget-wide v42, v42, v43

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v2

    const/16 v43, 0x1

    aget-wide v42, v42, v43

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    new-instance v40, Ljava/lang/InternalError;

    move-object/from16 v71, v40

    move-object/from16 v40, v71

    move-object/from16 v41, v71

    new-instance v42, Ljava/lang/StringBuilder;

    move-object/from16 v71, v42

    move-object/from16 v42, v71

    move-object/from16 v43, v71

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "backstepping from "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v43, v2

    const/16 v44, 0x0

    aget-wide v43, v43, v44

    invoke-virtual/range {v42 .. v44}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " to "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-wide/from16 v43, v5

    invoke-virtual/range {v42 .. v44}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v40

    .line 265
    :cond_0
    move-object/from16 v40, v2

    const/16 v41, 0x1

    move-wide/from16 v42, v5

    aput-wide v42, v40, v41

    .line 266
    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/Curve;->getXMax()D

    move-result-wide v40

    move-object/from16 v42, v1

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/Curve;->getXMin()D

    move-result-wide v42

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_2

    .line 267
    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/Curve;->getXMin()D

    move-result-wide v40

    move-object/from16 v42, v1

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/Curve;->getXMax()D

    move-result-wide v42

    cmpl-double v40, v40, v42

    if-nez v40, :cond_1

    .line 268
    const/16 v40, 0x0

    move/from16 v0, v40

    .line 410
    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    :goto_0
    return v0

    .line 270
    .restart local v0    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_1
    const/16 v40, -0x1

    move/from16 v0, v40

    goto :goto_0

    .line 272
    :cond_2
    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/Curve;->getXMin()D

    move-result-wide v40

    move-object/from16 v42, v1

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/Curve;->getXMax()D

    move-result-wide v42

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_3

    .line 273
    const/16 v40, 0x1

    move/from16 v0, v40

    goto :goto_0

    .line 281
    :cond_3
    move-object/from16 v40, v0

    move-wide/from16 v41, v3

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v40

    move-wide/from16 v7, v40

    .line 282
    .local v7, "s0":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v7

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v9, v40

    .line 283
    .local v9, "ys0":D
    move-wide/from16 v40, v9

    move-wide/from16 v42, v3

    cmpg-double v40, v40, v42

    if-gez v40, :cond_4

    .line 284
    move-object/from16 v40, v0

    move-wide/from16 v41, v7

    move-wide/from16 v43, v3

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->refineTforY(DD)D

    move-result-wide v40

    move-wide/from16 v7, v40

    .line 285
    move-object/from16 v40, v0

    move-wide/from16 v41, v7

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v9, v40

    .line 287
    :cond_4
    move-object/from16 v40, v0

    move-wide/from16 v41, v5

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v40

    move-wide/from16 v11, v40

    .line 288
    .local v11, "s1":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v11

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v42, v3

    cmpg-double v40, v40, v42

    if-gez v40, :cond_5

    .line 289
    move-object/from16 v40, v0

    move-wide/from16 v41, v11

    move-wide/from16 v43, v3

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->refineTforY(DD)D

    move-result-wide v40

    move-wide/from16 v11, v40

    .line 292
    :cond_5
    move-object/from16 v40, v1

    move-wide/from16 v41, v3

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v40

    move-wide/from16 v13, v40

    .line 293
    .local v13, "t0":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v13

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v15, v40

    .line 294
    .local v15, "yt0":D
    move-wide/from16 v40, v15

    move-wide/from16 v42, v3

    cmpg-double v40, v40, v42

    if-gez v40, :cond_6

    .line 295
    move-object/from16 v40, v1

    move-wide/from16 v41, v13

    move-wide/from16 v43, v3

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->refineTforY(DD)D

    move-result-wide v40

    move-wide/from16 v13, v40

    .line 296
    move-object/from16 v40, v1

    move-wide/from16 v41, v13

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v15, v40

    .line 298
    :cond_6
    move-object/from16 v40, v1

    move-wide/from16 v41, v5

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->TforY(D)D

    move-result-wide v40

    move-wide/from16 v17, v40

    .line 299
    .local v17, "t1":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v17

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v42, v3

    cmpg-double v40, v40, v42

    if-gez v40, :cond_7

    .line 300
    move-object/from16 v40, v1

    move-wide/from16 v41, v17

    move-wide/from16 v43, v3

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->refineTforY(DD)D

    move-result-wide v40

    move-wide/from16 v17, v40

    .line 303
    :cond_7
    move-object/from16 v40, v0

    move-wide/from16 v41, v7

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v40

    move-wide/from16 v19, v40

    .line 304
    .local v19, "xs0":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v13

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v40

    move-wide/from16 v21, v40

    .line 305
    .local v21, "xt0":D
    move-wide/from16 v40, v3

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    move-wide/from16 v42, v5

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->abs(D)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v23, v40

    .line 306
    .local v23, "scale":D
    move-wide/from16 v40, v23

    const-wide v42, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double v40, v40, v42

    const-wide v42, 0x1a56e1fc2f8f359L    # 1.0E-300

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v25, v40

    .line 307
    .local v25, "ymin":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v19

    move-wide/from16 v43, v21

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->fairlyClose(DD)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 308
    move-wide/from16 v40, v25

    move-wide/from16 v27, v40

    .line 309
    .local v27, "bump":D
    move-wide/from16 v40, v25

    const-wide v42, 0x42a2309ce5400000L    # 1.0E13

    mul-double v40, v40, v42

    move-wide/from16 v42, v5

    move-wide/from16 v44, v3

    sub-double v42, v42, v44

    const-wide v44, 0x3fb999999999999aL    # 0.1

    mul-double v42, v42, v44

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v29, v40

    .line 310
    .local v29, "maxbump":D
    move-wide/from16 v40, v3

    move-wide/from16 v42, v27

    add-double v40, v40, v42

    move-wide/from16 v31, v40

    .line 311
    .local v31, "y":D
    :goto_1
    move-wide/from16 v40, v31

    move-wide/from16 v42, v5

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_a

    .line 312
    move-object/from16 v40, v0

    move-object/from16 v41, v0

    move-wide/from16 v42, v31

    invoke-virtual/range {v41 .. v43}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v41

    move-object/from16 v43, v1

    move-wide/from16 v44, v31

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v43

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->fairlyClose(DD)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 313
    move-wide/from16 v40, v27

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v40, v40, v42

    move-wide/from16 v71, v40

    move-wide/from16 v40, v71

    move-wide/from16 v42, v71

    move-wide/from16 v27, v42

    move-wide/from16 v42, v29

    cmpl-double v40, v40, v42

    if-lez v40, :cond_8

    .line 314
    move-wide/from16 v40, v29

    move-wide/from16 v27, v40

    .line 330
    :cond_8
    move-wide/from16 v40, v31

    move-wide/from16 v42, v27

    add-double v40, v40, v42

    move-wide/from16 v31, v40

    goto :goto_1

    .line 317
    :cond_9
    move-wide/from16 v40, v31

    move-wide/from16 v42, v27

    sub-double v40, v40, v42

    move-wide/from16 v31, v40

    .line 319
    :goto_2
    move-wide/from16 v40, v27

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    move-wide/from16 v27, v40

    .line 320
    move-wide/from16 v40, v31

    move-wide/from16 v42, v27

    add-double v40, v40, v42

    move-wide/from16 v33, v40

    .line 321
    .local v33, "newy":D
    move-wide/from16 v40, v33

    move-wide/from16 v42, v31

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_c

    .line 322
    .line 332
    .end local v33    # "newy":D
    :cond_a
    move-wide/from16 v40, v31

    move-wide/from16 v42, v3

    cmpl-double v40, v40, v42

    if-lez v40, :cond_e

    .line 333
    move-wide/from16 v40, v31

    move-wide/from16 v42, v5

    cmpg-double v40, v40, v42

    if-gez v40, :cond_b

    .line 334
    move-object/from16 v40, v2

    const/16 v41, 0x1

    move-wide/from16 v42, v31

    aput-wide v42, v40, v41

    .line 336
    :cond_b
    const/16 v40, 0x0

    move/from16 v0, v40

    goto/16 :goto_0

    .line 324
    .restart local v33    # "newy":D
    :cond_c
    move-object/from16 v40, v0

    move-object/from16 v41, v0

    move-wide/from16 v42, v33

    invoke-virtual/range {v41 .. v43}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v41

    move-object/from16 v43, v1

    move-wide/from16 v44, v33

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v43

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->fairlyClose(DD)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 325
    move-wide/from16 v40, v33

    move-wide/from16 v31, v40

    .line 327
    :cond_d
    goto :goto_2

    .line 340
    .end local v27    # "bump":D
    .end local v29    # "maxbump":D
    .end local v31    # "y":D
    .end local v33    # "newy":D
    :cond_e
    move-wide/from16 v40, v25

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_f

    .line 341
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ymin = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v25

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :cond_f
    :goto_3
    move-wide/from16 v40, v7

    move-wide/from16 v42, v11

    cmpg-double v40, v40, v42

    if-gez v40, :cond_10

    move-wide/from16 v40, v13

    move-wide/from16 v42, v17

    cmpg-double v40, v40, v42

    if-gez v40, :cond_10

    .line 348
    move-object/from16 v40, v0

    move-wide/from16 v41, v7

    move-wide/from16 v43, v11

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->nextVertical(DD)D

    move-result-wide v40

    move-wide/from16 v27, v40

    .line 349
    .local v27, "sh":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v27

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v40

    move-wide/from16 v29, v40

    .line 350
    .local v29, "xsh":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v27

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v31, v40

    .line 351
    .local v31, "ysh":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v13

    move-wide/from16 v43, v17

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/Curve;->nextVertical(DD)D

    move-result-wide v40

    move-wide/from16 v33, v40

    .line 352
    .local v33, "th":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v33

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v40

    move-wide/from16 v35, v40

    .line 353
    .local v35, "xth":D
    move-object/from16 v40, v1

    move-wide/from16 v41, v33

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v40

    move-wide/from16 v37, v40

    .line 359
    .local v37, "yth":D
    move-object/from16 v40, v0

    move-object/from16 v41, v1

    move-object/from16 v42, v2

    move-wide/from16 v43, v25

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-wide/from16 v47, v7

    move-wide/from16 v49, v19

    move-wide/from16 v51, v9

    move-wide/from16 v53, v27

    move-wide/from16 v55, v29

    move-wide/from16 v57, v31

    move-wide/from16 v59, v13

    move-wide/from16 v61, v21

    move-wide/from16 v63, v15

    move-wide/from16 v65, v33

    move-wide/from16 v67, v35

    move-wide/from16 v69, v37

    :try_start_0
    invoke-virtual/range {v40 .. v70}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v40

    if-eqz v40, :cond_11

    .line 362
    .line 394
    .end local v27    # "sh":D
    .end local v29    # "xsh":D
    .end local v31    # "ysh":D
    .end local v33    # "th":D
    .end local v35    # "xth":D
    .end local v37    # "yth":D
    :cond_10
    :goto_4
    move-object/from16 v40, v2

    const/16 v41, 0x0

    aget-wide v40, v40, v41

    move-object/from16 v42, v2

    const/16 v43, 0x1

    aget-wide v42, v42, v43

    add-double v40, v40, v42

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    move-wide/from16 v27, v40

    .line 410
    .local v27, "ymid":D
    move-object/from16 v40, v0

    move-wide/from16 v41, v27

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v40

    move-object/from16 v42, v1

    move-wide/from16 v43, v27

    invoke-virtual/range {v42 .. v44}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Lcom/sun/javafx/geom/Curve;->orderof(DD)I

    move-result v40

    move/from16 v0, v40

    goto/16 :goto_0

    .line 371
    .line 372
    .local v27, "sh":D
    .restart local v29    # "xsh":D
    .restart local v31    # "ysh":D
    .restart local v33    # "th":D
    .restart local v35    # "xth":D
    .restart local v37    # "yth":D
    :cond_11
    move-wide/from16 v40, v31

    move-wide/from16 v42, v37

    cmpg-double v40, v40, v42

    if-gez v40, :cond_13

    .line 373
    move-wide/from16 v40, v31

    move-object/from16 v42, v2

    const/16 v43, 0x0

    aget-wide v42, v42, v43

    cmpl-double v40, v40, v42

    if-lez v40, :cond_12

    .line 374
    move-wide/from16 v40, v31

    move-object/from16 v42, v2

    const/16 v43, 0x1

    aget-wide v42, v42, v43

    cmpg-double v40, v40, v42

    if-gez v40, :cond_10

    .line 375
    move-object/from16 v40, v2

    const/16 v41, 0x1

    move-wide/from16 v42, v31

    aput-wide v42, v40, v41

    goto :goto_4

    .line 364
    :catch_0
    move-exception v40

    move-object/from16 v39, v40

    .line 365
    .local v39, "t":Ljava/lang/Throwable;
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v39

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "y range was "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v2

    const/16 v43, 0x0

    aget-wide v42, v42, v43

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v42, v2

    const/16 v43, 0x1

    aget-wide v42, v42, v43

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "s y range is "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v9

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v31

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "t y range is "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v15

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v37

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v71, v41

    move-object/from16 v41, v71

    move-object/from16 v42, v71

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ymin is "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-wide/from16 v42, v25

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const/16 v40, 0x0

    move/from16 v0, v40

    goto/16 :goto_0

    .line 379
    .end local v39    # "t":Ljava/lang/Throwable;
    :cond_12
    move-wide/from16 v40, v27

    move-wide/from16 v7, v40

    .line 380
    move-wide/from16 v40, v29

    move-wide/from16 v19, v40

    .line 381
    move-wide/from16 v40, v31

    move-wide/from16 v9, v40

    .line 393
    :goto_5
    goto/16 :goto_3

    .line 383
    :cond_13
    move-wide/from16 v40, v37

    move-object/from16 v42, v2

    const/16 v43, 0x0

    aget-wide v42, v42, v43

    cmpl-double v40, v40, v42

    if-lez v40, :cond_14

    .line 384
    move-wide/from16 v40, v37

    move-object/from16 v42, v2

    const/16 v43, 0x1

    aget-wide v42, v42, v43

    cmpg-double v40, v40, v42

    if-gez v40, :cond_10

    .line 385
    move-object/from16 v40, v2

    const/16 v41, 0x1

    move-wide/from16 v42, v37

    aput-wide v42, v40, v41

    goto/16 :goto_4

    .line 389
    :cond_14
    move-wide/from16 v40, v33

    move-wide/from16 v13, v40

    .line 390
    move-wide/from16 v40, v35

    move-wide/from16 v21, v40

    .line 391
    move-wide/from16 v40, v37

    move-wide/from16 v15, v40

    goto :goto_5
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    const-string v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    return-object v0
.end method

.method public crossingsFor(DD)I
    .locals 11

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Curve;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 178
    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getXMax()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getXMin()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-object v8, v1

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 179
    :cond_0
    const/4 v6, 0x1

    move v1, v6

    .line 182
    .end local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public abstract dXforT(DI)D
.end method

.method public abstract dYforT(DI)D
.end method

.method public abstract enlarge(Lcom/sun/javafx/geom/RectBounds;)V
.end method

.method public fairlyClose(DD)Z
    .locals 13

    .prologue
    .line 582
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Curve;
    move-wide v2, p1

    .local v2, "v1":D
    move-wide/from16 v4, p3

    .local v4, "v2":D
    move-wide v6, v2

    move-wide v8, v4

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v8, v2

    .line 583
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Curve;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z
    .locals 87

    .prologue
    .line 435
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v2, p1

    .local v2, "that":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v3, p2

    .local v3, "yrange":[D
    move-wide/from16 v4, p3

    .local v4, "ymin":D
    move/from16 v6, p5

    .local v6, "slevel":I
    move/from16 v7, p6

    .local v7, "tlevel":I
    move-wide/from16 v8, p7

    .local v8, "s0":D
    move-wide/from16 v10, p9

    .local v10, "xs0":D
    move-wide/from16 v12, p11

    .local v12, "ys0":D
    move-wide/from16 v14, p13

    .local v14, "s1":D
    move-wide/from16 v16, p15

    .local v16, "xs1":D
    move-wide/from16 v18, p17

    .local v18, "ys1":D
    move-wide/from16 v20, p19

    .local v20, "t0":D
    move-wide/from16 v22, p21

    .local v22, "xt0":D
    move-wide/from16 v24, p23

    .local v24, "yt0":D
    move-wide/from16 v26, p25

    .local v26, "t1":D
    move-wide/from16 v28, p27

    .local v28, "xt1":D
    move-wide/from16 v30, p29

    .local v30, "yt1":D
    move-wide/from16 v54, v12

    move-wide/from16 v56, v30

    cmpl-double v54, v54, v56

    if-gtz v54, :cond_0

    move-wide/from16 v54, v24

    move-wide/from16 v56, v18

    cmpl-double v54, v54, v56

    if-lez v54, :cond_1

    .line 436
    :cond_0
    const/16 v54, 0x0

    move/from16 v1, v54

    .line 560
    .end local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :goto_0
    return v1

    .line 438
    .restart local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_1
    move-wide/from16 v54, v10

    move-wide/from16 v56, v16

    invoke-static/range {v54 .. v57}, Ljava/lang/Math;->min(DD)D

    move-result-wide v54

    move-wide/from16 v56, v22

    move-wide/from16 v58, v28

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->max(DD)D

    move-result-wide v56

    cmpl-double v54, v54, v56

    if-gtz v54, :cond_2

    move-wide/from16 v54, v10

    move-wide/from16 v56, v16

    .line 439
    invoke-static/range {v54 .. v57}, Ljava/lang/Math;->max(DD)D

    move-result-wide v54

    move-wide/from16 v56, v22

    move-wide/from16 v58, v28

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->min(DD)D

    move-result-wide v56

    cmpg-double v54, v54, v56

    if-gez v54, :cond_3

    .line 441
    :cond_2
    const/16 v54, 0x0

    move/from16 v1, v54

    goto :goto_0

    .line 447
    :cond_3
    move-wide/from16 v54, v14

    move-wide/from16 v56, v8

    sub-double v54, v54, v56

    const-wide v56, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v54, v54, v56

    if-lez v54, :cond_e

    .line 448
    move-wide/from16 v54, v8

    move-wide/from16 v56, v14

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    move-wide/from16 v32, v54

    .line 449
    .local v32, "s":D
    move-object/from16 v54, v1

    move-wide/from16 v55, v32

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v54

    move-wide/from16 v34, v54

    .line 450
    .local v34, "xs":D
    move-object/from16 v54, v1

    move-wide/from16 v55, v32

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v54

    move-wide/from16 v36, v54

    .line 451
    .local v36, "ys":D
    move-wide/from16 v54, v32

    move-wide/from16 v56, v8

    cmpl-double v54, v54, v56

    if-eqz v54, :cond_4

    move-wide/from16 v54, v32

    move-wide/from16 v56, v14

    cmpl-double v54, v54, v56

    if-nez v54, :cond_5

    .line 452
    :cond_4
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "s0 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v8

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "s1 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v14

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    new-instance v54, Ljava/lang/InternalError;

    move-object/from16 v85, v54

    move-object/from16 v54, v85

    move-object/from16 v55, v85

    const-string v56, "no s progress!"

    invoke-direct/range {v55 .. v56}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v54

    .line 456
    :cond_5
    move-wide/from16 v54, v26

    move-wide/from16 v56, v20

    sub-double v54, v54, v56

    const-wide v56, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v54, v54, v56

    if-lez v54, :cond_c

    .line 457
    move-wide/from16 v54, v20

    move-wide/from16 v56, v26

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    move-wide/from16 v38, v54

    .line 458
    .local v38, "t":D
    move-object/from16 v54, v2

    move-wide/from16 v55, v38

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v54

    move-wide/from16 v40, v54

    .line 459
    .local v40, "xt":D
    move-object/from16 v54, v2

    move-wide/from16 v55, v38

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v54

    move-wide/from16 v42, v54

    .line 460
    .local v42, "yt":D
    move-wide/from16 v54, v38

    move-wide/from16 v56, v20

    cmpl-double v54, v54, v56

    if-eqz v54, :cond_6

    move-wide/from16 v54, v38

    move-wide/from16 v56, v26

    cmpl-double v54, v54, v56

    if-nez v54, :cond_7

    .line 461
    :cond_6
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "t0 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v20

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "t1 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v26

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    new-instance v54, Ljava/lang/InternalError;

    move-object/from16 v85, v54

    move-object/from16 v54, v85

    move-object/from16 v55, v85

    const-string v56, "no t progress!"

    invoke-direct/range {v55 .. v56}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v54

    .line 465
    :cond_7
    move-wide/from16 v54, v36

    move-wide/from16 v56, v24

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_8

    move-wide/from16 v54, v42

    move-wide/from16 v56, v12

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_8

    .line 466
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v8

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v32

    move-wide/from16 v69, v34

    move-wide/from16 v71, v36

    move-wide/from16 v73, v20

    move-wide/from16 v75, v22

    move-wide/from16 v77, v24

    move-wide/from16 v79, v38

    move-wide/from16 v81, v40

    move-wide/from16 v83, v42

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_8

    .line 469
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 472
    :cond_8
    move-wide/from16 v54, v36

    move-wide/from16 v56, v42

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_9

    .line 473
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v8

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v32

    move-wide/from16 v69, v34

    move-wide/from16 v71, v36

    move-wide/from16 v73, v38

    move-wide/from16 v75, v40

    move-wide/from16 v77, v42

    move-wide/from16 v79, v26

    move-wide/from16 v81, v28

    move-wide/from16 v83, v30

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_9

    .line 476
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 479
    :cond_9
    move-wide/from16 v54, v42

    move-wide/from16 v56, v36

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_a

    .line 480
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v32

    move-wide/from16 v63, v34

    move-wide/from16 v65, v36

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v71, v18

    move-wide/from16 v73, v20

    move-wide/from16 v75, v22

    move-wide/from16 v77, v24

    move-wide/from16 v79, v38

    move-wide/from16 v81, v40

    move-wide/from16 v83, v42

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 483
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 486
    :cond_a
    move-wide/from16 v54, v18

    move-wide/from16 v56, v42

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_b

    move-wide/from16 v54, v30

    move-wide/from16 v56, v36

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_b

    .line 487
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v32

    move-wide/from16 v63, v34

    move-wide/from16 v65, v36

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v71, v18

    move-wide/from16 v73, v38

    move-wide/from16 v75, v40

    move-wide/from16 v77, v42

    move-wide/from16 v79, v26

    move-wide/from16 v81, v28

    move-wide/from16 v83, v30

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_b

    .line 490
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 493
    .line 509
    .line 560
    .end local v32    # "s":D
    .end local v34    # "xs":D
    .end local v36    # "ys":D
    .end local v38    # "t":D
    .end local v40    # "xt":D
    .end local v42    # "yt":D
    :cond_b
    :goto_1
    const/16 v54, 0x0

    move/from16 v1, v54

    goto/16 :goto_0

    .line 494
    .restart local v32    # "s":D
    .restart local v34    # "xs":D
    .restart local v36    # "ys":D
    :cond_c
    move-wide/from16 v54, v36

    move-wide/from16 v56, v24

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_d

    .line 495
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    move-wide/from16 v61, v8

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v32

    move-wide/from16 v69, v34

    move-wide/from16 v71, v36

    move-wide/from16 v73, v20

    move-wide/from16 v75, v22

    move-wide/from16 v77, v24

    move-wide/from16 v79, v26

    move-wide/from16 v81, v28

    move-wide/from16 v83, v30

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_d

    .line 498
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 501
    :cond_d
    move-wide/from16 v54, v30

    move-wide/from16 v56, v36

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_b

    .line 502
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    const/16 v60, 0x1

    add-int/lit8 v59, v59, 0x1

    move/from16 v60, v7

    move-wide/from16 v61, v32

    move-wide/from16 v63, v34

    move-wide/from16 v65, v36

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v71, v18

    move-wide/from16 v73, v20

    move-wide/from16 v75, v22

    move-wide/from16 v77, v24

    move-wide/from16 v79, v26

    move-wide/from16 v81, v28

    move-wide/from16 v83, v30

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_b

    .line 505
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 509
    .end local v32    # "s":D
    .end local v34    # "xs":D
    .end local v36    # "ys":D
    :cond_e
    move-wide/from16 v54, v26

    move-wide/from16 v56, v20

    sub-double v54, v54, v56

    const-wide v56, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v54, v54, v56

    if-lez v54, :cond_13

    .line 510
    move-wide/from16 v54, v20

    move-wide/from16 v56, v26

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    move-wide/from16 v32, v54

    .line 511
    .local v32, "t":D
    move-object/from16 v54, v2

    move-wide/from16 v55, v32

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->XforT(D)D

    move-result-wide v54

    move-wide/from16 v34, v54

    .line 512
    .local v34, "xt":D
    move-object/from16 v54, v2

    move-wide/from16 v55, v32

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v54

    move-wide/from16 v36, v54

    .line 513
    .local v36, "yt":D
    move-wide/from16 v54, v32

    move-wide/from16 v56, v20

    cmpl-double v54, v54, v56

    if-eqz v54, :cond_f

    move-wide/from16 v54, v32

    move-wide/from16 v56, v26

    cmpl-double v54, v54, v56

    if-nez v54, :cond_10

    .line 514
    :cond_f
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "t0 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v20

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    move-object/from16 v85, v55

    move-object/from16 v55, v85

    move-object/from16 v56, v85

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "t1 = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-wide/from16 v56, v26

    invoke-virtual/range {v55 .. v57}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 516
    new-instance v54, Ljava/lang/InternalError;

    move-object/from16 v85, v54

    move-object/from16 v54, v85

    move-object/from16 v55, v85

    const-string v56, "no t progress!"

    invoke-direct/range {v55 .. v56}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v54

    .line 518
    :cond_10
    move-wide/from16 v54, v36

    move-wide/from16 v56, v12

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_11

    .line 519
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v8

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v71, v18

    move-wide/from16 v73, v20

    move-wide/from16 v75, v22

    move-wide/from16 v77, v24

    move-wide/from16 v79, v32

    move-wide/from16 v81, v34

    move-wide/from16 v83, v36

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_11

    .line 522
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 525
    :cond_11
    move-wide/from16 v54, v18

    move-wide/from16 v56, v36

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_12

    .line 526
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-wide/from16 v57, v4

    move/from16 v59, v6

    move/from16 v60, v7

    const/16 v61, 0x1

    add-int/lit8 v60, v60, 0x1

    move-wide/from16 v61, v8

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v14

    move-wide/from16 v69, v16

    move-wide/from16 v71, v18

    move-wide/from16 v73, v32

    move-wide/from16 v75, v34

    move-wide/from16 v77, v36

    move-wide/from16 v79, v26

    move-wide/from16 v81, v28

    move-wide/from16 v83, v30

    invoke-virtual/range {v54 .. v84}, Lcom/sun/javafx/geom/Curve;->findIntersect(Lcom/sun/javafx/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v54

    if-eqz v54, :cond_12

    .line 529
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 532
    :cond_12
    goto/16 :goto_1

    .line 534
    .end local v32    # "t":D
    .end local v34    # "xt":D
    .end local v36    # "yt":D
    :cond_13
    move-wide/from16 v54, v16

    move-wide/from16 v56, v10

    sub-double v54, v54, v56

    move-wide/from16 v32, v54

    .line 535
    .local v32, "xlk":D
    move-wide/from16 v54, v18

    move-wide/from16 v56, v12

    sub-double v54, v54, v56

    move-wide/from16 v34, v54

    .line 536
    .local v34, "ylk":D
    move-wide/from16 v54, v28

    move-wide/from16 v56, v22

    sub-double v54, v54, v56

    move-wide/from16 v36, v54

    .line 537
    .local v36, "xnm":D
    move-wide/from16 v54, v30

    move-wide/from16 v56, v24

    sub-double v54, v54, v56

    move-wide/from16 v38, v54

    .line 538
    .local v38, "ynm":D
    move-wide/from16 v54, v22

    move-wide/from16 v56, v10

    sub-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 539
    .local v40, "xmk":D
    move-wide/from16 v54, v24

    move-wide/from16 v56, v12

    sub-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 540
    .local v42, "ymk":D
    move-wide/from16 v54, v36

    move-wide/from16 v56, v34

    mul-double v54, v54, v56

    move-wide/from16 v56, v38

    move-wide/from16 v58, v32

    mul-double v56, v56, v58

    sub-double v54, v54, v56

    move-wide/from16 v44, v54

    .line 541
    .local v44, "det":D
    move-wide/from16 v54, v44

    const-wide/16 v56, 0x0

    cmpl-double v54, v54, v56

    if-eqz v54, :cond_b

    .line 542
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v56, v44

    div-double v54, v54, v56

    move-wide/from16 v46, v54

    .line 543
    .local v46, "detinv":D
    move-wide/from16 v54, v36

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v56, v38

    move-wide/from16 v58, v40

    mul-double v56, v56, v58

    sub-double v54, v54, v56

    move-wide/from16 v56, v46

    mul-double v54, v54, v56

    move-wide/from16 v48, v54

    .line 544
    .local v48, "s":D
    move-wide/from16 v54, v32

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v56, v34

    move-wide/from16 v58, v40

    mul-double v56, v56, v58

    sub-double v54, v54, v56

    move-wide/from16 v56, v46

    mul-double v54, v54, v56

    move-wide/from16 v50, v54

    .line 545
    .local v50, "t":D
    move-wide/from16 v54, v48

    const-wide/16 v56, 0x0

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_b

    move-wide/from16 v54, v48

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_b

    move-wide/from16 v54, v50

    const-wide/16 v56, 0x0

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_b

    move-wide/from16 v54, v50

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_b

    .line 546
    move-wide/from16 v54, v8

    move-wide/from16 v56, v48

    move-wide/from16 v58, v14

    move-wide/from16 v60, v8

    sub-double v58, v58, v60

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v48, v54

    .line 547
    move-wide/from16 v54, v20

    move-wide/from16 v56, v50

    move-wide/from16 v58, v26

    move-wide/from16 v60, v20

    sub-double v58, v58, v60

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v50, v54

    .line 548
    move-wide/from16 v54, v48

    const-wide/16 v56, 0x0

    cmpg-double v54, v54, v56

    if-ltz v54, :cond_14

    move-wide/from16 v54, v48

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    cmpl-double v54, v54, v56

    if-gtz v54, :cond_14

    move-wide/from16 v54, v50

    const-wide/16 v56, 0x0

    cmpg-double v54, v54, v56

    if-ltz v54, :cond_14

    move-wide/from16 v54, v50

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    cmpl-double v54, v54, v56

    if-lez v54, :cond_15

    .line 549
    :cond_14
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v55, "Uh oh!"

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    :cond_15
    move-object/from16 v54, v1

    move-wide/from16 v55, v48

    invoke-virtual/range {v54 .. v56}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v54

    move-object/from16 v56, v2

    move-wide/from16 v57, v50

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v56

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    move-wide/from16 v52, v54

    .line 552
    .local v52, "y":D
    move-wide/from16 v54, v52

    move-object/from16 v56, v3

    const/16 v57, 0x1

    aget-wide v56, v56, v57

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_b

    move-wide/from16 v54, v52

    move-object/from16 v56, v3

    const/16 v57, 0x0

    aget-wide v56, v56, v57

    cmpl-double v54, v54, v56

    if-lez v54, :cond_b

    .line 553
    move-object/from16 v54, v3

    const/16 v55, 0x1

    move-wide/from16 v56, v52

    aput-wide v56, v54, v55

    .line 554
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0
.end method

.method public final getDirection()I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Curve;->direction:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    return v0
.end method

.method public abstract getOrder()I
.end method

.method public abstract getReversedCurve()Lcom/sun/javafx/geom/Curve;
.end method

.method public abstract getSegment([F)I
.end method

.method public getSubCurve(DD)Lcom/sun/javafx/geom/Curve;
    .locals 11

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    move-wide v1, p1

    .local v1, "ystart":D
    move-wide v3, p3

    .local v3, "yend":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Curve;->direction:I

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/geom/Curve;->getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    return-object v0
.end method

.method public abstract getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
.end method

.method public final getWithDirection(I)Lcom/sun/javafx/geom/Curve;
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    move v1, p1

    .local v1, "direction":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Curve;->direction:I

    move v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getReversedCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getX0()D
.end method

.method public abstract getX1()D
.end method

.method public abstract getXBot()D
.end method

.method public abstract getXMax()D
.end method

.method public abstract getXMin()D
.end method

.method public abstract getXTop()D
.end method

.method public abstract getY0()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getYBot()D
.end method

.method public abstract getYTop()D
.end method

.method public abstract nextVertical(DD)D
.end method

.method public refineTforY(DD)D
    .locals 17

    .prologue
    .line 564
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Curve;
    move-wide/from16 v2, p1

    .local v2, "t0":D
    move-wide/from16 v4, p3

    .local v4, "y0":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v6, v12

    .line 566
    .local v6, "t1":D
    :goto_0
    move-wide v12, v2

    move-wide v14, v6

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 567
    .local v8, "th":D
    move-wide v12, v8

    move-wide v14, v2

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    move-wide v12, v8

    move-wide v14, v6

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 568
    :cond_0
    move-wide v12, v6

    move-wide v1, v12

    .line 576
    .end local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :goto_1
    return-wide v1

    .line 570
    .restart local v1    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_1
    move-object v12, v1

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Curve;->YforT(D)D

    move-result-wide v12

    move-wide v10, v12

    .line 571
    .local v10, "y":D
    move-wide v12, v10

    move-wide v14, v4

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 572
    move-wide v12, v8

    move-wide v2, v12

    .line 578
    :goto_2
    goto :goto_0

    .line 573
    :cond_2
    move-wide v12, v10

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_3

    .line 574
    move-wide v12, v8

    move-wide v6, v12

    goto :goto_2

    .line 576
    :cond_3
    move-wide v12, v6

    move-wide v1, v12

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Curve;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curve["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 140
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getX0()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getY0()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 142
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->controlPointString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 143
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getX1()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getY1()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "D"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Curve;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Curve;
    :cond_0
    const-string v2, "U"

    goto :goto_0
.end method

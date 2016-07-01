.class final Lcom/sun/javafx/geom/Order1;
.super Lcom/sun/javafx/geom/Curve;
.source "Order1.java"


# instance fields
.field private x0:D

.field private x1:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D


# direct methods
.method public constructor <init>(DDDDI)V
    .locals 15

    .prologue
    .line 40
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide/from16 v2, p1

    .local v2, "x0":D
    move-wide/from16 v4, p3

    .local v4, "y0":D
    move-wide/from16 v6, p5

    .local v6, "x1":D
    move-wide/from16 v8, p7

    .local v8, "y1":D
    move/from16 v10, p9

    .local v10, "direction":I
    move-object v11, v1

    move v12, v10

    invoke-direct {v11, v12}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    .line 41
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->x0:D

    .line 42
    move-object v11, v1

    move-wide v12, v4

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->y0:D

    .line 43
    move-object v11, v1

    move-wide v12, v6

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->x1:D

    .line 44
    move-object v11, v1

    move-wide v12, v8

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->y1:D

    .line 45
    move-wide v11, v2

    move-wide v13, v6

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 46
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->xmin:D

    .line 47
    move-object v11, v1

    move-wide v12, v6

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->xmax:D

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    move-object v11, v1

    move-wide v12, v6

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->xmin:D

    .line 50
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order1;->xmax:D

    goto :goto_0
.end method


# virtual methods
.method public TforY(D)D
    .locals 11

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v2, p1

    .local v2, "y":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y0:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 111
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 116
    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return-wide v1

    .line 113
    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y1:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 114
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v1, v4

    goto :goto_0

    .line 116
    :cond_1
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    move-wide v1, v4

    goto :goto_0
.end method

.method public XforT(D)D
    .locals 13

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->x1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->x0:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1
.end method

.method public XforY(D)D
    .locals 13

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v2, p1

    .local v2, "y":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->x1:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y0:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 100
    :cond_0
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide v1, v4

    .line 106
    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return-wide v1

    .line 102
    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_1
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y1:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 103
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide v1, v4

    goto :goto_0

    .line 106
    :cond_2
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->x1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->x0:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    goto :goto_0
.end method

.method public YforT(D)D
    .locals 13

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1
.end method

.method public accumulateCrossings(Lcom/sun/javafx/geom/Crossings;)Z
    .locals 26

    .prologue
    .line 155
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Order1;
    move-object/from16 v3, p1

    .local v3, "c":Lcom/sun/javafx/geom/Crossings;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Crossings;->getXLo()D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 156
    .local v4, "xlo":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Crossings;->getYLo()D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 157
    .local v6, "ylo":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Crossings;->getXHi()D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 158
    .local v8, "xhi":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Crossings;->getYHi()D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 159
    .local v10, "yhi":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmin:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v8

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_0

    .line 160
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 190
    .end local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return v2

    .line 163
    .restart local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v6

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 164
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v6

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_1

    .line 165
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 167
    :cond_1
    move-wide/from16 v20, v6

    move-wide/from16 v14, v20

    .line 168
    .local v14, "ystart":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v6

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/Order1;->XforY(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 176
    .local v12, "xstart":D
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v10

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    .line 177
    move-wide/from16 v20, v10

    move-wide/from16 v18, v20

    .line 178
    .local v18, "yend":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v10

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/Order1;->XforY(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 183
    .local v16, "xend":D
    :goto_2
    move-wide/from16 v20, v12

    move-wide/from16 v22, v8

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_5

    move-wide/from16 v20, v16

    move-wide/from16 v22, v8

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_5

    .line 184
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 170
    .end local v12    # "xstart":D
    .end local v14    # "ystart":D
    .end local v16    # "xend":D
    .end local v18    # "yend":D
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v10

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_3

    .line 171
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 173
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    move-wide/from16 v14, v20

    .line 174
    .restart local v14    # "ystart":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .restart local v12    # "xstart":D
    goto :goto_1

    .line 180
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-wide/from16 v18, v20

    .line 181
    .restart local v18    # "yend":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v20, v0

    move-wide/from16 v16, v20

    .restart local v16    # "xend":D
    goto :goto_2

    .line 186
    :cond_5
    move-wide/from16 v20, v12

    move-wide/from16 v22, v4

    cmpl-double v20, v20, v22

    if-gtz v20, :cond_6

    move-wide/from16 v20, v16

    move-wide/from16 v22, v4

    cmpl-double v20, v20, v22

    if-lez v20, :cond_7

    .line 187
    :cond_6
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    .line 189
    :cond_7
    move-object/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide/from16 v23, v18

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Order1;->direction:I

    move/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Lcom/sun/javafx/geom/Crossings;->record(DDI)V

    .line 190
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method public compareTo(Lcom/sun/javafx/geom/Curve;[D)I
    .locals 27

    .prologue
    .line 218
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Order1;
    move-object/from16 v3, p1

    .local v3, "other":Lcom/sun/javafx/geom/Curve;
    move-object/from16 v4, p2

    .local v4, "yrange":[D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/geom/Order1;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 219
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-super/range {v20 .. v22}, Lcom/sun/javafx/geom/Curve;->compareTo(Lcom/sun/javafx/geom/Curve;[D)I

    move-result v20

    move/from16 v2, v20

    .line 297
    .end local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return v2

    .line 221
    .restart local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object/from16 v20, v3

    check-cast v20, Lcom/sun/javafx/geom/Order1;

    move-object/from16 v5, v20

    .line 222
    .local v5, "c1":Lcom/sun/javafx/geom/Order1;
    move-object/from16 v20, v4

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    move-object/from16 v22, v4

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_1

    .line 223
    new-instance v20, Ljava/lang/InternalError;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "yrange already screwed up..."

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v20

    .line 225
    :cond_1
    move-object/from16 v20, v4

    const/16 v21, 0x1

    move-object/from16 v22, v4

    const/16 v23, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    aput-wide v22, v20, v21

    .line 226
    move-object/from16 v20, v4

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    move-object/from16 v22, v4

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_2

    .line 227
    new-instance v20, Ljava/lang/InternalError;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "backstepping from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v20

    .line 229
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmax:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmin:D

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_4

    .line 230
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmin:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmax:D

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_3

    const/16 v20, 0x0

    :goto_1
    move/from16 v2, v20

    goto/16 :goto_0

    :cond_3
    const/16 v20, -0x1

    goto :goto_1

    .line 232
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmin:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->xmax:D

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_5

    .line 233
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    .line 267
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v6, v20

    .line 268
    .local v6, "dxa":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 269
    .local v8, "dya":D
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 270
    .local v10, "dxb":D
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 271
    .local v12, "dyb":D
    move-wide/from16 v20, v10

    move-wide/from16 v22, v8

    mul-double v20, v20, v22

    move-wide/from16 v22, v6

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 273
    .local v14, "denom":D
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_8

    .line 274
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v22, v8

    mul-double v20, v20, v22

    move-wide/from16 v22, v12

    mul-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    move-wide/from16 v24, v8

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 277
    .local v18, "num":D
    move-wide/from16 v20, v18

    move-wide/from16 v22, v14

    div-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 278
    .local v16, "y":D
    move-wide/from16 v20, v16

    move-object/from16 v22, v4

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_6

    .line 281
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 291
    .line 297
    .end local v18    # "num":D
    :goto_2
    move-object/from16 v20, v2

    move-wide/from16 v21, v16

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/Order1;->XforY(D)D

    move-result-wide v20

    move-object/from16 v22, v5

    move-wide/from16 v23, v16

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/Order1;->XforY(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lcom/sun/javafx/geom/Order1;->orderof(DD)I

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 284
    .restart local v18    # "num":D
    :cond_6
    move-wide/from16 v20, v16

    move-object/from16 v22, v4

    const/16 v23, 0x1

    aget-wide v22, v22, v23

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    .line 286
    move-object/from16 v20, v4

    const/16 v21, 0x1

    move-wide/from16 v22, v16

    aput-wide v22, v20, v21

    .line 289
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    goto :goto_2

    .line 295
    .end local v16    # "y":D
    .end local v18    # "num":D
    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .restart local v16    # "y":D
    goto :goto_2
.end method

.method public dXforT(DI)D
    .locals 13

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v1, p1

    .local v1, "t":D
    move/from16 v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 134
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return-wide v0

    .line 130
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order1;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->x1:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->x0:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 132
    :pswitch_1
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x1:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->x0:D

    sub-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dYforT(DI)D
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v1, p1

    .local v1, "t":D
    move/from16 v3, p3

    .local v3, "deriv":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 145
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return-wide v0

    .line 141
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order1;
    :pswitch_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 143
    :pswitch_1
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y0:D

    sub-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/Order1;->x0:D

    double-to-float v3, v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y0:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 195
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/Order1;->x1:D

    double-to-float v3, v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y1:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 196
    return-void
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return v0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 14

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    new-instance v2, Lcom/sun/javafx/geom/Order1;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Order1;->y0:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Order1;->x1:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Order1;->y1:D

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Order1;->direction:I

    neg-int v12, v12

    invoke-direct/range {v3 .. v12}, Lcom/sun/javafx/geom/Order1;-><init>(DDDDI)V

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-object v1
.end method

.method public getSegment([F)I
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Order1;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 302
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 303
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y1:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 308
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return v0

    .line 305
    .restart local v0    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->x0:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 306
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order1;->y0:D

    double-to-float v4, v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 29

    .prologue
    .line 199
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Order1;
    move-wide/from16 v3, p1

    .local v3, "ystart":D
    move-wide/from16 v5, p3

    .local v5, "yend":D
    move/from16 v7, p5

    .local v7, "dir":I
    move-wide/from16 v16, v3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    .line 200
    move-object/from16 v16, v2

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/Order1;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v16

    move-object/from16 v2, v16

    .line 209
    .end local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :goto_0
    return-object v2

    .line 202
    .restart local v2    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_1

    .line 203
    new-instance v16, Lcom/sun/javafx/geom/Order1;

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v5

    move/from16 v26, v7

    invoke-direct/range {v17 .. v26}, Lcom/sun/javafx/geom/Order1;-><init>(DDDDI)V

    move-object/from16 v2, v16

    goto :goto_0

    .line 205
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v8, v16

    .line 206
    .local v8, "num":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 207
    .local v10, "denom":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 208
    .local v12, "xstart":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 209
    .local v14, "xend":D
    new-instance v16, Lcom/sun/javafx/geom/Order1;

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    move-wide/from16 v18, v12

    move-wide/from16 v20, v3

    move-wide/from16 v22, v14

    move-wide/from16 v24, v5

    move/from16 v26, v7

    invoke-direct/range {v17 .. v26}, Lcom/sun/javafx/geom/Order1;-><init>(DDDDI)V

    move-object/from16 v2, v16

    goto/16 :goto_0
.end method

.method public getX0()D
    .locals 4

    .prologue
    .line 83
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order1;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->x1:D

    goto :goto_0
.end method

.method public getX1()D
    .locals 4

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order1;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->x0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->x1:D

    goto :goto_0
.end method

.method public getXBot()D
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->x1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public getXMax()D
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->xmax:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public getXMin()D
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->xmin:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public getXTop()D
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->x0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public getY0()D
    .locals 4

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order1;->direction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->y1:D

    goto :goto_0
.end method

.method public getY1()D
    .locals 4

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Order1;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->y0:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/Order1;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order1;->y1:D

    goto :goto_0
.end method

.method public getYBot()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->y1:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public getYTop()D
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order1;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order1;->y0:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 9

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order1;
    move-wide v2, p1

    .local v2, "t0":D
    move-wide v4, p3

    .local v4, "t1":D
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Order1;
    return-wide v1
.end method

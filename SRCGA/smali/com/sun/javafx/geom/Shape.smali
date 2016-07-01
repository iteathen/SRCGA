.class public abstract Lcom/sun/javafx/geom/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# static fields
.field public static final OUT_BOTTOM:I = 0x8

.field public static final OUT_LEFT:I = 0x1

.field public static final OUT_RIGHT:I = 0x4

.field public static final OUT_TOP:I = 0x2

.field public static final RECT_INTERSECTS:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 17

    .prologue
    .line 1050
    move-object/from16 v0, p0

    .local v0, "bbox":[F
    move-object/from16 v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v11

    move-object v3, v11

    .line 1051
    .local v3, "pi":Lcom/sun/javafx/geom/PathIterator;
    const/4 v11, 0x6

    new-array v11, v11, [F

    move-object v4, v11

    .line 1052
    .local v4, "coords":[F
    const/4 v11, 0x0

    move v5, v11

    .local v5, "mx":F
    const/4 v11, 0x0

    move v6, v11

    .local v6, "my":F
    const/4 v11, 0x0

    move v7, v11

    .local v7, "x0":F
    const/4 v11, 0x0

    move v8, v11

    .line 1053
    .local v8, "y0":F
    :goto_0
    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v11

    if-nez v11, :cond_14

    .line 1054
    move-object v11, v3

    move-object v12, v4

    invoke-interface {v11, v12}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1108
    :cond_0
    :goto_1
    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_0

    .line 1056
    :pswitch_0
    move-object v11, v4

    const/4 v12, 0x0

    aget v11, v11, v12

    move v5, v11

    .line 1057
    move-object v11, v4

    const/4 v12, 0x1

    aget v11, v11, v12

    move v6, v11

    .line 1060
    :pswitch_1
    move-object v11, v4

    const/4 v12, 0x0

    aget v11, v11, v12

    move v7, v11

    .line 1061
    move-object v11, v4

    const/4 v12, 0x1

    aget v11, v11, v12

    move v8, v11

    .line 1062
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v7

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move-object v11, v0

    const/4 v12, 0x0

    move v13, v7

    aput v13, v11, v12

    .line 1063
    :cond_1
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v8

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    move-object v11, v0

    const/4 v12, 0x1

    move v13, v8

    aput v13, v11, v12

    .line 1064
    :cond_2
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v7

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    move-object v11, v0

    const/4 v12, 0x2

    move v13, v7

    aput v13, v11, v12

    .line 1065
    :cond_3
    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move v12, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    move-object v11, v0

    const/4 v12, 0x3

    move v13, v8

    aput v13, v11, v12

    goto :goto_1

    .line 1068
    :pswitch_2
    move-object v11, v4

    const/4 v12, 0x2

    aget v11, v11, v12

    move v9, v11

    .line 1069
    .local v9, "x1":F
    move-object v11, v4

    const/4 v12, 0x3

    aget v11, v11, v12

    move v10, v11

    .line 1070
    .local v10, "y1":F
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v9

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    move-object v11, v0

    const/4 v12, 0x0

    move v13, v9

    aput v13, v11, v12

    .line 1071
    :cond_4
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    move-object v11, v0

    const/4 v12, 0x1

    move v13, v10

    aput v13, v11, v12

    .line 1072
    :cond_5
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v9

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    move-object v11, v0

    const/4 v12, 0x2

    move v13, v9

    aput v13, v11, v12

    .line 1073
    :cond_6
    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move v12, v10

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    move-object v11, v0

    const/4 v12, 0x3

    move v13, v10

    aput v13, v11, v12

    .line 1074
    :cond_7
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_8

    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9

    .line 1075
    :cond_8
    move-object v11, v0

    const/4 v12, 0x0

    move v13, v7

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    move v15, v9

    invoke-static {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/Shape;->accumulateQuad([FIFFF)V

    .line 1077
    :cond_9
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_a

    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    .line 1078
    :cond_a
    move-object v11, v0

    const/4 v12, 0x1

    move v13, v8

    move-object v14, v4

    const/4 v15, 0x1

    aget v14, v14, v15

    move v15, v10

    invoke-static {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/Shape;->accumulateQuad([FIFFF)V

    .line 1080
    :cond_b
    move v11, v9

    move v7, v11

    .line 1081
    move v11, v10

    move v8, v11

    .line 1082
    goto/16 :goto_1

    .line 1084
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_3
    move-object v11, v4

    const/4 v12, 0x4

    aget v11, v11, v12

    move v9, v11

    .line 1085
    .restart local v9    # "x1":F
    move-object v11, v4

    const/4 v12, 0x5

    aget v11, v11, v12

    move v10, v11

    .line 1086
    .restart local v10    # "y1":F
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v9

    cmpl-float v11, v11, v12

    if-lez v11, :cond_c

    move-object v11, v0

    const/4 v12, 0x0

    move v13, v9

    aput v13, v11, v12

    .line 1087
    :cond_c
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_d

    move-object v11, v0

    const/4 v12, 0x1

    move v13, v10

    aput v13, v11, v12

    .line 1088
    :cond_d
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v9

    cmpg-float v11, v11, v12

    if-gez v11, :cond_e

    move-object v11, v0

    const/4 v12, 0x2

    move v13, v9

    aput v13, v11, v12

    .line 1089
    :cond_e
    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move v12, v10

    cmpg-float v11, v11, v12

    if-gez v11, :cond_f

    move-object v11, v0

    const/4 v12, 0x3

    move v13, v10

    aput v13, v11, v12

    .line 1090
    :cond_f
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_10

    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_10

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_10

    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_11

    .line 1093
    :cond_10
    move-object v11, v0

    const/4 v12, 0x0

    move v13, v7

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x2

    aget v15, v15, v16

    move/from16 v16, v9

    invoke-static/range {v11 .. v16}, Lcom/sun/javafx/geom/Shape;->accumulateCubic([FIFFFF)V

    .line 1095
    :cond_11
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_12

    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_12

    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_12

    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_13

    .line 1098
    :cond_12
    move-object v11, v0

    const/4 v12, 0x1

    move v13, v8

    move-object v14, v4

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x3

    aget v15, v15, v16

    move/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/sun/javafx/geom/Shape;->accumulateCubic([FIFFFF)V

    .line 1100
    :cond_13
    move v11, v9

    move v7, v11

    .line 1101
    move v11, v10

    move v8, v11

    .line 1102
    goto/16 :goto_1

    .line 1104
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_4
    move v11, v5

    move v7, v11

    .line 1105
    move v11, v6

    move v8, v11

    goto/16 :goto_1

    .line 1110
    :cond_14
    return-void

    .line 1054
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static accumulateCubic([FIFFFF)V
    .locals 19

    .prologue
    .line 1156
    move-object/from16 v1, p0

    .local v1, "bbox":[F
    move/from16 v2, p1

    .local v2, "off":I
    move/from16 v3, p2

    .local v3, "v0":F
    move/from16 v4, p3

    .local v4, "vc0":F
    move/from16 v5, p4

    .local v5, "vc1":F
    move/from16 v6, p5

    .local v6, "v1":F
    move v12, v4

    move v13, v3

    sub-float/2addr v12, v13

    move v7, v12

    .line 1157
    .local v7, "c":F
    const/high16 v12, 0x40000000    # 2.0f

    move v13, v5

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v7

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v8, v12

    .line 1158
    .local v8, "b":F
    move v12, v6

    move v13, v5

    sub-float/2addr v12, v13

    move v13, v8

    sub-float/2addr v12, v13

    move v13, v7

    sub-float/2addr v12, v13

    move v9, v12

    .line 1159
    .local v9, "a":F
    move v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    .line 1161
    move v12, v8

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 1163
    .line 1189
    :goto_0
    return-void

    .line 1165
    :cond_0
    move-object v12, v1

    move v13, v2

    move v14, v7

    neg-float v14, v14

    move v15, v8

    div-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v12 .. v18}, Lcom/sun/javafx/geom/Shape;->accumulateCubic([FIFFFFF)V

    .line 1189
    :cond_1
    :goto_1
    goto :goto_0

    .line 1168
    :cond_2
    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    move v14, v9

    mul-float/2addr v13, v14

    move v14, v7

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1169
    .local v10, "d":F
    move v12, v10

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 1171
    goto :goto_0

    .line 1173
    :cond_3
    move v12, v10

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v10, v12

    .line 1179
    move v12, v8

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 1180
    move v12, v10

    neg-float v12, v12

    move v10, v12

    .line 1182
    :cond_4
    move v12, v8

    move v13, v10

    add-float/2addr v12, v13

    const/high16 v13, -0x40000000    # -2.0f

    div-float/2addr v12, v13

    move v11, v12

    .line 1184
    .local v11, "q":F
    move-object v12, v1

    move v13, v2

    move v14, v11

    move v15, v9

    div-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v12 .. v18}, Lcom/sun/javafx/geom/Shape;->accumulateCubic([FIFFFFF)V

    .line 1185
    move v12, v11

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 1186
    move-object v12, v1

    move v13, v2

    move v14, v7

    move v15, v11

    div-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v12 .. v18}, Lcom/sun/javafx/geom/Shape;->accumulateCubic([FIFFFFF)V

    goto :goto_1
.end method

.method public static accumulateCubic([FIFFFFF)V
    .locals 12

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "bbox":[F
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "t":F
    move v3, p3

    .local v3, "v0":F
    move/from16 v4, p4

    .local v4, "vc0":F
    move/from16 v5, p5

    .local v5, "vc1":F
    move/from16 v6, p6

    .local v6, "v1":F
    move v9, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    move v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 1195
    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v2

    sub-float/2addr v9, v10

    move v7, v9

    .line 1196
    .local v7, "u":F
    move v9, v3

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v7

    mul-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v4

    mul-float/2addr v10, v11

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v7

    mul-float/2addr v10, v11

    move v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v5

    mul-float/2addr v10, v11

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v6

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v8, v9

    .line 1200
    .local v8, "v":F
    move-object v9, v0

    move v10, v1

    aget v9, v9, v10

    move v10, v8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    move-object v9, v0

    move v10, v1

    move v11, v8

    aput v11, v9, v10

    .line 1201
    :cond_0
    move-object v9, v0

    move v10, v1

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    move v10, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move-object v9, v0

    move v10, v1

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v8

    aput v11, v9, v10

    .line 1203
    .end local v7    # "u":F
    .end local v8    # "v":F
    :cond_1
    return-void
.end method

.method public static accumulateQuad([FIFFF)V
    .locals 13

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "bbox":[F
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "v0":F
    move/from16 v3, p3

    .local v3, "vc":F
    move/from16 v4, p4

    .local v4, "v1":F
    move v10, v2

    move v11, v3

    sub-float/2addr v10, v11

    move v5, v10

    .line 1128
    .local v5, "num":F
    move v10, v4

    move v11, v3

    sub-float/2addr v10, v11

    move v11, v5

    add-float/2addr v10, v11

    move v6, v10

    .line 1129
    .local v6, "den":F
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 1130
    move v10, v5

    move v11, v6

    div-float/2addr v10, v11

    move v7, v10

    .line 1131
    .local v7, "t":F
    move v10, v7

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    move v10, v7

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 1132
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v7

    sub-float/2addr v10, v11

    move v8, v10

    .line 1133
    .local v8, "u":F
    move v10, v2

    move v11, v8

    mul-float/2addr v10, v11

    move v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v3

    mul-float/2addr v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    move v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v11, v4

    move v12, v7

    mul-float/2addr v11, v12

    move v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v9, v10

    .line 1134
    .local v9, "v":F
    move-object v10, v0

    move v11, v1

    aget v10, v10, v11

    move v11, v9

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    move-object v10, v0

    move v11, v1

    move v12, v9

    aput v12, v10, v11

    .line 1135
    :cond_0
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    move v11, v9

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v12, v9

    aput v12, v10, v11

    .line 1138
    .end local v7    # "t":F
    .end local v8    # "u":F
    .end local v9    # "v":F
    :cond_1
    return-void
.end method

.method static intersectsLine(FFFFFFFF)Z
    .locals 17

    .prologue
    .line 957
    move/from16 v0, p0

    .local v0, "rx1":F
    move/from16 v1, p1

    .local v1, "ry1":F
    move/from16 v2, p2

    .local v2, "rwidth":F
    move/from16 v3, p3

    .local v3, "rheight":F
    move/from16 v4, p4

    .local v4, "x1":F
    move/from16 v5, p5

    .local v5, "y1":F
    move/from16 v6, p6

    .local v6, "x2":F
    move/from16 v7, p7

    .local v7, "y2":F
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v6

    move v15, v7

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/geom/Shape;->outcode(FFFFFF)I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v9, v11

    .local v9, "out2":I
    if-nez v10, :cond_2

    .line 958
    const/4 v10, 0x1

    move v0, v10

    .line 978
    .end local v0    # "rx1":F
    :goto_0
    return v0

    .line 964
    .restart local v0    # "rx1":F
    .local v8, "out1":I
    :cond_0
    move v10, v8

    const/4 v11, 0x5

    and-int/lit8 v10, v10, 0x5

    if-eqz v10, :cond_3

    .line 965
    move v10, v8

    const/4 v11, 0x4

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1

    .line 966
    move v10, v0

    move v11, v2

    add-float/2addr v10, v11

    move v0, v10

    .line 968
    :cond_1
    move v10, v5

    move v11, v0

    move v12, v4

    sub-float/2addr v11, v12

    move v12, v7

    move v13, v5

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move v12, v6

    move v13, v4

    sub-float/2addr v12, v13

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move v5, v10

    .line 969
    move v10, v0

    move v4, v10

    .line 960
    .end local v8    # "out1":I
    :cond_2
    :goto_1
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/geom/Shape;->outcode(FFFFFF)I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v8, v11

    .restart local v8    # "out1":I
    if-eqz v10, :cond_5

    .line 961
    move v10, v8

    move v11, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 962
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 971
    :cond_3
    move v10, v8

    const/16 v11, 0x8

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_4

    .line 972
    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v1, v10

    .line 974
    :cond_4
    move v10, v4

    move v11, v1

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v6

    move v13, v4

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move v12, v7

    move v13, v5

    sub-float/2addr v12, v13

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move v4, v10

    .line 975
    move v10, v1

    move v5, v10

    goto :goto_1

    .line 978
    :cond_5
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method static outcode(FFFFFF)I
    .locals 14

    .prologue
    .line 994
    move v1, p0

    .local v1, "rx":F
    move v2, p1

    .local v2, "ry":F
    move/from16 v3, p2

    .local v3, "rwidth":F
    move/from16 v4, p3

    .local v4, "rheight":F
    move/from16 v5, p4

    .local v5, "x":F
    move/from16 v6, p5

    .local v6, "y":F
    const/4 v8, 0x0

    move v7, v8

    .line 995
    .local v7, "out":I
    move v8, v3

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    .line 996
    move v8, v7

    const/4 v9, 0x5

    or-int/lit8 v8, v8, 0x5

    move v7, v8

    .line 1002
    :cond_0
    :goto_0
    move v8, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 1003
    move v8, v7

    const/16 v9, 0xa

    or-int/lit8 v8, v8, 0xa

    move v7, v8

    .line 1009
    :cond_1
    :goto_1
    move v8, v7

    move v1, v8

    .end local v1    # "rx":F
    return v1

    .line 997
    .restart local v1    # "rx":F
    :cond_2
    move v8, v5

    move v9, v1

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 998
    move v8, v7

    const/4 v9, 0x1

    or-int/lit8 v8, v8, 0x1

    move v7, v8

    goto :goto_0

    .line 999
    :cond_3
    move v8, v5

    float-to-double v8, v8

    move v10, v1

    float-to-double v10, v10

    move v12, v3

    float-to-double v12, v12

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 1000
    move v8, v7

    const/4 v9, 0x4

    or-int/lit8 v8, v8, 0x4

    move v7, v8

    goto :goto_0

    .line 1004
    :cond_4
    move v8, v6

    move v9, v2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 1005
    move v8, v7

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    move v7, v8

    goto :goto_1

    .line 1006
    :cond_5
    move v8, v6

    float-to-double v8, v8

    move v10, v2

    float-to-double v10, v10

    move v12, v4

    float-to-double v12, v12

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 1007
    move v8, v7

    const/16 v9, 0x8

    or-int/lit8 v8, v8, 0x8

    move v7, v8

    goto :goto_1
.end method

.method public static pointCrossingsForCubic(FFFFFFFFFFI)I
    .locals 32

    .prologue
    .line 525
    move/from16 v2, p0

    .local v2, "px":F
    move/from16 v3, p1

    .local v3, "py":F
    move/from16 v4, p2

    .local v4, "x0":F
    move/from16 v5, p3

    .local v5, "y0":F
    move/from16 v6, p4

    .local v6, "xc0":F
    move/from16 v7, p5

    .local v7, "yc0":F
    move/from16 v8, p6

    .local v8, "xc1":F
    move/from16 v9, p7

    .local v9, "yc1":F
    move/from16 v10, p8

    .local v10, "x1":F
    move/from16 v11, p9

    .local v11, "y1":F
    move/from16 v12, p10

    .local v12, "level":I
    move/from16 v19, v3

    move/from16 v20, v5

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    move/from16 v19, v3

    move/from16 v20, v7

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    move/from16 v19, v3

    move/from16 v20, v9

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    move/from16 v19, v3

    move/from16 v20, v11

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    const/16 v19, 0x0

    move/from16 v2, v19

    .line 562
    .end local v2    # "px":F
    :goto_0
    return v2

    .line 526
    .restart local v2    # "px":F
    :cond_0
    move/from16 v19, v3

    move/from16 v20, v5

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    move/from16 v19, v3

    move/from16 v20, v7

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    move/from16 v19, v3

    move/from16 v20, v9

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    move/from16 v19, v3

    move/from16 v20, v11

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    const/16 v19, 0x0

    move/from16 v2, v19

    goto :goto_0

    .line 528
    :cond_1
    move/from16 v19, v2

    move/from16 v20, v4

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    move/from16 v19, v2

    move/from16 v20, v6

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    move/from16 v19, v2

    move/from16 v20, v8

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    move/from16 v19, v2

    move/from16 v20, v10

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    const/16 v19, 0x0

    move/from16 v2, v19

    goto :goto_0

    .line 529
    :cond_2
    move/from16 v19, v2

    move/from16 v20, v4

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    move/from16 v19, v2

    move/from16 v20, v6

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    move/from16 v19, v2

    move/from16 v20, v8

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    move/from16 v19, v2

    move/from16 v20, v10

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    .line 530
    move/from16 v19, v3

    move/from16 v20, v5

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_3

    .line 531
    move/from16 v19, v3

    move/from16 v20, v11

    cmpg-float v19, v19, v20

    if-gez v19, :cond_4

    const/16 v19, 0x1

    move/from16 v2, v19

    goto :goto_0

    .line 534
    :cond_3
    move/from16 v19, v3

    move/from16 v20, v11

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_4

    const/16 v19, -0x1

    move/from16 v2, v19

    goto/16 :goto_0

    .line 537
    :cond_4
    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_0

    .line 540
    :cond_5
    move/from16 v19, v12

    const/16 v20, 0x34

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v19 .. v24}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v19

    move/from16 v2, v19

    goto/16 :goto_0

    .line 541
    :cond_6
    move/from16 v19, v6

    move/from16 v20, v8

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v13, v19

    .line 542
    .local v13, "xmid":F
    move/from16 v19, v7

    move/from16 v20, v9

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v14, v19

    .line 543
    .local v14, "ymid":F
    move/from16 v19, v4

    move/from16 v20, v6

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v6, v19

    .line 544
    move/from16 v19, v5

    move/from16 v20, v7

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v7, v19

    .line 545
    move/from16 v19, v8

    move/from16 v20, v10

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v8, v19

    .line 546
    move/from16 v19, v9

    move/from16 v20, v11

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v9, v19

    .line 547
    move/from16 v19, v6

    move/from16 v20, v13

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v15, v19

    .line 548
    .local v15, "xc0m":F
    move/from16 v19, v7

    move/from16 v20, v14

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v16, v19

    .line 549
    .local v16, "yc0m":F
    move/from16 v19, v13

    move/from16 v20, v8

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v17, v19

    .line 550
    .local v17, "xmc1":F
    move/from16 v19, v14

    move/from16 v20, v9

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v18, v19

    .line 551
    .local v18, "ymc1":F
    move/from16 v19, v15

    move/from16 v20, v17

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v13, v19

    .line 552
    move/from16 v19, v16

    move/from16 v20, v18

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v14, v19

    .line 553
    move/from16 v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-nez v19, :cond_7

    move/from16 v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 557
    :cond_7
    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_0

    .line 559
    :cond_8
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v12

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v19 .. v29}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForCubic(FFFFFFFFFFI)I

    move-result v19

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v17

    move/from16 v25, v18

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    .line 562
    invoke-static/range {v20 .. v30}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForCubic(FFFFFFFFFFI)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public static pointCrossingsForLine(FFFFFF)I
    .locals 11

    .prologue
    .line 448
    move v0, p0

    .local v0, "px":F
    move v1, p1

    .local v1, "py":F
    move v2, p2

    .local v2, "x0":F
    move v3, p3

    .local v3, "y0":F
    move v4, p4

    .local v4, "x1":F
    move/from16 v5, p5

    .local v5, "y1":F
    move v7, v1

    move v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v7, v1

    move v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 455
    .end local v0    # "px":F
    :goto_0
    return v0

    .line 449
    .restart local v0    # "px":F
    :cond_0
    move v7, v1

    move v8, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v1

    move v8, v5

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 451
    :cond_1
    move v7, v0

    move v8, v2

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    move v7, v0

    move v8, v4

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 452
    :cond_2
    move v7, v0

    move v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    move v7, v0

    move v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    move v7, v3

    move v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 453
    :cond_4
    move v7, v2

    move v8, v1

    move v9, v3

    sub-float/2addr v8, v9

    move v9, v4

    move v10, v2

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    move v9, v5

    move v10, v3

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 454
    .local v6, "xintercept":F
    move v7, v0

    move v8, v6

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 455
    :cond_5
    move v7, v3

    move v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_6
    const/4 v7, -0x1

    goto :goto_2
.end method

.method public static pointCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FF)I
    .locals 24

    .prologue
    .line 361
    move-object/from16 v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move/from16 v1, p1

    .local v1, "px":F
    move/from16 v2, p2

    .local v2, "py":F
    move-object v11, v0

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 362
    const/4 v11, 0x0

    move v0, v11

    .line 434
    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    return v0

    .line 364
    .restart local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_0
    const/4 v11, 0x6

    new-array v11, v11, [F

    move-object v3, v11

    .line 365
    .local v3, "coords":[F
    move-object v11, v0

    move-object v12, v3

    invoke-interface {v11, v12}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v11

    if-eqz v11, :cond_1

    .line 366
    new-instance v11, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    const-string v13, "missing initial moveto in path definition"

    invoke-direct {v12, v13}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 369
    :cond_1
    move-object v11, v0

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 370
    move-object v11, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    move v4, v11

    .line 371
    .local v4, "movx":F
    move-object v11, v3

    const/4 v12, 0x1

    aget v11, v11, v12

    move v5, v11

    .line 372
    .local v5, "movy":F
    move v11, v4

    move v6, v11

    .line 373
    .local v6, "curx":F
    move v11, v5

    move v7, v11

    .line 375
    .local v7, "cury":F
    const/4 v11, 0x0

    move v10, v11

    .line 376
    .local v10, "crossings":I
    :goto_1
    move-object v11, v0

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v11

    if-nez v11, :cond_4

    .line 377
    move-object v11, v0

    move-object v12, v3

    invoke-interface {v11, v12}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 427
    :goto_2
    move-object v11, v0

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_1

    .line 379
    :pswitch_0
    move v11, v7

    move v12, v5

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    .line 380
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 384
    :cond_2
    move-object v11, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    move/from16 v23, v11

    move/from16 v11, v23

    move/from16 v12, v23

    move v6, v12

    move v4, v11

    .line 385
    move-object v11, v3

    const/4 v12, 0x1

    aget v11, v11, v12

    move/from16 v23, v11

    move/from16 v11, v23

    move/from16 v12, v23

    move v7, v12

    move v5, v11

    .line 386
    goto :goto_2

    .line 388
    :pswitch_1
    move-object v11, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    move v8, v11

    .line 389
    .local v8, "endx":F
    move-object v11, v3

    const/4 v12, 0x1

    aget v11, v11, v12

    move v9, v11

    .line 390
    .local v9, "endy":F
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 393
    move v11, v8

    move v6, v11

    .line 394
    move v11, v9

    move v7, v11

    .line 395
    goto :goto_2

    .line 397
    .end local v8    # "endx":F
    .end local v9    # "endy":F
    :pswitch_2
    move-object v11, v3

    const/4 v12, 0x2

    aget v11, v11, v12

    move v8, v11

    .line 398
    .restart local v8    # "endx":F
    move-object v11, v3

    const/4 v12, 0x3

    aget v11, v11, v12

    move v9, v11

    .line 399
    .restart local v9    # "endy":F
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move-object/from16 v16, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v18, v8

    move/from16 v19, v9

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForQuad(FFFFFFFFI)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 403
    move v11, v8

    move v6, v11

    .line 404
    move v11, v9

    move v7, v11

    .line 405
    goto :goto_2

    .line 407
    .end local v8    # "endx":F
    .end local v9    # "endy":F
    :pswitch_3
    move-object v11, v3

    const/4 v12, 0x4

    aget v11, v11, v12

    move v8, v11

    .line 408
    .restart local v8    # "endx":F
    move-object v11, v3

    const/4 v12, 0x5

    aget v11, v11, v12

    move v9, v11

    .line 409
    .restart local v9    # "endy":F
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move-object/from16 v16, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v18, v3

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v19, v3

    const/16 v20, 0x3

    aget v19, v19, v20

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v22, 0x0

    invoke-static/range {v12 .. v22}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForCubic(FFFFFFFFFFI)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 414
    move v11, v8

    move v6, v11

    .line 415
    move v11, v9

    move v7, v11

    .line 416
    goto/16 :goto_2

    .line 418
    .end local v8    # "endx":F
    .end local v9    # "endy":F
    :pswitch_4
    move v11, v7

    move v12, v5

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_3

    .line 419
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 423
    :cond_3
    move v11, v4

    move v6, v11

    .line 424
    move v11, v5

    move v7, v11

    goto/16 :goto_2

    .line 429
    :cond_4
    move v11, v7

    move v12, v5

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_5

    .line 430
    move v11, v10

    move v12, v1

    move v13, v2

    move v14, v6

    move v15, v7

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 434
    :cond_5
    move v11, v10

    move v0, v11

    goto/16 :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static pointCrossingsForQuad(FFFFFFFFI)I
    .locals 24

    .prologue
    .line 473
    move/from16 v0, p0

    .local v0, "px":F
    move/from16 v1, p1

    .local v1, "py":F
    move/from16 v2, p2

    .local v2, "x0":F
    move/from16 v3, p3

    .local v3, "y0":F
    move/from16 v4, p4

    .local v4, "xc":F
    move/from16 v5, p5

    .local v5, "yc":F
    move/from16 v6, p6

    .local v6, "x1":F
    move/from16 v7, p7

    .local v7, "y1":F
    move/from16 v8, p8

    .local v8, "level":I
    move v13, v1

    move v14, v3

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    move v13, v1

    move v14, v5

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    move v13, v1

    move v14, v7

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    const/4 v13, 0x0

    move v0, v13

    .line 504
    .end local v0    # "px":F
    :goto_0
    return v0

    .line 474
    .restart local v0    # "px":F
    :cond_0
    move v13, v1

    move v14, v3

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    move v13, v1

    move v14, v5

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    move v13, v1

    move v14, v7

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 476
    :cond_1
    move v13, v0

    move v14, v2

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_2

    move v13, v0

    move v14, v4

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_2

    move v13, v0

    move v14, v6

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_2

    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 477
    :cond_2
    move v13, v0

    move v14, v2

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    move v13, v0

    move v14, v4

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    move v13, v0

    move v14, v6

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 478
    move v13, v1

    move v14, v3

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_3

    .line 479
    move v13, v1

    move v14, v7

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    const/4 v13, 0x1

    move v0, v13

    goto :goto_0

    .line 482
    :cond_3
    move v13, v1

    move v14, v7

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_4

    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 485
    :cond_4
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 488
    :cond_5
    move v13, v8

    const/16 v14, 0x34

    if-le v13, v14, :cond_6

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v13 .. v18}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForLine(FFFFFF)I

    move-result v13

    move v0, v13

    goto :goto_0

    .line 489
    :cond_6
    move v13, v2

    move v14, v4

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v9, v13

    .line 490
    .local v9, "x0c":F
    move v13, v3

    move v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v10, v13

    .line 491
    .local v10, "y0c":F
    move v13, v4

    move v14, v6

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v11, v13

    .line 492
    .local v11, "xc1":F
    move v13, v5

    move v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 493
    .local v12, "yc1":F
    move v13, v9

    move v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v4, v13

    .line 494
    move v13, v10

    move v14, v12

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 495
    move v13, v4

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_7

    move v13, v5

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 499
    :cond_7
    const/4 v13, 0x0

    move v0, v13

    goto/16 :goto_0

    .line 501
    :cond_8
    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v13 .. v21}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForQuad(FFFFFFFFI)I

    move-result v13

    move v14, v0

    move v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 504
    invoke-static/range {v14 .. v22}, Lcom/sun/javafx/geom/Shape;->pointCrossingsForQuad(FFFFFFFFI)I

    move-result v14

    add-int/2addr v13, v14

    move v0, v13

    goto/16 :goto_0
.end method

.method public static rectCrossingsForCubic(IFFFFFFFFFFFFI)I
    .locals 37

    .prologue
    .line 874
    move/from16 v2, p0

    .local v2, "crossings":I
    move/from16 v3, p1

    .local v3, "rxmin":F
    move/from16 v4, p2

    .local v4, "rymin":F
    move/from16 v5, p3

    .local v5, "rxmax":F
    move/from16 v6, p4

    .local v6, "rymax":F
    move/from16 v7, p5

    .local v7, "x0":F
    move/from16 v8, p6

    .local v8, "y0":F
    move/from16 v9, p7

    .local v9, "xc0":F
    move/from16 v10, p8

    .local v10, "yc0":F
    move/from16 v11, p9

    .local v11, "xc1":F
    move/from16 v12, p10

    .local v12, "yc1":F
    move/from16 v13, p11

    .local v13, "x1":F
    move/from16 v14, p12

    .local v14, "y1":F
    move/from16 v15, p13

    .local v15, "level":I
    move/from16 v22, v8

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_0

    move/from16 v22, v10

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_0

    move/from16 v22, v12

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_0

    move/from16 v22, v14

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_0

    .line 875
    move/from16 v22, v2

    move/from16 v2, v22

    .line 946
    .end local v2    # "crossings":I
    :goto_0
    return v2

    .line 877
    .restart local v2    # "crossings":I
    :cond_0
    move/from16 v22, v8

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_1

    move/from16 v22, v10

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_1

    move/from16 v22, v12

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_1

    move/from16 v22, v14

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_1

    .line 878
    move/from16 v22, v2

    move/from16 v2, v22

    goto :goto_0

    .line 880
    :cond_1
    move/from16 v22, v7

    move/from16 v23, v3

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_2

    move/from16 v22, v9

    move/from16 v23, v3

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_2

    move/from16 v22, v11

    move/from16 v23, v3

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_2

    move/from16 v22, v13

    move/from16 v23, v3

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_2

    .line 881
    move/from16 v22, v2

    move/from16 v2, v22

    goto :goto_0

    .line 883
    :cond_2
    move/from16 v22, v7

    move/from16 v23, v5

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_7

    move/from16 v22, v9

    move/from16 v23, v5

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_7

    move/from16 v22, v11

    move/from16 v23, v5

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_7

    move/from16 v22, v13

    move/from16 v23, v5

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_7

    .line 892
    move/from16 v22, v8

    move/from16 v23, v14

    cmpg-float v22, v22, v23

    if-gez v22, :cond_5

    .line 894
    move/from16 v22, v8

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_3

    move/from16 v22, v14

    move/from16 v23, v4

    cmpl-float v22, v22, v23

    if-lez v22, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 895
    :cond_3
    move/from16 v22, v8

    move/from16 v23, v6

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    move/from16 v22, v14

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 901
    :cond_4
    :goto_1
    move/from16 v22, v2

    move/from16 v2, v22

    goto/16 :goto_0

    .line 896
    :cond_5
    move/from16 v22, v14

    move/from16 v23, v8

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    .line 898
    move/from16 v22, v14

    move/from16 v23, v4

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_6

    move/from16 v22, v8

    move/from16 v23, v4

    cmpl-float v22, v22, v23

    if-lez v22, :cond_6

    add-int/lit8 v2, v2, -0x1

    .line 899
    :cond_6
    move/from16 v22, v14

    move/from16 v23, v6

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    move/from16 v22, v8

    move/from16 v23, v6

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 906
    :cond_7
    move/from16 v22, v7

    move/from16 v23, v3

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move/from16 v22, v7

    move/from16 v23, v5

    cmpg-float v22, v22, v23

    if-gez v22, :cond_8

    move/from16 v22, v8

    move/from16 v23, v4

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move/from16 v22, v8

    move/from16 v23, v6

    cmpg-float v22, v22, v23

    if-ltz v22, :cond_9

    :cond_8
    move/from16 v22, v13

    move/from16 v23, v3

    cmpl-float v22, v22, v23

    if-lez v22, :cond_a

    move/from16 v22, v13

    move/from16 v23, v5

    cmpg-float v22, v22, v23

    if-gez v22, :cond_a

    move/from16 v22, v14

    move/from16 v23, v4

    cmpl-float v22, v22, v23

    if-lez v22, :cond_a

    move/from16 v22, v14

    move/from16 v23, v6

    cmpg-float v22, v22, v23

    if-gez v22, :cond_a

    .line 909
    :cond_9
    const/high16 v22, -0x80000000

    move/from16 v2, v22

    goto/16 :goto_0

    .line 913
    :cond_a
    move/from16 v22, v15

    const/16 v23, 0x34

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 914
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-static/range {v22 .. v30}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v22

    move/from16 v2, v22

    goto/16 :goto_0

    .line 918
    :cond_b
    move/from16 v22, v9

    move/from16 v23, v11

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v16, v22

    .line 919
    .local v16, "xmid":F
    move/from16 v22, v10

    move/from16 v23, v12

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v17, v22

    .line 920
    .local v17, "ymid":F
    move/from16 v22, v7

    move/from16 v23, v9

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v9, v22

    .line 921
    move/from16 v22, v8

    move/from16 v23, v10

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v10, v22

    .line 922
    move/from16 v22, v11

    move/from16 v23, v13

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v11, v22

    .line 923
    move/from16 v22, v12

    move/from16 v23, v14

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v12, v22

    .line 924
    move/from16 v22, v9

    move/from16 v23, v16

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v18, v22

    .line 925
    .local v18, "xc0m":F
    move/from16 v22, v10

    move/from16 v23, v17

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v19, v22

    .line 926
    .local v19, "yc0m":F
    move/from16 v22, v16

    move/from16 v23, v11

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v20, v22

    .line 927
    .local v20, "xmc1":F
    move/from16 v22, v17

    move/from16 v23, v12

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v21, v22

    .line 928
    .local v21, "ymc1":F
    move/from16 v22, v18

    move/from16 v23, v20

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v16, v22

    .line 929
    move/from16 v22, v19

    move/from16 v23, v21

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v17, v22

    .line 930
    move/from16 v22, v16

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-nez v22, :cond_c

    move/from16 v22, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 934
    :cond_c
    const/16 v22, 0x0

    move/from16 v2, v22

    goto/16 :goto_0

    .line 936
    :cond_d
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v18

    move/from16 v32, v19

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v15

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v22 .. v35}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForCubic(IFFFFFFFFFFFFI)I

    move-result v22

    move/from16 v2, v22

    .line 940
    move/from16 v22, v2

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 941
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v16

    move/from16 v28, v17

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v15

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v22 .. v35}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForCubic(IFFFFFFFFFFFFI)I

    move-result v22

    move/from16 v2, v22

    .line 946
    :cond_e
    move/from16 v22, v2

    move/from16 v2, v22

    goto/16 :goto_0
.end method

.method public static rectCrossingsForLine(IFFFFFFFF)I
    .locals 15

    .prologue
    .line 721
    move v0, p0

    .local v0, "crossings":I
    move/from16 v1, p1

    .local v1, "rxmin":F
    move/from16 v2, p2

    .local v2, "rymin":F
    move/from16 v3, p3

    .local v3, "rxmax":F
    move/from16 v4, p4

    .local v4, "rymax":F
    move/from16 v5, p5

    .local v5, "x0":F
    move/from16 v6, p6

    .local v6, "y0":F
    move/from16 v7, p7

    .local v7, "x1":F
    move/from16 v8, p8

    .local v8, "y1":F
    move v11, v6

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_0

    move v11, v8

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_0

    move v11, v0

    move v0, v11

    .line 781
    .end local v0    # "crossings":I
    :goto_0
    return v0

    .line 722
    .restart local v0    # "crossings":I
    :cond_0
    move v11, v6

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    move v11, v8

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    move v11, v0

    move v0, v11

    goto :goto_0

    .line 723
    :cond_1
    move v11, v5

    move v12, v1

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    move v11, v7

    move v12, v1

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    move v11, v0

    move v0, v11

    goto :goto_0

    .line 724
    :cond_2
    move v11, v5

    move v12, v3

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_7

    move v11, v7

    move v12, v3

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_7

    .line 730
    move v11, v6

    move v12, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 733
    move v11, v6

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 734
    :cond_3
    move v11, v8

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 741
    :cond_4
    :goto_1
    move v11, v0

    move v0, v11

    goto :goto_0

    .line 735
    :cond_5
    move v11, v8

    move v12, v6

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 738
    move v11, v8

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 739
    :cond_6
    move v11, v6

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 747
    :cond_7
    move v11, v5

    move v12, v1

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    move v11, v5

    move v12, v3

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    move v11, v6

    move v12, v2

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    move v11, v6

    move v12, v4

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_9

    :cond_8
    move v11, v7

    move v12, v1

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    move v11, v7

    move v12, v3

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    move v11, v8

    move v12, v2

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    move v11, v8

    move v12, v4

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    .line 750
    :cond_9
    const/high16 v11, -0x80000000

    move v0, v11

    goto/16 :goto_0

    .line 754
    :cond_a
    move v11, v5

    move v9, v11

    .line 755
    .local v9, "xi0":F
    move v11, v6

    move v12, v2

    cmpg-float v11, v11, v12

    if-gez v11, :cond_d

    .line 756
    move v11, v9

    move v12, v2

    move v13, v6

    sub-float/2addr v12, v13

    move v13, v7

    move v14, v5

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v8

    move v14, v6

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move v9, v11

    .line 760
    :cond_b
    :goto_2
    move v11, v7

    move v10, v11

    .line 761
    .local v10, "xi1":F
    move v11, v8

    move v12, v2

    cmpg-float v11, v11, v12

    if-gez v11, :cond_e

    .line 762
    move v11, v10

    move v12, v2

    move v13, v8

    sub-float/2addr v12, v13

    move v13, v5

    move v14, v7

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v6

    move v14, v8

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move v10, v11

    .line 766
    :cond_c
    :goto_3
    move v11, v9

    move v12, v1

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_f

    move v11, v10

    move v12, v1

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_f

    move v11, v0

    move v0, v11

    goto/16 :goto_0

    .line 757
    .end local v10    # "xi1":F
    :cond_d
    move v11, v6

    move v12, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_b

    .line 758
    move v11, v9

    move v12, v4

    move v13, v6

    sub-float/2addr v12, v13

    move v13, v7

    move v14, v5

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v8

    move v14, v6

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move v9, v11

    goto :goto_2

    .line 763
    .restart local v10    # "xi1":F
    :cond_e
    move v11, v8

    move v12, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_c

    .line 764
    move v11, v10

    move v12, v4

    move v13, v8

    sub-float/2addr v12, v13

    move v13, v5

    move v14, v7

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v6

    move v14, v8

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move v10, v11

    goto :goto_3

    .line 767
    :cond_f
    move v11, v9

    move v12, v3

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_14

    move v11, v10

    move v12, v3

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_14

    .line 768
    move v11, v6

    move v12, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_12

    .line 771
    move v11, v6

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 772
    :cond_10
    move v11, v8

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 779
    :cond_11
    :goto_4
    move v11, v0

    move v0, v11

    goto/16 :goto_0

    .line 773
    :cond_12
    move v11, v8

    move v12, v6

    cmpg-float v11, v11, v12

    if-gez v11, :cond_11

    .line 776
    move v11, v8

    move v12, v2

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 777
    :cond_13
    move v11, v6

    move v12, v4

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_11

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 781
    :cond_14
    const/high16 v11, -0x80000000

    move v0, v11

    goto/16 :goto_0
.end method

.method public static rectCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FFFF)I
    .locals 28

    .prologue
    .line 615
    move-object/from16 v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move/from16 v1, p1

    .local v1, "rxmin":F
    move/from16 v2, p2

    .local v2, "rymin":F
    move/from16 v3, p3

    .local v3, "rxmax":F
    move/from16 v4, p4

    .local v4, "rymax":F
    move v13, v3

    move v14, v1

    cmpg-float v13, v13, v14

    if-lez v13, :cond_0

    move v13, v4

    move v14, v2

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 616
    :cond_0
    const/4 v13, 0x0

    move v0, v13

    .line 707
    .end local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    return v0

    .line 618
    .restart local v0    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_1
    move-object v13, v0

    invoke-interface {v13}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 619
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 621
    :cond_2
    const/4 v13, 0x6

    new-array v13, v13, [F

    move-object v5, v13

    .line 622
    .local v5, "coords":[F
    move-object v13, v0

    move-object v14, v5

    invoke-interface {v13, v14}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v13

    if-eqz v13, :cond_3

    .line 623
    new-instance v13, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    const-string v15, "missing initial moveto in path definition"

    invoke-direct {v14, v15}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 626
    :cond_3
    move-object v13, v0

    invoke-interface {v13}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 628
    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move/from16 v27, v13

    move/from16 v13, v27

    move/from16 v14, v27

    move v8, v14

    .local v8, "movx":F
    move v6, v13

    .line 629
    .local v6, "curx":F
    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move/from16 v27, v13

    move/from16 v13, v27

    move/from16 v14, v27

    move v9, v14

    .local v9, "movy":F
    move v7, v13

    .line 630
    .local v7, "cury":F
    const/4 v13, 0x0

    move v12, v13

    .line 631
    .local v12, "crossings":I
    :goto_1
    move v13, v12

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_8

    move-object v13, v0

    invoke-interface {v13}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v13

    if-nez v13, :cond_8

    .line 632
    move-object v13, v0

    move-object v14, v5

    invoke-interface {v13, v14}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 696
    :goto_2
    move-object v13, v0

    invoke-interface {v13}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_1

    .line 634
    :pswitch_0
    move v13, v6

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    move v13, v7

    move v14, v9

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_5

    .line 635
    :cond_4
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v13 .. v21}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v13

    move v12, v13

    .line 643
    :cond_5
    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move/from16 v27, v13

    move/from16 v13, v27

    move/from16 v14, v27

    move v6, v14

    move v8, v13

    .line 644
    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move/from16 v27, v13

    move/from16 v13, v27

    move/from16 v14, v27

    move v7, v14

    move v9, v13

    .line 645
    goto :goto_2

    .line 647
    :pswitch_1
    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move v10, v13

    .line 648
    .local v10, "endx":F
    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v11, v13

    .line 649
    .local v11, "endy":F
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-static/range {v13 .. v21}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v13

    move v12, v13

    .line 654
    move v13, v10

    move v6, v13

    .line 655
    move v13, v11

    move v7, v13

    .line 656
    goto :goto_2

    .line 658
    .end local v10    # "endx":F
    .end local v11    # "endy":F
    :pswitch_2
    move-object v13, v5

    const/4 v14, 0x2

    aget v13, v13, v14

    move v10, v13

    .line 659
    .restart local v10    # "endx":F
    move-object v13, v5

    const/4 v14, 0x3

    aget v13, v13, v14

    move v11, v13

    .line 660
    .restart local v11    # "endy":F
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v5

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v22, v10

    move/from16 v23, v11

    const/16 v24, 0x0

    invoke-static/range {v13 .. v24}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForQuad(IFFFFFFFFFFI)I

    move-result v13

    move v12, v13

    .line 666
    move v13, v10

    move v6, v13

    .line 667
    move v13, v11

    move v7, v13

    .line 668
    goto/16 :goto_2

    .line 670
    .end local v10    # "endx":F
    .end local v11    # "endy":F
    :pswitch_3
    move-object v13, v5

    const/4 v14, 0x4

    aget v13, v13, v14

    move v10, v13

    .line 671
    .restart local v10    # "endx":F
    move-object v13, v5

    const/4 v14, 0x5

    aget v13, v13, v14

    move v11, v13

    .line 672
    .restart local v11    # "endy":F
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v5

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v5

    const/16 v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v5

    const/16 v24, 0x3

    aget v23, v23, v24

    move/from16 v24, v10

    move/from16 v25, v11

    const/16 v26, 0x0

    invoke-static/range {v13 .. v26}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForCubic(IFFFFFFFFFFFFI)I

    move-result v13

    move v12, v13

    .line 679
    move v13, v10

    move v6, v13

    .line 680
    move v13, v11

    move v7, v13

    .line 681
    goto/16 :goto_2

    .line 683
    .end local v10    # "endx":F
    .end local v11    # "endy":F
    :pswitch_4
    move v13, v6

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    move v13, v7

    move v14, v9

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_7

    .line 684
    :cond_6
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v13 .. v21}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v13

    move v12, v13

    .line 690
    :cond_7
    move v13, v8

    move v6, v13

    .line 691
    move v13, v9

    move v7, v13

    goto/16 :goto_2

    .line 698
    :cond_8
    move v13, v12

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_a

    move v13, v6

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_9

    move v13, v7

    move v14, v9

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_a

    .line 699
    :cond_9
    move v13, v12

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v13 .. v21}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v13

    move v12, v13

    .line 707
    :cond_a
    move v13, v12

    move v0, v13

    goto/16 :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static rectCrossingsForQuad(IFFFFFFFFFFI)I
    .locals 31

    .prologue
    .line 797
    move/from16 v2, p0

    .local v2, "crossings":I
    move/from16 v3, p1

    .local v3, "rxmin":F
    move/from16 v4, p2

    .local v4, "rymin":F
    move/from16 v5, p3

    .local v5, "rxmax":F
    move/from16 v6, p4

    .local v6, "rymax":F
    move/from16 v7, p5

    .local v7, "x0":F
    move/from16 v8, p6

    .local v8, "y0":F
    move/from16 v9, p7

    .local v9, "xc":F
    move/from16 v10, p8

    .local v10, "yc":F
    move/from16 v11, p9

    .local v11, "x1":F
    move/from16 v12, p10

    .local v12, "y1":F
    move/from16 v13, p11

    .local v13, "level":I
    move/from16 v18, v8

    move/from16 v19, v6

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_0

    move/from16 v18, v10

    move/from16 v19, v6

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_0

    move/from16 v18, v12

    move/from16 v19, v6

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_0

    move/from16 v18, v2

    move/from16 v2, v18

    .line 857
    .end local v2    # "crossings":I
    :goto_0
    return v2

    .line 798
    .restart local v2    # "crossings":I
    :cond_0
    move/from16 v18, v8

    move/from16 v19, v4

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_1

    move/from16 v18, v10

    move/from16 v19, v4

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_1

    move/from16 v18, v12

    move/from16 v19, v4

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_1

    move/from16 v18, v2

    move/from16 v2, v18

    goto :goto_0

    .line 799
    :cond_1
    move/from16 v18, v7

    move/from16 v19, v3

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_2

    move/from16 v18, v9

    move/from16 v19, v3

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_2

    move/from16 v18, v11

    move/from16 v19, v3

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_2

    move/from16 v18, v2

    move/from16 v2, v18

    goto :goto_0

    .line 800
    :cond_2
    move/from16 v18, v7

    move/from16 v19, v5

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_7

    move/from16 v18, v9

    move/from16 v19, v5

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_7

    move/from16 v18, v11

    move/from16 v19, v5

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_7

    .line 809
    move/from16 v18, v8

    move/from16 v19, v12

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    .line 811
    move/from16 v18, v8

    move/from16 v19, v4

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_3

    move/from16 v18, v12

    move/from16 v19, v4

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 812
    :cond_3
    move/from16 v18, v8

    move/from16 v19, v6

    cmpg-float v18, v18, v19

    if-gez v18, :cond_4

    move/from16 v18, v12

    move/from16 v19, v6

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 818
    :cond_4
    :goto_1
    move/from16 v18, v2

    move/from16 v2, v18

    goto/16 :goto_0

    .line 813
    :cond_5
    move/from16 v18, v12

    move/from16 v19, v8

    cmpg-float v18, v18, v19

    if-gez v18, :cond_4

    .line 815
    move/from16 v18, v12

    move/from16 v19, v4

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_6

    move/from16 v18, v8

    move/from16 v19, v4

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    add-int/lit8 v2, v2, -0x1

    .line 816
    :cond_6
    move/from16 v18, v12

    move/from16 v19, v6

    cmpg-float v18, v18, v19

    if-gez v18, :cond_4

    move/from16 v18, v8

    move/from16 v19, v6

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 823
    :cond_7
    move/from16 v18, v7

    move/from16 v19, v5

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    move/from16 v18, v7

    move/from16 v19, v3

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    move/from16 v18, v8

    move/from16 v19, v6

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    move/from16 v18, v8

    move/from16 v19, v4

    cmpl-float v18, v18, v19

    if-gtz v18, :cond_9

    :cond_8
    move/from16 v18, v11

    move/from16 v19, v5

    cmpg-float v18, v18, v19

    if-gez v18, :cond_a

    move/from16 v18, v11

    move/from16 v19, v3

    cmpl-float v18, v18, v19

    if-lez v18, :cond_a

    move/from16 v18, v12

    move/from16 v19, v6

    cmpg-float v18, v18, v19

    if-gez v18, :cond_a

    move/from16 v18, v12

    move/from16 v19, v4

    cmpl-float v18, v18, v19

    if-lez v18, :cond_a

    .line 826
    :cond_9
    const/high16 v18, -0x80000000

    move/from16 v2, v18

    goto/16 :goto_0

    .line 830
    :cond_a
    move/from16 v18, v13

    const/16 v19, 0x34

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 831
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v11

    move/from16 v26, v12

    invoke-static/range {v18 .. v26}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForLine(IFFFFFFFF)I

    move-result v18

    move/from16 v2, v18

    goto/16 :goto_0

    .line 835
    :cond_b
    move/from16 v18, v7

    move/from16 v19, v9

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v14, v18

    .line 836
    .local v14, "x0c":F
    move/from16 v18, v8

    move/from16 v19, v10

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v15, v18

    .line 837
    .local v15, "y0c":F
    move/from16 v18, v9

    move/from16 v19, v11

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v16, v18

    .line 838
    .local v16, "xc1":F
    move/from16 v18, v10

    move/from16 v19, v12

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v17, v18

    .line 839
    .local v17, "yc1":F
    move/from16 v18, v14

    move/from16 v19, v16

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v9, v18

    .line 840
    move/from16 v18, v15

    move/from16 v19, v17

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v10, v18

    .line 841
    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_c

    move/from16 v18, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 845
    :cond_c
    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_0

    .line 847
    :cond_d
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v18 .. v29}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForQuad(IFFFFFFFFFFI)I

    move-result v18

    move/from16 v2, v18

    .line 851
    move/from16 v18, v2

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 852
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v18 .. v29}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForQuad(IFFFFFFFFFFI)I

    move-result v18

    move/from16 v2, v18

    .line 857
    :cond_e
    move/from16 v18, v2

    move/from16 v2, v18

    goto/16 :goto_0
.end method


# virtual methods
.method public abstract contains(FF)Z
.end method

.method public abstract contains(FFFF)Z
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Shape;
    return v0
.end method

.method public contains(Lcom/sun/javafx/geom/RectBounds;)Z
    .locals 11

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v6

    move v2, v6

    .line 264
    .local v2, "x":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v6

    move v3, v6

    .line 265
    .local v3, "y":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v6

    move v7, v2

    sub-float/2addr v6, v7

    move v4, v6

    .line 266
    .local v4, "w":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v6

    move v7, v3

    sub-float/2addr v6, v7

    move v5, v6

    .line 267
    .local v5, "h":F
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/geom/Shape;
    return v0
.end method

.method public abstract copy()Lcom/sun/javafx/geom/Shape;
.end method

.method public abstract getBounds()Lcom/sun/javafx/geom/RectBounds;
.end method

.method public abstract getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
.end method

.method public abstract getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
.end method

.method public abstract intersects(FFFF)Z
.end method

.method public intersects(Lcom/sun/javafx/geom/RectBounds;)Z
    .locals 11

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v6

    move v2, v6

    .line 183
    .local v2, "x":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v6

    move v3, v6

    .line 184
    .local v3, "y":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v6

    move v7, v2

    sub-float/2addr v6, v7

    move v4, v6

    .line 185
    .local v4, "w":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v6

    move v7, v3

    sub-float/2addr v6, v7

    move v5, v6

    .line 186
    .local v5, "h":F
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/geom/Shape;
    return v0
.end method

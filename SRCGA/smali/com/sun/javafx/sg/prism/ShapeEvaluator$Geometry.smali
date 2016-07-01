.class Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
.super Ljava/lang/Object;
.source "ShapeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/ShapeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Geometry"
.end annotation


# static fields
.field static final MIN_LEN:F = 0.001f

.field static final THIRD:F = 0.33333334f


# instance fields
.field bezierCoords:[F

.field myTvals:[F

.field numCoords:I

.field windingrule:I


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Shape;)V
    .locals 29

    .prologue
    .line 157
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object/from16 v3, p1

    .local v3, "s":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 159
    move-object/from16 v20, v2

    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    .line 160
    move-object/from16 v20, v3

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v20

    move-object/from16 v4, v20

    .line 161
    .local v4, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->windingrule:I

    .line 162
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 165
    move-object/from16 v20, v2

    const/16 v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    .line 167
    :cond_0
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 168
    .local v5, "coords":[F
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v20

    move/from16 v6, v20

    .line 169
    .local v6, "type":I
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 170
    move/from16 v20, v6

    if-eqz v20, :cond_1

    .line 171
    new-instance v20, Lcom/sun/javafx/geom/IllegalPathStateException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string v22, "missing initial moveto"

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 174
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v22, v5

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v9, v23

    .local v9, "movx":F
    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v7, v23

    .local v7, "curx":F
    aput v22, v20, v21

    .line 175
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v22, v5

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v10, v23

    .local v10, "movy":F
    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    move/from16 v8, v23

    .local v8, "cury":F
    aput v22, v20, v21

    .line 177
    new-instance v20, Ljava/util/Vector;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v13, v20

    .line 178
    .local v13, "savedpathendpoints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sun/javafx/geom/Point2D;>;"
    move-object/from16 v20, v2

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    .line 179
    :goto_0
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v20

    if-nez v20, :cond_7

    .line 180
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 225
    :cond_2
    :goto_1
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_0

    .line 182
    :pswitch_0
    move/from16 v20, v7

    move/from16 v21, v9

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    move/from16 v20, v8

    move/from16 v21, v10

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_4

    .line 183
    :cond_3
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 184
    move/from16 v20, v9

    move/from16 v7, v20

    .line 185
    move/from16 v20, v10

    move/from16 v8, v20

    .line 187
    :cond_4
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v11, v20

    .line 188
    .local v11, "newx":F
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v12, v20

    .line 189
    .local v12, "newy":F
    move/from16 v20, v7

    move/from16 v21, v11

    cmpl-float v20, v20, v21

    if-nez v20, :cond_5

    move/from16 v20, v8

    move/from16 v21, v12

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2

    .line 190
    :cond_5
    move-object/from16 v20, v13

    new-instance v21, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 191
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 192
    move/from16 v20, v11

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    move/from16 v9, v21

    move/from16 v7, v20

    .line 193
    move/from16 v20, v12

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    move/from16 v10, v21

    move/from16 v8, v20

    goto/16 :goto_1

    .line 197
    .end local v11    # "newx":F
    .end local v12    # "newy":F
    :pswitch_1
    move/from16 v20, v7

    move/from16 v21, v9

    cmpl-float v20, v20, v21

    if-nez v20, :cond_6

    move/from16 v20, v8

    move/from16 v21, v10

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2

    .line 198
    :cond_6
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 199
    move/from16 v20, v9

    move/from16 v7, v20

    .line 200
    move/from16 v20, v10

    move/from16 v8, v20

    goto/16 :goto_1

    .line 204
    :pswitch_2
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v11, v20

    .line 205
    .restart local v11    # "newx":F
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v12, v20

    .line 206
    .restart local v12    # "newy":F
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 207
    move/from16 v20, v11

    move/from16 v7, v20

    .line 208
    move/from16 v20, v12

    move/from16 v8, v20

    .line 209
    goto/16 :goto_1

    .line 211
    .end local v11    # "newx":F
    .end local v12    # "newy":F
    :pswitch_3
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v14, v20

    .line 212
    .local v14, "ctrlx":F
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v15, v20

    .line 213
    .local v15, "ctrly":F
    move-object/from16 v20, v5

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v11, v20

    .line 214
    .restart local v11    # "newx":F
    move-object/from16 v20, v5

    const/16 v21, 0x3

    aget v20, v20, v21

    move/from16 v12, v20

    .line 215
    .restart local v12    # "newy":F
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v11

    move/from16 v26, v12

    invoke-direct/range {v20 .. v26}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendQuadTo(FFFFFF)V

    .line 216
    move/from16 v20, v11

    move/from16 v7, v20

    .line 217
    move/from16 v20, v12

    move/from16 v8, v20

    .line 218
    goto/16 :goto_1

    .line 220
    .end local v11    # "newx":F
    .end local v12    # "newy":F
    .end local v14    # "ctrlx":F
    .end local v15    # "ctrly":F
    :pswitch_4
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v5

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v5

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v24, v5

    const/16 v25, 0x3

    aget v24, v24, v25

    move-object/from16 v25, v5

    const/16 v26, 0x4

    aget v25, v25, v26

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v7, v26

    move-object/from16 v26, v5

    const/16 v27, 0x5

    aget v26, v26, v27

    move/from16 v28, v26

    move/from16 v26, v28

    move/from16 v27, v28

    move/from16 v8, v27

    invoke-direct/range {v20 .. v26}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendCubicTo(FFFFFF)V

    goto/16 :goto_1

    .line 230
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    move/from16 v20, v7

    move/from16 v21, v9

    cmpl-float v20, v20, v21

    if-nez v20, :cond_8

    move/from16 v20, v8

    move/from16 v21, v10

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    .line 231
    :cond_8
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 232
    move/from16 v20, v9

    move/from16 v7, v20

    .line 233
    move/from16 v20, v10

    move/from16 v8, v20

    .line 237
    :cond_9
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v14, v20

    .local v14, "i":I
    :goto_2
    move/from16 v20, v14

    if-ltz v20, :cond_c

    .line 238
    move-object/from16 v20, v13

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v15, v20

    .line 239
    .local v15, "p":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v11, v20

    .line 240
    .restart local v11    # "newx":F
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v12, v20

    .line 241
    .restart local v12    # "newy":F
    move/from16 v20, v7

    move/from16 v21, v11

    cmpl-float v20, v20, v21

    if-nez v20, :cond_a

    move/from16 v20, v8

    move/from16 v21, v12

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_b

    .line 242
    :cond_a
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendLineTo(FFFF)V

    .line 243
    move/from16 v20, v11

    move/from16 v7, v20

    .line 244
    move/from16 v20, v12

    move/from16 v8, v20

    .line 237
    :cond_b
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 248
    .end local v11    # "newx":F
    .end local v12    # "newy":F
    .end local v15    # "p":Lcom/sun/javafx/geom/Point2D;
    :cond_c
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 249
    .local v14, "minPt":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v15, v20

    .line 250
    .local v15, "minX":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v16, v20

    .line 251
    .local v16, "minY":F
    const/16 v20, 0x6

    move/from16 v17, v20

    .local v17, "ci":I
    :goto_3
    move/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 252
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v17

    aget v20, v20, v21

    move/from16 v18, v20

    .line 253
    .local v18, "x":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget v20, v20, v21

    move/from16 v19, v20

    .line 254
    .local v19, "y":F
    move/from16 v20, v19

    move/from16 v21, v16

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_d

    move/from16 v20, v19

    move/from16 v21, v16

    cmpl-float v20, v20, v21

    if-nez v20, :cond_e

    move/from16 v20, v18

    move/from16 v21, v15

    cmpg-float v20, v20, v21

    if-gez v20, :cond_e

    .line 255
    :cond_d
    move/from16 v20, v17

    move/from16 v14, v20

    .line 256
    move/from16 v20, v18

    move/from16 v15, v20

    .line 257
    move/from16 v20, v19

    move/from16 v16, v20

    .line 251
    :cond_e
    add-int/lit8 v17, v17, 0x6

    goto :goto_3

    .line 262
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_f
    move/from16 v20, v14

    if-lez v20, :cond_10

    .line 264
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 267
    .local v17, "newCoords":[F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v14

    move-object/from16 v22, v17

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v24, v0

    move/from16 v25, v14

    sub-int v24, v24, v25

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v23, v0

    move/from16 v24, v14

    sub-int v23, v23, v24

    move/from16 v24, v14

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    move-object/from16 v20, v2

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    .line 310
    .end local v17    # "newCoords":[F
    :cond_10
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 313
    .local v17, "area":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v7, v20

    .line 314
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v8, v20

    .line 315
    const/16 v20, 0x2

    move/from16 v18, v20

    .local v18, "i":I
    :goto_4
    move/from16 v20, v18

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 316
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    aget v20, v20, v21

    move/from16 v11, v20

    .line 317
    .restart local v11    # "newx":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget v20, v20, v21

    move/from16 v12, v20

    .line 318
    .restart local v12    # "newy":F
    move/from16 v20, v17

    move/from16 v21, v7

    move/from16 v22, v12

    mul-float v21, v21, v22

    move/from16 v22, v11

    move/from16 v23, v8

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 319
    move/from16 v20, v11

    move/from16 v7, v20

    .line 320
    move/from16 v20, v12

    move/from16 v8, v20

    .line 315
    add-int/lit8 v18, v18, 0x2

    goto :goto_4

    .line 322
    .end local v11    # "newx":F
    .end local v12    # "newy":F
    :cond_11
    move/from16 v20, v17

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_12

    .line 337
    const/16 v20, 0x2

    move/from16 v18, v20

    .line 338
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move/from16 v20, v0

    const/16 v21, 0x4

    add-int/lit8 v20, v20, -0x4

    move/from16 v19, v20

    .line 339
    .local v19, "j":I
    :goto_5
    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 340
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    aget v20, v20, v21

    move/from16 v7, v20

    .line 341
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget v20, v20, v21

    move/from16 v8, v20

    .line 342
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v22, v0

    move/from16 v23, v19

    aget v22, v22, v23

    aput v22, v20, v21

    .line 343
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v22, v0

    move/from16 v23, v19

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 344
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v19

    move/from16 v22, v7

    aput v22, v20, v21

    .line 345
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v20, v0

    move/from16 v21, v19

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v8

    aput v22, v20, v21

    .line 346
    add-int/lit8 v18, v18, 0x2

    .line 347
    add-int/lit8 v19, v19, -0x2

    goto/16 :goto_5

    .line 350
    .end local v19    # "j":I
    :cond_12
    return-void

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private appendCubicTo(FFFFFF)V
    .locals 16

    .prologue
    .line 381
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move/from16 v1, p1

    .local v1, "ctrlx1":F
    move/from16 v2, p2

    .local v2, "ctrly1":F
    move/from16 v3, p3

    .local v3, "ctrlx2":F
    move/from16 v4, p4

    .local v4, "ctrly2":F
    move/from16 v5, p5

    .local v5, "x1":F
    move/from16 v6, p6

    .local v6, "y1":F
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    array-length v10, v10

    if-le v9, v10, :cond_0

    .line 383
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v7, v9

    .line 384
    .local v7, "newsize":I
    move v9, v7

    new-array v9, v9, [F

    move-object v8, v9

    .line 385
    .local v8, "newCoords":[F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    const/4 v10, 0x0

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    .line 388
    .end local v7    # "newsize":I
    .end local v8    # "newCoords":[F
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v1

    aput v11, v9, v10

    .line 389
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v2

    aput v11, v9, v10

    .line 390
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v3

    aput v11, v9, v10

    .line 391
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v4

    aput v11, v9, v10

    .line 392
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v5

    aput v11, v9, v10

    .line 393
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v11, v6

    aput v11, v9, v10

    .line 394
    return-void
.end method

.method private appendLineTo(FFFF)V
    .locals 12

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move-object v5, v0

    move v6, v1

    move v7, v3

    const v8, 0x3eaaaaab

    .line 356
    invoke-static {v6, v7, v8}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v6

    move v7, v2

    move v8, v4

    const v9, 0x3eaaaaab

    .line 357
    invoke-static {v7, v8, v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v7

    move v8, v3

    move v9, v1

    const v10, 0x3eaaaaab

    .line 359
    invoke-static {v8, v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v8

    move v9, v4

    move v10, v2

    const v11, 0x3eaaaaab

    .line 360
    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v10, v3

    move v11, v4

    .line 355
    invoke-direct/range {v5 .. v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendCubicTo(FFFFFF)V

    .line 362
    return-void
.end method

.method private appendQuadTo(FFFFFF)V
    .locals 14

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move v1, p1

    .local v1, "x0":F
    move/from16 v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "ctrlx":F
    move/from16 v4, p4

    .local v4, "ctrly":F
    move/from16 v5, p5

    .local v5, "x1":F
    move/from16 v6, p6

    .local v6, "y1":F
    move-object v7, v0

    move v8, v3

    move v9, v1

    const v10, 0x3eaaaaab

    .line 369
    invoke-static {v8, v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v8

    move v9, v4

    move v10, v2

    const v11, 0x3eaaaaab

    .line 370
    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v10, v3

    move v11, v5

    const v12, 0x3eaaaaab

    .line 372
    invoke-static {v10, v11, v12}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v10

    move v11, v4

    move v12, v6

    const v13, 0x3eaaaaab

    .line 373
    invoke-static {v11, v12, v13}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v11

    move v12, v5

    move v13, v6

    .line 368
    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->appendCubicTo(FFFFFF)V

    .line 375
    return-void
.end method


# virtual methods
.method public getCoord(I)F
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    return v0
.end method

.method public getNumCoords()I
    .locals 2

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    return v0
.end method

.method public getTvals()[F
    .locals 19

    .prologue
    .line 409
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->myTvals:[F

    if-eqz v13, :cond_0

    .line 410
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->myTvals:[F

    move-object v1, v13

    .line 486
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    .local v2, "tvals":[F
    .local v3, "segx":F
    .local v4, "segy":F
    .local v5, "tlen":F
    .local v6, "ci":I
    .local v7, "ti":I
    .local v8, "prevt":F
    :goto_0
    return-object v1

    .line 415
    .end local v2    # "tvals":[F
    .end local v3    # "segx":F
    .end local v4    # "segy":F
    .end local v5    # "tlen":F
    .end local v6    # "ci":I
    .end local v7    # "ti":I
    .end local v8    # "prevt":F
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    :cond_0
    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    const/4 v14, 0x6

    div-int/lit8 v13, v13, 0x6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [F

    move-object v2, v13

    .line 421
    .restart local v2    # "tvals":[F
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    move v3, v13

    .line 422
    .restart local v3    # "segx":F
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    move v4, v13

    .line 423
    .restart local v4    # "segy":F
    const/4 v13, 0x0

    move v5, v13

    .line 424
    .restart local v5    # "tlen":F
    const/4 v13, 0x2

    move v6, v13

    .line 425
    .restart local v6    # "ci":I
    const/4 v13, 0x0

    move v7, v13

    .line 426
    .restart local v7    # "ti":I
    :goto_1
    move v13, v6

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    if-ge v13, v14, :cond_2

    .line 428
    move v13, v3

    move v8, v13

    .line 429
    .local v8, "prevx":F
    move v13, v4

    move v9, v13

    .line 430
    .local v9, "prevy":F
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v10, v13

    .line 431
    .local v10, "newx":F
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v11, v13

    .line 432
    .local v11, "newy":F
    move v13, v8

    move v14, v10

    sub-float/2addr v13, v14

    move v8, v13

    .line 433
    move v13, v9

    move v14, v11

    sub-float/2addr v13, v14

    move v9, v13

    .line 434
    move v13, v8

    move v14, v8

    mul-float/2addr v13, v14

    move v14, v9

    move v15, v9

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    move v12, v13

    .line 435
    .local v12, "len":F
    move v13, v10

    move v8, v13

    .line 436
    move v13, v11

    move v9, v13

    .line 437
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v10, v13

    .line 438
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v11, v13

    .line 439
    move v13, v8

    move v14, v10

    sub-float/2addr v13, v14

    move v8, v13

    .line 440
    move v13, v9

    move v14, v11

    sub-float/2addr v13, v14

    move v9, v13

    .line 441
    move v13, v12

    move v14, v8

    move v15, v8

    mul-float/2addr v14, v15

    move v15, v9

    move/from16 v16, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    add-float/2addr v13, v14

    move v12, v13

    .line 442
    move v13, v10

    move v8, v13

    .line 443
    move v13, v11

    move v9, v13

    .line 444
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v10, v13

    .line 445
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    aget v13, v13, v14

    move v11, v13

    .line 446
    move v13, v8

    move v14, v10

    sub-float/2addr v13, v14

    move v8, v13

    .line 447
    move v13, v9

    move v14, v11

    sub-float/2addr v13, v14

    move v9, v13

    .line 448
    move v13, v12

    move v14, v8

    move v15, v8

    mul-float/2addr v14, v15

    move v15, v9

    move/from16 v16, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    add-float/2addr v13, v14

    move v12, v13

    .line 450
    move v13, v3

    move v14, v10

    sub-float/2addr v13, v14

    move v3, v13

    .line 451
    move v13, v4

    move v14, v11

    sub-float/2addr v13, v14

    move v4, v13

    .line 452
    move v13, v12

    move v14, v3

    move v15, v3

    mul-float/2addr v14, v15

    move v15, v4

    move/from16 v16, v4

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    add-float/2addr v13, v14

    move v12, v13

    .line 454
    move v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 467
    move v13, v12

    const v14, 0x3a83126f    # 0.001f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    .line 468
    const v13, 0x3a83126f    # 0.001f

    move v12, v13

    .line 470
    :cond_1
    move v13, v5

    move v14, v12

    add-float/2addr v13, v14

    move v5, v13

    .line 471
    move-object v13, v2

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    move v15, v5

    aput v15, v13, v14

    .line 472
    move v13, v10

    move v3, v13

    .line 473
    move v13, v11

    move v4, v13

    .line 474
    goto/16 :goto_1

    .line 478
    .end local v8    # "prevx":F
    .end local v9    # "prevy":F
    .end local v10    # "newx":F
    .end local v11    # "newy":F
    .end local v12    # "len":F
    :cond_2
    move-object v13, v2

    const/4 v14, 0x0

    aget v13, v13, v14

    move v8, v13

    .line 479
    .local v8, "prevt":F
    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 480
    const/4 v13, 0x1

    move v7, v13

    :goto_2
    move v13, v7

    move-object v14, v2

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_3

    .line 481
    move-object v13, v2

    move v14, v7

    aget v13, v13, v14

    move v9, v13

    .line 482
    .local v9, "nextt":F
    move-object v13, v2

    move v14, v7

    move v15, v8

    move/from16 v16, v5

    div-float v15, v15, v16

    aput v15, v13, v14

    .line 483
    move v13, v9

    move v8, v13

    .line 480
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 485
    .end local v9    # "nextt":F
    :cond_3
    move-object v13, v2

    move v14, v7

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    .line 486
    move-object v13, v1

    move-object v14, v2

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    iput-object v15, v14, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->myTvals:[F

    move-object v1, v13

    goto/16 :goto_0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->windingrule:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    return v0
.end method

.method public setTvals([F)V
    .locals 29

    .prologue
    .line 490
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object/from16 v3, p1

    .local v3, "newTvals":[F
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    move-object/from16 v23, v0

    move-object/from16 v4, v23

    .line 491
    .local v4, "oldCoords":[F
    const/16 v23, 0x2

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x6

    mul-int/lit8 v24, v24, 0x6

    add-int v23, v23, v24

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    move-object/from16 v5, v23

    .line 492
    .local v5, "newCoords":[F
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getTvals()[F

    move-result-object v23

    move-object/from16 v6, v23

    .line 493
    .local v6, "oldTvals":[F
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 496
    .local v7, "oldci":I
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v11, v24

    .local v11, "x1":F
    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v10, v24

    .local v10, "xc1":F
    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v9, v24

    .local v9, "xc0":F
    move/from16 v8, v23

    .line 497
    .local v8, "x0":F
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v15, v24

    .local v15, "y1":F
    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v14, v24

    .local v14, "yc1":F
    move/from16 v28, v23

    move/from16 v23, v28

    move/from16 v24, v28

    move/from16 v13, v24

    .local v13, "yc0":F
    move/from16 v12, v23

    .line 498
    .local v12, "y0":F
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 499
    .local v16, "newci":I
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v8

    aput v25, v23, v24

    .line 500
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v12

    aput v25, v23, v24

    .line 501
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 502
    .local v17, "t0":F
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 503
    .local v18, "t1":F
    const/16 v23, 0x1

    move/from16 v19, v23

    .line 504
    .local v19, "oldti":I
    const/16 v23, 0x1

    move/from16 v20, v23

    .line 505
    .local v20, "newti":I
    :goto_0
    move/from16 v23, v20

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 506
    move/from16 v23, v17

    move/from16 v24, v18

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_0

    .line 507
    move/from16 v23, v11

    move/from16 v8, v23

    .line 508
    move/from16 v23, v15

    move/from16 v12, v23

    .line 509
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v9, v23

    .line 510
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v13, v23

    .line 511
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v10, v23

    .line 512
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v14, v23

    .line 513
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v11, v23

    .line 514
    move-object/from16 v23, v4

    move/from16 v24, v7

    add-int/lit8 v7, v7, 0x1

    aget v23, v23, v24

    move/from16 v15, v23

    .line 515
    move-object/from16 v23, v6

    move/from16 v24, v19

    add-int/lit8 v19, v19, 0x1

    aget v23, v23, v24

    move/from16 v18, v23

    .line 517
    :cond_0
    move-object/from16 v23, v3

    move/from16 v24, v20

    add-int/lit8 v20, v20, 0x1

    aget v23, v23, v24

    move/from16 v21, v23

    .line 519
    .local v21, "nt":F
    move/from16 v23, v21

    move/from16 v24, v18

    cmpg-float v23, v23, v24

    if-gez v23, :cond_1

    .line 521
    move/from16 v23, v21

    move/from16 v24, v17

    sub-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v17

    sub-float v24, v24, v25

    div-float v23, v23, v24

    move/from16 v22, v23

    .line 522
    .local v22, "relt":F
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v8, v26

    aput v25, v23, v24

    .line 523
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v12, v26

    aput v25, v23, v24

    .line 524
    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v9, v23

    .line 525
    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v13, v23

    .line 526
    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v10, v23

    .line 527
    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v14, v23

    .line 528
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v8, v26

    aput v25, v23, v24

    .line 529
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v12, v26

    aput v25, v23, v24

    .line 530
    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v9, v23

    .line 531
    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v22

    invoke-static/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v23

    move/from16 v13, v23

    .line 532
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v8, v26

    aput v25, v23, v24

    .line 533
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v22

    invoke-static/range {v25 .. v27}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v25

    move/from16 v28, v25

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v12, v26

    aput v25, v23, v24

    .line 534
    .line 542
    .end local v22    # "relt":F
    :goto_1
    move/from16 v23, v21

    move/from16 v17, v23

    .line 543
    goto/16 :goto_0

    .line 535
    :cond_1
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v9

    aput v25, v23, v24

    .line 536
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v13

    aput v25, v23, v24

    .line 537
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v10

    aput v25, v23, v24

    .line 538
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v14

    aput v25, v23, v24

    .line 539
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v11

    aput v25, v23, v24

    .line 540
    move-object/from16 v23, v5

    move/from16 v24, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v25, v15

    aput v25, v23, v24

    goto :goto_1

    .line 544
    .end local v21    # "nt":F
    :cond_2
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->bezierCoords:[F

    .line 545
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->numCoords:I

    .line 546
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->myTvals:[F

    .line 547
    return-void
.end method

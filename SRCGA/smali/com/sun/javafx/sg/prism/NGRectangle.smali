.class public Lcom/sun/javafx/sg/prism/NGRectangle;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGRectangle.java"


# static fields
.field static final HALF_MINUS_HALF_SQRT_HALF:F = 0.14700001f

.field private static final SQRT_2:D


# instance fields
.field private rrect:Lcom/sun/javafx/geom/RoundRectangle2D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sun/javafx/sg/prism/NGRectangle;->SQRT_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    return-void
.end method

.method private static hasRightAngleMiterAndNoDashes(Lcom/sun/prism/BasicStroke;)Z
    .locals 6

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "bs":Lcom/sun/prism/BasicStroke;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 146
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getMiterLimit()F

    move-result v2

    float-to-double v2, v2

    sget-wide v4, Lcom/sun/javafx/sg/prism/NGRectangle;->SQRT_2:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    .line 147
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getDashArray()[F

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "bs":Lcom/sun/prism/BasicStroke;
    return v1

    .restart local v1    # "bs":Lcom/sun/prism/BasicStroke;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static rectContains(FFLcom/sun/javafx/sg/prism/NGShape;Lcom/sun/javafx/geom/RectangularShape;)Z
    .locals 26

    .prologue
    .line 154
    move/from16 v2, p0

    .local v2, "x":F
    move/from16 v3, p1

    .local v3, "y":F
    move-object/from16 v4, p2

    .local v4, "node":Lcom/sun/javafx/sg/prism/NGShape;
    move-object/from16 v5, p3

    .local v5, "r":Lcom/sun/javafx/geom/RectangularShape;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectangularShape;->getWidth()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v6, v20

    .line 155
    .local v6, "rw":D
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectangularShape;->getHeight()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v8, v20

    .line 156
    .local v8, "rh":D
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-ltz v20, :cond_0

    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    .line 157
    :cond_0
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 237
    .end local v2    # "x":F
    :goto_0
    return v2

    .line 159
    .restart local v2    # "x":F
    :cond_1
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 160
    .local v10, "mode":Lcom/sun/javafx/sg/prism/NGShape$Mode;
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 161
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 163
    :cond_2
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v11, v20

    .line 164
    .local v11, "rx":D
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v13, v20

    .line 165
    .local v13, "ry":D
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 167
    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_3

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_3

    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    move-wide/from16 v24, v6

    add-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    const/16 v20, 0x1

    :goto_1
    move/from16 v2, v20

    goto :goto_0

    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 170
    :cond_4
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v15, v20

    .line 171
    .local v15, "outerpad":F
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v16, v20

    .line 172
    .local v16, "innerpad":F
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 173
    .local v17, "checkstroke":Z
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v20, v0

    move-object/from16 v18, v20

    .line 174
    .local v18, "drawstroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v20

    move/from16 v19, v20

    .line 175
    .local v19, "type":I
    move/from16 v20, v19

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 176
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 177
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 217
    :cond_5
    :goto_2
    move/from16 v20, v15

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_11

    .line 218
    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    move/from16 v24, v15

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_11

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move/from16 v24, v15

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_11

    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    move-wide/from16 v24, v6

    add-double v22, v22, v24

    move/from16 v24, v15

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_11

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move/from16 v24, v15

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_11

    .line 221
    move/from16 v20, v16

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_10

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v6

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_10

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v8

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_10

    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    move/from16 v24, v16

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_10

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move/from16 v24, v16

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_10

    move/from16 v20, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v11

    move-wide/from16 v24, v6

    add-double v22, v22, v24

    move/from16 v24, v16

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_10

    move/from16 v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move/from16 v24, v16

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    cmpg-double v20, v20, v22

    if-gez v20, :cond_10

    .line 229
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 179
    :cond_6
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/BasicStroke;->getDashArray()[F

    move-result-object v20

    if-nez v20, :cond_7

    .line 180
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 181
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v20

    move/from16 v16, v20

    goto/16 :goto_2

    .line 183
    :cond_7
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_2

    .line 186
    :cond_8
    move/from16 v20, v19

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 187
    move-object/from16 v20, v18

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/sg/prism/NGRectangle;->hasRightAngleMiterAndNoDashes(Lcom/sun/prism/BasicStroke;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 188
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v20

    move/from16 v15, v20

    .line 189
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 190
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_2

    .line 193
    :cond_9
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 194
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 196
    :cond_a
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_2

    .line 198
    :cond_b
    move/from16 v20, v19

    if-nez v20, :cond_e

    .line 199
    move-object/from16 v20, v18

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/sg/prism/NGRectangle;->hasRightAngleMiterAndNoDashes(Lcom/sun/prism/BasicStroke;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 200
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v15, v20

    .line 201
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 202
    move/from16 v20, v15

    move/from16 v16, v20

    goto/16 :goto_2

    .line 205
    :cond_c
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 206
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 208
    :cond_d
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_2

    .line 212
    :cond_e
    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 213
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 215
    :cond_f
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_2

    .line 231
    :cond_10
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    .line 234
    :cond_11
    move/from16 v20, v17

    if-eqz v20, :cond_12

    .line 235
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/sg/prism/NGShape;->getStrokeShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v20

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 237
    :cond_12
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method private renderEffectDirectly(Lcom/sun/prism/Graphics;)Z
    .locals 13

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGRectangle;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v4, v5, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGRectangle;->isRounded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 130
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :goto_0
    return v0

    .line 115
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/Graphics;->getExtraAlpha()F

    move-result v4

    move v2, v4

    .line 116
    .local v2, "alpha":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGRectangle;->fillPaint:Lcom/sun/prism/paint/Paint;

    instance-of v4, v4, Lcom/sun/prism/paint/Color;

    if-eqz v4, :cond_2

    .line 117
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGRectangle;->fillPaint:Lcom/sun/prism/paint/Paint;

    check-cast v5, Lcom/sun/prism/paint/Color;

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    move v2, v4

    .line 122
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGRectangle;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    move-object v3, v4

    .line 123
    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move v7, v2

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v12, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    invoke-static/range {v4 .. v12}, Lcom/sun/javafx/sg/prism/EffectUtil;->renderEffectForRectangularNode(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/Effect;FZFFFF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 120
    .end local v3    # "effect":Lcom/sun/scenario/effect/Effect;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 130
    .restart local v3    # "effect":Lcom/sun/scenario/effect/Effect;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 17

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object/from16 v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v2, v10

    .line 76
    .local v2, "x":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v3, v10

    .line 77
    .local v3, "y":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v4, v10

    .line 78
    .local v4, "w":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v5, v10

    .line 79
    .local v5, "h":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move v6, v10

    .line 80
    .local v6, "aw":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move v7, v10

    .line 82
    .local v7, "ah":F
    move v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 86
    :cond_0
    move-object v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    move v14, v2

    move v15, v4

    add-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v5

    add-float v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v10

    .line 93
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_1
    move v10, v4

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const v11, 0x3e16872c    # 0.14700001f

    mul-float/2addr v10, v11

    move v8, v10

    .line 92
    .local v8, "arcInsetWidth":F
    move v10, v5

    move v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const v11, 0x3e16872c    # 0.14700001f

    mul-float/2addr v10, v11

    move v9, v10

    .line 93
    .local v9, "arcInsetHeight":F
    move-object v10, v1

    move v11, v2

    move v12, v8

    add-float/2addr v11, v12

    move v12, v3

    move v13, v9

    add-float/2addr v12, v13

    const/4 v13, 0x0

    move v14, v2

    move v15, v4

    add-float/2addr v14, v15

    move v15, v8

    sub-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v5

    add-float v15, v15, v16

    move/from16 v16, v9

    sub-float v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v10

    goto :goto_0
.end method

.method protected createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->createRoundRectRep()Lcom/sun/prism/shape/ShapeRep;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    return-object v0
.end method

.method public final getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    return-object v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGShape;->hasOpaqueRegion()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final isRectClip(Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z
    .locals 10

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "permitRoundedRectangle":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGRectangle;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v7, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v6, v7, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v6, v0

    .line 257
    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getOpacity()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    move v6, v2

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->isRounded()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGRectangle;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v6}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v6

    if-nez v6, :cond_3

    .line 259
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    .line 276
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :goto_0
    return v0

    .line 262
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v3, v6

    .line 263
    .local v3, "nodeXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_4

    .line 266
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_5

    .line 267
    sget-object v6, Lcom/sun/javafx/sg/prism/NGRectangle;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 268
    sget-object v6, Lcom/sun/javafx/sg/prism/NGRectangle;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 269
    sget-object v6, Lcom/sun/javafx/sg/prism/NGRectangle;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v1, v6

    .line 275
    :cond_4
    :goto_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v6

    int-to-long v6, v6

    move-wide v4, v6

    .line 276
    .local v4, "t":J
    move-wide v6, v4

    const-wide/16 v8, -0x10

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    .line 271
    .end local v4    # "t":J
    :cond_5
    move-object v6, v3

    move-object v1, v6

    goto :goto_1

    .line 276
    .restart local v4    # "t":J
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method isRounded()Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected renderEffect(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/RectShadowGraphics;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGRectangle;->renderEffectDirectly(Lcom/sun/prism/Graphics;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/sg/prism/NGShape;->renderEffect(Lcom/sun/prism/Graphics;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    return v0
.end method

.method public updateRectangle(FFFFFF)V
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRectangle;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move v4, p4

    .local v4, "height":F
    move v5, p5

    .local v5, "arcWidth":F
    move v6, p6

    .local v6, "arcHeight":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 52
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 53
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 54
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 55
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    .line 56
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGRectangle;->rrect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    .line 57
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGRectangle;->geometryChanged()V

    .line 58
    return-void
.end method

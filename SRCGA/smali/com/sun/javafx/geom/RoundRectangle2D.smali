.class public Lcom/sun/javafx/geom/RoundRectangle2D;
.super Lcom/sun/javafx/geom/RectangularShape;
.source "RoundRectangle2D.java"


# instance fields
.field public arcHeight:F

.field public arcWidth:F

.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/RectangularShape;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 14

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move/from16 v5, p5

    .local v5, "arcw":F
    move/from16 v6, p6

    .local v6, "arch":F
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/geom/RectangularShape;-><init>()V

    .line 97
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 98
    return-void
.end method

.method private classify(FFFF)I
    .locals 8

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move v1, p1

    .local v1, "coord":F
    move v2, p2

    .local v2, "left":F
    move v3, p3

    .local v3, "right":F
    move v4, p4

    .local v4, "arcsize":F
    move v5, v1

    move v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 225
    const/4 v5, 0x0

    move v0, v5

    .line 233
    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :goto_0
    return v0

    .line 226
    .restart local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_0
    move v5, v1

    move v6, v2

    move v7, v4

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 227
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 228
    :cond_1
    move v5, v1

    move v6, v3

    move v7, v4

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 229
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0

    .line 230
    :cond_2
    move v5, v1

    move v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 231
    const/4 v5, 0x3

    move v0, v5

    goto :goto_0

    .line 233
    :cond_3
    const/4 v5, 0x4

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 15

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move/from16 v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RoundRectangle2D;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v1, v10

    .line 220
    .end local v1    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :goto_0
    return v1

    .line 200
    .restart local v1    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_0
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v4, v10

    .line 201
    .local v4, "rrx0":F
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v5, v10

    .line 202
    .local v5, "rry0":F
    move v10, v4

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    add-float/2addr v10, v11

    move v6, v10

    .line 203
    .local v6, "rrx1":F
    move v10, v5

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    add-float/2addr v10, v11

    move v7, v10

    .line 205
    .local v7, "rry1":F
    move v10, v2

    move v11, v4

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    move v10, v3

    move v11, v5

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    move v10, v2

    move v11, v6

    cmpl-float v10, v10, v11

    if-gez v10, :cond_1

    move v10, v3

    move v11, v7

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    .line 206
    :cond_1
    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 208
    :cond_2
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v8, v10

    .line 209
    .local v8, "aw":F
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v9, v10

    .line 212
    .local v9, "ah":F
    move v10, v2

    move v11, v4

    move v12, v8

    add-float/2addr v11, v12

    move v14, v11

    move v11, v14

    move v12, v14

    move v4, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    move v10, v2

    move v11, v6

    move v12, v8

    sub-float/2addr v11, v12

    move v14, v11

    move v11, v14

    move v12, v14

    move v4, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 213
    const/4 v10, 0x1

    move v1, v10

    goto :goto_0

    .line 215
    :cond_3
    move v10, v3

    move v11, v5

    move v12, v9

    add-float/2addr v11, v12

    move v14, v11

    move v11, v14

    move v12, v14

    move v5, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    move v10, v3

    move v11, v7

    move v12, v9

    sub-float/2addr v11, v12

    move v14, v11

    move v11, v14

    move v12, v14

    move v5, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 216
    const/4 v10, 0x1

    move v1, v10

    goto/16 :goto_0

    .line 218
    :cond_4
    move v10, v2

    move v11, v4

    sub-float/2addr v10, v11

    move v11, v8

    div-float/2addr v10, v11

    move v2, v10

    .line 219
    move v10, v3

    move v11, v5

    sub-float/2addr v10, v11

    move v11, v9

    div-float/2addr v10, v11

    move v3, v10

    .line 220
    move v10, v2

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v3

    move v12, v3

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v1, v10

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public contains(FFFF)Z
    .locals 9

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RoundRectangle2D;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 286
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 291
    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :goto_0
    return v0

    .line 288
    .restart local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RoundRectangle2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    .line 289
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RoundRectangle2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 290
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RoundRectangle2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 291
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RoundRectangle2D;->contains(FF)Z

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

.method public copy()Lcom/sun/javafx/geom/RoundRectangle2D;
    .locals 10

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    new-instance v1, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-direct/range {v2 .. v8}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>(FFFFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RoundRectangle2D;->copy()Lcom/sun/javafx/geom/RoundRectangle2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 350
    const/4 v3, 0x1

    move v0, v3

    .line 361
    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :goto_0
    return v0

    .line 352
    .restart local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;

    if-eqz v3, :cond_2

    .line 353
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v2, v3

    .line 354
    .local v2, "rr2d":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 361
    .end local v2    # "rr2d":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/RoundRectIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/RoundRectIterator;-><init>(Lcom/sun/javafx/geom/RoundRectangle2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 326
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 327
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 328
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 329
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x35

    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v2, v3

    move v1, v2

    .line 330
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x3b

    mul-int/lit8 v3, v3, 0x3b

    add-int/2addr v2, v3

    move v1, v2

    .line 331
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 23

    .prologue
    .line 242
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RoundRectangle2D;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    move/from16 v17, v5

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-lez v17, :cond_0

    move/from16 v17, v6

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 243
    :cond_0
    const/16 v17, 0x0

    move/from16 v2, v17

    .line 277
    .end local v2    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :goto_0
    return v2

    .line 245
    .restart local v2    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move/from16 v17, v0

    move/from16 v7, v17

    .line 246
    .local v7, "rrx0":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move/from16 v17, v0

    move/from16 v8, v17

    .line 247
    .local v8, "rry0":F
    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 248
    .local v9, "rrx1":F
    move/from16 v17, v8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 250
    .local v10, "rry1":F
    move/from16 v17, v3

    move/from16 v18, v5

    add-float v17, v17, v18

    move/from16 v18, v7

    cmpg-float v17, v17, v18

    if-lez v17, :cond_2

    move/from16 v17, v3

    move/from16 v18, v9

    cmpl-float v17, v17, v18

    if-gez v17, :cond_2

    move/from16 v17, v4

    move/from16 v18, v6

    add-float v17, v17, v18

    move/from16 v18, v8

    cmpg-float v17, v17, v18

    if-lez v17, :cond_2

    move/from16 v17, v4

    move/from16 v18, v10

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_3

    .line 251
    :cond_2
    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_0

    .line 253
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 254
    .local v11, "aw":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v12, v17

    .line 255
    .local v12, "ah":F
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-direct/range {v17 .. v21}, Lcom/sun/javafx/geom/RoundRectangle2D;->classify(FFFF)I

    move-result v17

    move/from16 v13, v17

    .line 256
    .local v13, "x0class":I
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    add-float v18, v18, v19

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-direct/range {v17 .. v21}, Lcom/sun/javafx/geom/RoundRectangle2D;->classify(FFFF)I

    move-result v17

    move/from16 v14, v17

    .line 257
    .local v14, "x1class":I
    move-object/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v12

    invoke-direct/range {v17 .. v21}, Lcom/sun/javafx/geom/RoundRectangle2D;->classify(FFFF)I

    move-result v17

    move/from16 v15, v17

    .line 258
    .local v15, "y0class":I
    move-object/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v6

    add-float v18, v18, v19

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v12

    invoke-direct/range {v17 .. v21}, Lcom/sun/javafx/geom/RoundRectangle2D;->classify(FFFF)I

    move-result v17

    move/from16 v16, v17

    .line 260
    .local v16, "y1class":I
    move/from16 v17, v13

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v15

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v16

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 261
    :cond_4
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 264
    :cond_5
    move/from16 v17, v13

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move/from16 v17, v14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    :cond_6
    move/from16 v17, v15

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    move/from16 v17, v16

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 265
    :cond_7
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 273
    :cond_8
    move/from16 v17, v14

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move/from16 v17, v3

    move/from16 v18, v5

    add-float v17, v17, v18

    move/from16 v18, v7

    move/from16 v19, v11

    add-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v22, v17

    move/from16 v17, v22

    move/from16 v18, v22

    move/from16 v3, v18

    :goto_1
    move/from16 v3, v17

    .line 274
    move/from16 v17, v16

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    move/from16 v17, v4

    move/from16 v18, v6

    add-float v17, v17, v18

    move/from16 v18, v8

    move/from16 v19, v12

    add-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v22, v17

    move/from16 v17, v22

    move/from16 v18, v22

    move/from16 v4, v18

    :goto_2
    move/from16 v4, v17

    .line 275
    move/from16 v17, v3

    move/from16 v18, v11

    div-float v17, v17, v18

    move/from16 v3, v17

    .line 276
    move/from16 v17, v4

    move/from16 v18, v12

    div-float v17, v17, v18

    move/from16 v4, v17

    .line 277
    move/from16 v17, v3

    move/from16 v18, v3

    mul-float v17, v17, v18

    move/from16 v18, v4

    move/from16 v19, v4

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_b

    const/16 v17, 0x1

    :goto_3
    move/from16 v2, v17

    goto/16 :goto_0

    .line 273
    :cond_9
    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v11

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v22, v17

    move/from16 v17, v22

    move/from16 v18, v22

    move/from16 v3, v18

    goto :goto_1

    .line 274
    :cond_a
    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v12

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v22, v17

    move/from16 v17, v22

    move/from16 v18, v22

    move/from16 v4, v18

    goto :goto_2

    .line 277
    :cond_b
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrame(FFFF)V
    .locals 12

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 192
    return-void
.end method

.method public setRoundRect(FFFFFF)V
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move v5, p5

    .local v5, "arcw":F
    move v6, p6

    .local v6, "arch":F
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 162
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 163
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 164
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 165
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    .line 166
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    .line 167
    return-void
.end method

.method public setRoundRect(Lcom/sun/javafx/geom/RoundRectangle2D;)V
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v1, p1

    .local v1, "rr":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 184
    return-void
.end method

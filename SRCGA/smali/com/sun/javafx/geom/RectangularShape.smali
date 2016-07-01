.class public abstract Lcom/sun/javafx/geom/RectangularShape;
.super Lcom/sun/javafx/geom/Shape;
.source "RectangularShape.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/RectangularShape;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 17

    .prologue
    .line 267
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectangularShape;->getWidth()F

    move-result v10

    move v2, v10

    .line 268
    .local v2, "width":F
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectangularShape;->getHeight()F

    move-result v10

    move v3, v10

    .line 269
    .local v3, "height":F
    move v10, v2

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_0

    move v10, v3

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 270
    :cond_0
    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v10

    .line 278
    .end local v1    # "this":Lcom/sun/javafx/geom/RectangularShape;
    :goto_0
    return-object v1

    .line 272
    .restart local v1    # "this":Lcom/sun/javafx/geom/RectangularShape;
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v10

    move v4, v10

    .line 273
    .local v4, "x":F
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v10

    move v5, v10

    .line 274
    .local v5, "y":F
    move v10, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v6, v10

    .line 275
    .local v6, "x1":F
    move v10, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v7, v10

    .line 276
    .local v7, "y1":F
    move v10, v4

    move v11, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v8, v10

    .line 277
    .local v8, "x2":F
    move v10, v5

    move v11, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v9, v10

    .line 278
    .local v9, "y2":F
    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v1, v10

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getCenterY()F
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public abstract getHeight()F
.end method

.method public getMaxX()F
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getMaxY()F
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getMinX()F
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getMinY()F
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
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

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/RectangularShape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return-object v0
.end method

.method public abstract getWidth()F
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setFrame(FFFF)V
.end method

.method public setFrame(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Dimension2D;)V
    .locals 8

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, p1

    .local v1, "loc":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "size":Lcom/sun/javafx/geom/Dimension2D;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Dimension2D;->width:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Dimension2D;->height:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectangularShape;->setFrame(FFFF)V

    .line 185
    return-void
.end method

.method public setFrameFromCenter(FFFF)V
    .locals 13

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move v1, p1

    .local v1, "centerX":F
    move v2, p2

    .local v2, "centerY":F
    move/from16 v3, p3

    .local v3, "cornerX":F
    move/from16 v4, p4

    .local v4, "cornerY":F
    move v7, v3

    move v8, v1

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v5, v7

    .line 240
    .local v5, "halfW":F
    move v7, v4

    move v8, v2

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v6, v7

    .line 241
    .local v6, "halfH":F
    move-object v7, v0

    move v8, v1

    move v9, v5

    sub-float/2addr v8, v9

    move v9, v2

    move v10, v6

    sub-float/2addr v9, v10

    move v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    move v11, v6

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/RectangularShape;->setFrame(FFFF)V

    .line 242
    return-void
.end method

.method public setFrameFromCenter(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, p1

    .local v1, "center":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "corner":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectangularShape;->setFrameFromCenter(FFFF)V

    .line 254
    return-void
.end method

.method public setFrameFromDiagonal(FFFF)V
    .locals 12

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move v6, v3

    move v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 200
    move v6, v1

    move v5, v6

    .line 201
    .local v5, "t":F
    move v6, v3

    move v1, v6

    .line 202
    move v6, v5

    move v3, v6

    .line 204
    .end local v5    # "t":F
    :cond_0
    move v6, v4

    move v7, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 205
    move v6, v2

    move v5, v6

    .line 206
    .restart local v5    # "t":F
    move v6, v4

    move v2, v6

    .line 207
    move v6, v5

    move v4, v6

    .line 209
    .end local v5    # "t":F
    :cond_1
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v1

    sub-float/2addr v9, v10

    move v10, v4

    move v11, v2

    sub-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectangularShape;->setFrame(FFFF)V

    .line 210
    return-void
.end method

.method public setFrameFromDiagonal(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 8

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectangularShape;->setFrameFromDiagonal(FFFF)V

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectangularShape;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 313
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 314
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 315
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 316
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectangularShape;->getHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectangularShape;
    return-object v0
.end method

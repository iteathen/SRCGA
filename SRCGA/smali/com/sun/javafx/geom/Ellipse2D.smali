.class public Lcom/sun/javafx/geom/Ellipse2D;
.super Lcom/sun/javafx/geom/RectangularShape;
.source "Ellipse2D.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/RectangularShape;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 10

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/RectangularShape;-><init>()V

    .line 77
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 78
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move v3, v7

    .line 153
    .local v3, "ellw":F
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 154
    const/4 v7, 0x0

    move v0, v7

    .line 162
    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :goto_0
    return v0

    .line 156
    .restart local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_0
    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    sub-float/2addr v7, v8

    move v8, v3

    div-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    move v4, v7

    .line 157
    .local v4, "normx":F
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    move v5, v7

    .line 158
    .local v5, "ellh":F
    move v7, v5

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 159
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 161
    :cond_1
    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    sub-float/2addr v7, v8

    move v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    move v6, v7

    .line 162
    .local v6, "normy":F
    move v7, v4

    move v8, v4

    mul-float/2addr v7, v8

    move v8, v6

    move v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x3e800000    # 0.25f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public contains(FFFF)Z
    .locals 9

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Ellipse2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    .line 216
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Ellipse2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 217
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Ellipse2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    .line 218
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Ellipse2D;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/sun/javafx/geom/Ellipse2D;
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    new-instance v1, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Ellipse2D;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Ellipse2D;->copy()Lcom/sun/javafx/geom/Ellipse2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 273
    const/4 v3, 0x1

    move v0, v3

    .line 282
    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :goto_0
    return v0

    .line 275
    .restart local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Ellipse2D;

    if-eqz v3, :cond_2

    .line 276
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v2, v3

    .line 277
    .local v2, "e2d":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 282
    .end local v2    # "e2d":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/EllipseIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/EllipseIterator;-><init>(Lcom/sun/javafx/geom/Ellipse2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 252
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 253
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 254
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 255
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 16

    .prologue
    .line 169
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v13, v3

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-lez v13, :cond_0

    move v13, v4

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 170
    :cond_0
    const/4 v13, 0x0

    move v0, v13

    .line 208
    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :goto_0
    return v0

    .line 174
    .restart local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_1
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    move v5, v13

    .line 175
    .local v5, "ellw":F
    move v13, v5

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    .line 176
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 178
    :cond_2
    move v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    sub-float/2addr v13, v14

    move v14, v5

    div-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    move v6, v13

    .line 179
    .local v6, "normx0":F
    move v13, v6

    move v14, v3

    move v15, v5

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move v7, v13

    .line 180
    .local v7, "normx1":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    move v8, v13

    .line 181
    .local v8, "ellh":F
    move v13, v8

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_3

    .line 182
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    .line 184
    :cond_3
    move v13, v2

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    sub-float/2addr v13, v14

    move v14, v8

    div-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    move v9, v13

    .line 185
    .local v9, "normy0":F
    move v13, v9

    move v14, v4

    move v15, v8

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move v10, v13

    .line 190
    .local v10, "normy1":F
    move v13, v6

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 192
    move v13, v6

    move v11, v13

    .line 199
    .local v11, "nearx":F
    :goto_1
    move v13, v9

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 201
    move v13, v9

    move v12, v13

    .line 208
    .local v12, "neary":F
    :goto_2
    move v13, v11

    move v14, v11

    mul-float/2addr v13, v14

    move v14, v12

    move v15, v12

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x3e800000    # 0.25f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    move v0, v13

    goto :goto_0

    .line 193
    .end local v11    # "nearx":F
    .end local v12    # "neary":F
    :cond_4
    move v13, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 195
    move v13, v7

    move v11, v13

    .restart local v11    # "nearx":F
    goto :goto_1

    .line 197
    .end local v11    # "nearx":F
    :cond_5
    const/4 v13, 0x0

    move v11, v13

    .restart local v11    # "nearx":F
    goto :goto_1

    .line 202
    :cond_6
    move v13, v10

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    .line 204
    move v13, v10

    move v12, v13

    .restart local v12    # "neary":F
    goto :goto_2

    .line 206
    .end local v12    # "neary":F
    :cond_7
    const/4 v13, 0x0

    move v12, v13

    .restart local v12    # "neary":F
    goto :goto_2

    .line 208
    :cond_8
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Ellipse2D;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrame(FFFF)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Ellipse2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    .line 134
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    .line 135
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    .line 136
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    .line 137
    return-void
.end method

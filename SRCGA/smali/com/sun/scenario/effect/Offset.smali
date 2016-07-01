.class public Lcom/sun/scenario/effect/Offset;
.super Lcom/sun/scenario/effect/Effect;
.source "Offset.java"


# instance fields
.field private xoff:I

.field private yoff:I


# direct methods
.method public constructor <init>(IILcom/sun/scenario/effect/Effect;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move v1, p1

    .local v1, "xoff":I
    move v2, p2

    .local v2, "yoff":I
    move-object v3, p3

    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/scenario/effect/Effect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 55
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/scenario/effect/Offset;->xoff:I

    .line 56
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/scenario/effect/Offset;->yoff:I

    .line 57
    return-void
.end method

.method static getOffsetTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-wide v2, p1

    .local v2, "xoff":D
    move-wide v4, p3

    .local v4, "yoff":D
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    :cond_0
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Translate2D;->getInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v1, v6

    .line 135
    .end local v1    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return-object v1

    .restart local v1    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v1, v6

    goto :goto_0
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 15

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/Offset;
    move-object/from16 v2, p1

    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p4

    .local v5, "renderHelper":Ljava/lang/Object;
    move-object/from16 v6, p5

    .local v6, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v9, v3

    move-object v10, v1

    iget v10, v10, Lcom/sun/scenario/effect/Offset;->xoff:I

    int-to-double v10, v10

    move-object v12, v1

    iget v12, v12, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-double v12, v12

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sun/scenario/effect/Offset;->getOffsetTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v7, v9

    .line 159
    .local v7, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/effect/Offset;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v9

    move-object v8, v9

    .line 160
    .local v8, "input":Lcom/sun/scenario/effect/Effect;
    move-object v9, v8

    move-object v10, v2

    move-object v11, v7

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v1
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Offset;->getInputs()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/Effect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Effect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->xoff:I

    int-to-double v6, v6

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-double v8, v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/scenario/effect/Offset;->getOffsetTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    move-object v3, v5

    .line 144
    .local v3, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Offset;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v4, v5

    .line 145
    .local v4, "input":Lcom/sun/scenario/effect/Effect;
    move-object v5, v4

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 10

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Offset;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    move-object v3, v6

    .line 194
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v6, v3

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v6

    move-object v4, v6

    .line 196
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->xoff:I

    if-nez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->yoff:I

    if-eqz v6, :cond_1

    .line 197
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 198
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/Offset;->xoff:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->translate(FFF)V

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .end local v5    # "i":I
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Offset;->xoff:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Offset;->yoff:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getX()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getY()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/Offset;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Offset;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 77
    return-void
.end method

.method public setX(I)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move v1, p1

    .local v1, "xoff":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Offset;->xoff:I

    move v2, v3

    .line 101
    .local v2, "old":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Offset;->xoff:I

    .line 102
    return-void
.end method

.method public setY(I)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move v1, p1

    .local v1, "yoff":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-float v3, v3

    move v2, v3

    .line 126
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Offset;->yoff:I

    .line 127
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 10

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Offset;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v5

    move-object v1, v5

    .line 166
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->xoff:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move v3, v5

    .line 167
    .local v3, "x":F
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move v4, v5

    .line 168
    .local v4, "y":F
    new-instance v5, Lcom/sun/javafx/geom/Point2D;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v5

    .line 169
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 10

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Offset;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->xoff:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v3, v5

    .line 175
    .local v3, "x":F
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/Offset;->yoff:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v4, v5

    .line 176
    .local v4, "y":F
    new-instance v5, Lcom/sun/javafx/geom/Point2D;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v5

    .line 177
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Offset;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v5

    move-object v1, v5

    .line 178
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/Offset;
    return-object v0
.end method

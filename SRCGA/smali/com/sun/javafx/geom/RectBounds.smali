.class public final Lcom/sun/javafx/geom/RectBounds;
.super Lcom/sun/javafx/geom/BaseBounds;
.source "RectBounds.java"


# instance fields
.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 47
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 48
    move-object v1, v0

    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "maxX":F
    move v4, p4

    .local v4, "maxY":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 59
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 73
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v3, v3

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 75
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 8

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;->unionWith(FFFF)V

    .line 347
    return-void
.end method

.method public add(FFF)V
    .locals 10

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move v4, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 340
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Unknown BoundsType"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;->unionWith(FFFF)V

    .line 343
    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Point2D;)V
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 351
    return-void
.end method

.method public contains(FF)Z
    .locals 5

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 409
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 404
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/RectBounds;)Z
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 422
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public copy()Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 16

    .prologue
    .line 229
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v1, p1

    .local v1, "minX":F
    move/from16 v2, p2

    .local v2, "minY":F
    move/from16 v3, p3

    .local v3, "minZ":F
    move/from16 v4, p4

    .local v4, "maxX":F
    move/from16 v5, p5

    .local v5, "maxY":F
    move/from16 v6, p6

    .local v6, "maxZ":F
    move v7, v4

    move v8, v1

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    move v7, v5

    move v8, v2

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    move v7, v6

    move v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move-object v0, v7

    .line 237
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 230
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 231
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 232
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 233
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 234
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 235
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 237
    :cond_2
    new-instance v7, Lcom/sun/javafx/geom/BoxBounds;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v0, v7

    goto :goto_0
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    move-object v0, v3

    .line 224
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v3, v4, :cond_1

    .line 214
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v2, v3

    .line 215
    .local v2, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 216
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 217
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 218
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 219
    .line 224
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 219
    .end local v2    # "rb":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v3, v4, :cond_2

    .line 220
    new-instance v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/geom/BoxBounds;

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;-><init>(Lcom/sun/javafx/geom/BoxBounds;)V

    move-object v0, v3

    goto :goto_0

    .line 222
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unknown BoundsType"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gez v2, :cond_1

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v0, v2

    .line 208
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 206
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v3, v3

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 208
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 16

    .prologue
    .line 242
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v1, p1

    .local v1, "minX":F
    move/from16 v2, p2

    .local v2, "minY":F
    move/from16 v3, p3

    .local v3, "minZ":F
    move/from16 v4, p4

    .local v4, "maxX":F
    move/from16 v5, p5

    .local v5, "maxY":F
    move/from16 v6, p6

    .local v6, "maxZ":F
    move v8, v3

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 243
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFFFF)V

    .line 244
    move-object v8, v0

    move-object v0, v8

    .line 249
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 247
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    new-instance v8, Lcom/sun/javafx/geom/BoxBounds;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lcom/sun/javafx/geom/BoxBounds;-><init>()V

    move-object v7, v8

    .line 248
    .local v7, "bb":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v7

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/geom/BaseBounds;->setBoundsAndSort(FFFFFF)V

    .line 249
    move-object v8, v7

    move-object v0, v8

    goto :goto_0
.end method

.method public deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "h":F
    move/from16 v2, p2

    .local v2, "v":F
    move/from16 v3, p3

    .local v3, "d":F
    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 489
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 490
    move-object v5, v0

    move-object v0, v5

    .line 494
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 492
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    new-instance v5, Lcom/sun/javafx/geom/BoxBounds;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RectBounds;->minY:F

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v4, v5

    .line 493
    .local v4, "bb":Lcom/sun/javafx/geom/BoxBounds;
    move-object v5, v4

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/geom/BoxBounds;->grow(FFF)V

    .line 494
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v3, v4, :cond_0

    .line 192
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v2, v3

    .line 193
    .local v2, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->unionWith(Lcom/sun/javafx/geom/RectBounds;)V

    .line 194
    .line 201
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    .end local v2    # "rb":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 194
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v3, v4, :cond_1

    .line 195
    new-instance v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/geom/BoxBounds;

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;-><init>(Lcom/sun/javafx/geom/BoxBounds;)V

    move-object v2, v3

    .line 196
    .local v2, "bb":Lcom/sun/javafx/geom/BoxBounds;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/BoxBounds;->unionWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 197
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 199
    .end local v2    # "bb":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unknown BoundsType"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public disjoint(FFFF)Z
    .locals 7

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move v4, p4

    .local v4, "height":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 447
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move v5, v1

    move v6, v3

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v2

    move v6, v4

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public disjoint(Lcom/sun/javafx/geom/RectBounds;)Z
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 460
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .line 457
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 458
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 459
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 460
    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 535
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .line 528
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 530
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v2, v3

    .line 531
    .local v2, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 532
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 533
    :cond_3
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 534
    :cond_4
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 535
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 8

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v2

    .line 304
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v0, v2

    .line 307
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 306
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 307
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public getDepth()F
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "max":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Lcom/sun/javafx/geom/Vec2f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    move-object v1, v2

    .line 163
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 164
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 165
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "max":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Lcom/sun/javafx/geom/Vec3f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    move-object v1, v2

    .line 183
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 184
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 185
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 186
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public getMaxX()F
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMaxY()F
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMaxZ()F
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "min":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 152
    new-instance v2, Lcom/sun/javafx/geom/Vec2f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    move-object v1, v2

    .line 154
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 155
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 156
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "min":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Lcom/sun/javafx/geom/Vec3f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    move-object v1, v2

    .line 172
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 173
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 174
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 175
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public getMinX()F
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMinY()F
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getMinZ()F
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public getWidth()F
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public grow(FF)V
    .locals 7

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "h":F
    move v2, p2

    .local v2, "v":F
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 482
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 483
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move v5, v2

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 484
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 485
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    const/4 v2, 0x7

    move v1, v2

    .line 540
    .local v1, "hash":I
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 541
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 542
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 543
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 544
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public intersectWith(FFFF)V
    .locals 8

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "maxX":F
    move v4, p4

    .local v4, "maxY":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    move v5, v3

    move v6, v1

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v4

    move v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 377
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v5

    .line 378
    goto :goto_0

    .line 381
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 382
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 383
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 384
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 385
    goto :goto_0
.end method

.method public intersectWith(FFFFFF)V
    .locals 10

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "minZ":F
    move v4, p4

    .local v4, "maxX":F
    move v5, p5

    .local v5, "maxY":F
    move/from16 v6, p6

    .local v6, "maxZ":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    move v7, v4

    move v8, v1

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v5

    move v8, v2

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v6

    move v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 392
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    .line 393
    goto :goto_0

    .line 396
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 397
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 398
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 399
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 400
    goto :goto_0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 5

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    .line 358
    goto :goto_0

    .line 361
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 362
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 363
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 364
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 365
    goto :goto_0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 10

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v4, v4

    move v2, v4

    .line 369
    .local v2, "x":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    move v3, v4

    .line 370
    .local v3, "y":F
    move-object v4, v0

    move v5, v2

    move v6, v3

    move v7, v2

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    move v8, v3

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(FFFF)V

    .line 371
    return-void
.end method

.method public intersects(FFFF)Z
    .locals 7

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move v4, p4

    .local v4, "height":F
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 427
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move v5, v1

    move v6, v3

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v2

    move v6, v4

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public intersects(Lcom/sun/javafx/geom/BaseBounds;)Z
    .locals 4

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 442
    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return v0

    .line 437
    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 438
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 439
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinZ()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 440
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 441
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 442
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMaxZ()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public is2D()Z
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic makeEmpty()Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public makeEmpty()Lcom/sun/javafx/geom/RectBounds;
    .locals 7

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 502
    move-object v1, v0

    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 503
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public roundOut()V
    .locals 4

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 475
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 476
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 477
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 478
    return-void
.end method

.method public final setBounds(FFFF)V
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "maxX":F
    move v4, p4

    .local v4, "maxY":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 268
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 269
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 270
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 271
    return-void
.end method

.method public final setBounds(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 258
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 259
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 260
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 261
    return-void
.end method

.method public setBoundsAndSort(FFFF)V
    .locals 10

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "maxX":F
    move v4, p4

    .local v4, "maxY":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 279
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->sortMinMax()V

    .line 280
    return-void
.end method

.method public setBoundsAndSort(FFFFFF)V
    .locals 13

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move/from16 v3, p3

    .local v3, "minZ":F
    move/from16 v4, p4

    .local v4, "maxX":F
    move/from16 v5, p5

    .local v5, "maxY":F
    move/from16 v6, p6

    .local v6, "maxZ":F
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 285
    :cond_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Unknown BoundsType"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 287
    :cond_1
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v4

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 288
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->sortMinMax()V

    .line 289
    return-void
.end method

.method public setBoundsAndSort(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 8

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
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

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 293
    return-void
.end method

.method public setMaxX(F)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "maxX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 136
    return-void
.end method

.method public setMaxY(F)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "maxY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 144
    return-void
.end method

.method public setMinX(F)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 116
    return-void
.end method

.method public setMinY(F)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 124
    return-void
.end method

.method protected sortMinMax()V
    .locals 4

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 508
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v1, v2

    .line 509
    .local v1, "tmp":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 510
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 512
    .end local v1    # "tmp":F
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 513
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v1, v2

    .line 514
    .restart local v1    # "tmp":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 515
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 517
    .end local v1    # "tmp":F
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RectBounds { minX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} (w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RectBounds;
    return-object v0
.end method

.method public translate(FFF)V
    .locals 7

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v5

    move v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->setMinX(F)V

    .line 521
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v5

    move v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->setMinY(F)V

    .line 522
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v5

    move v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 523
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v5

    move v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->setMaxY(F)V

    .line 524
    return-void
.end method

.method public unionWith(FFFF)V
    .locals 10

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "maxX":F
    move v4, p4

    .local v4, "maxY":F
    move v5, v3

    move v6, v1

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v4

    move v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 329
    goto :goto_0

    .line 332
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 333
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 334
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 335
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 336
    goto :goto_0
.end method

.method public unionWith(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 315
    goto :goto_0

    .line 318
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minX:F

    .line 319
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->minY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->minY:F

    .line 320
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxX:F

    .line 321
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/RectBounds;->maxY:F

    .line 322
    goto :goto_0
.end method

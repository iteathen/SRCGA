.class public Lcom/sun/javafx/geom/BoxBounds;
.super Lcom/sun/javafx/geom/BaseBounds;
.source "BoxBounds.java"


# instance fields
.field private maxX:F

.field private maxY:F

.field private maxZ:F

.field private minX:F

.field private minY:F

.field private minZ:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 50
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 51
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 52
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 14

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

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
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 63
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/BoxBounds;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BoxBounds;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 72
    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 11

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BoxBounds;->unionWith(FFFFFF)V

    .line 327
    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Point2D;)V
    .locals 6

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->add(FFF)V

    .line 331
    return-void
.end method

.method public contains(FF)Z
    .locals 7

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 380
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public contains(FFF)Z
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 385
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public contains(FFFFFF)Z
    .locals 12

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move/from16 v4, p4

    .local v4, "width":F
    move/from16 v5, p5

    .local v5, "height":F
    move/from16 v6, p6

    .local v6, "depth":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 392
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    move v8, v1

    move v9, v4

    add-float/2addr v8, v9

    move v9, v2

    move v10, v5

    add-float/2addr v9, v10

    move v10, v3

    move v11, v6

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 6

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 375
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public copy()Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    new-instance v1, Lcom/sun/javafx/geom/BoxBounds;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-direct/range {v2 .. v8}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 9

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
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
    move v6, p6

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

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v7

    move-object v0, v7

    .line 236
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return-object v0

    .line 230
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 231
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 232
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 233
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 234
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 235
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 236
    move-object v7, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v2

    move-object v0, v2

    .line 224
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 214
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v2, v3, :cond_2

    .line 215
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 216
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 217
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 218
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 219
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 220
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 224
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 222
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unknown BoundsType"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 9

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
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

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v2

    move-object v0, v2

    .line 208
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return-object v0

    .line 206
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v3, v3

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    .line 208
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

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
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/BoxBounds;->setBoundsAndSort(FFFFFF)V

    .line 242
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "h":F
    move v2, p2

    .local v2, "v":F
    move v3, p3

    .local v3, "d":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/geom/BoxBounds;->grow(FFF)V

    .line 466
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 196
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v2, v3, :cond_1

    .line 197
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/BoxBounds;->unionWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 201
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0

    .line 199
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unknown BoundsType"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disjoint(FFFF)Z
    .locals 12

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move/from16 v4, p4

    .local v4, "height":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    move v9, v3

    move v10, v4

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/BoxBounds;->disjoint(FFFFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public disjoint(FFFFFF)Z
    .locals 9

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move v4, p4

    .local v4, "width":F
    move v5, p5

    .local v5, "height":F
    move v6, p6

    .local v6, "depth":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v0, v7

    .line 429
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move v7, v1

    move v8, v4

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v2

    move v8, v5

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v3

    move v8, v6

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 516
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .line 507
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
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

    .line 509
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v2, v3

    .line 510
    .local v2, "other":Lcom/sun/javafx/geom/BoxBounds;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMinX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 511
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMinY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 512
    :cond_3
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMinZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 513
    :cond_4
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMaxX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 514
    :cond_5
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMaxY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 515
    :cond_6
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BoxBounds;->getMaxZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 516
    :cond_7
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 8

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
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

    .line 249
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v0, v2

    .line 252
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return-object v0

    .line 251
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 252
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public getDepth()F
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "max":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Lcom/sun/javafx/geom/Vec2f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    move-object v1, v2

    .line 167
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 168
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 169
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "max":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lcom/sun/javafx/geom/Vec3f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    move-object v1, v2

    .line 187
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 188
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 189
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 190
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public getMaxX()F
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMaxY()F
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMaxZ()F
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "min":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Lcom/sun/javafx/geom/Vec2f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    move-object v1, v2

    .line 158
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 159
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 160
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "min":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Lcom/sun/javafx/geom/Vec3f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    move-object v1, v2

    .line 176
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 177
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 178
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 179
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public getMinX()F
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMinY()F
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getMinZ()F
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public getWidth()F
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public grow(FFF)V
    .locals 8

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "h":F
    move v2, p2

    .local v2, "v":F
    move v3, p3

    .local v3, "d":F
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move v6, v1

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 457
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move v6, v1

    add-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 458
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 459
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 460
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 461
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 462
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    const/4 v2, 0x7

    move v1, v2

    .line 522
    .local v1, "hash":I
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 523
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 524
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 525
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 526
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 527
    const/16 v2, 0x4f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 529
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public intersectWith(FFFFFF)V
    .locals 10

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
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

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    :goto_0
    return-void

    .line 360
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

    .line 361
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v7

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 366
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 367
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 368
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 369
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 370
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 371
    goto :goto_0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v2

    .line 345
    goto :goto_0

    .line 348
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 349
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 350
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 351
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 352
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 353
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 354
    goto :goto_0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 11

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v4, v4

    move v2, v4

    .line 335
    .local v2, "x":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    move v3, v4

    .line 336
    .local v3, "y":F
    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x0

    move v8, v2

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    move v9, v3

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BoxBounds;->intersectWith(FFFFFF)V

    .line 338
    return-void
.end method

.method public intersects(FFFF)Z
    .locals 12

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move/from16 v4, p4

    .local v4, "height":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    move v9, v3

    move v10, v4

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/BoxBounds;->intersects(FFFFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public intersects(FFFFFF)Z
    .locals 9

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move v4, p4

    .local v4, "width":F
    move v5, p5

    .local v5, "height":F
    move v6, p6

    .local v6, "depth":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 402
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_0
    move v7, v1

    move v8, v4

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v2

    move v8, v5

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v3

    move v8, v6

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public intersects(Lcom/sun/javafx/geom/BaseBounds;)Z
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 419
    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :goto_0
    return v0

    .line 414
    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 415
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 416
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object v2, v1

    .line 417
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 418
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 419
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

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
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic makeEmpty()Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public makeEmpty()Lcom/sun/javafx/geom/BoxBounds;
    .locals 8

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 474
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 475
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public roundOut()V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 448
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 449
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 450
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 451
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 452
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 453
    return-void
.end method

.method public final setBounds(FFFFFF)V
    .locals 9

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
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
    move v6, p6

    .local v6, "maxZ":F
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 274
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 275
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 276
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 277
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 278
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 279
    return-void
.end method

.method public final setBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 261
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 262
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 263
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 264
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 265
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 266
    return-void
.end method

.method public setBoundsAndSort(FFFFFF)V
    .locals 14

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

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
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    .line 284
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->sortMinMax()V

    .line 285
    return-void
.end method

.method public setBoundsAndSort(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 10

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v6, 0x0

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BoxBounds;->setBoundsAndSort(FFFFFF)V

    .line 289
    return-void
.end method

.method public setMaxX(F)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "maxX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 136
    return-void
.end method

.method public setMaxY(F)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "maxY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 144
    return-void
.end method

.method public setMaxZ(F)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "maxZ":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 152
    return-void
.end method

.method public setMinX(F)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "minX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 112
    return-void
.end method

.method public setMinY(F)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "minY":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 120
    return-void
.end method

.method public setMinZ(F)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "minZ":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 128
    return-void
.end method

.method protected sortMinMax()V
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 480
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move v1, v2

    .line 481
    .local v1, "tmp":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 482
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 484
    .end local v1    # "tmp":F
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 485
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move v1, v2

    .line 486
    .restart local v1    # "tmp":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 487
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 489
    .end local v1    # "tmp":F
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 490
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move v1, v2

    .line 491
    .restart local v1    # "tmp":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 492
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 494
    .end local v1    # "tmp":F
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxBounds { minX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minZ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxZ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/BoxBounds;
    return-object v0
.end method

.method public translate(FFF)V
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BoxBounds;->getMinX()F

    move-result v5

    move v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->setMinX(F)V

    .line 499
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BoxBounds;->getMinY()F

    move-result v5

    move v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->setMinY(F)V

    .line 500
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BoxBounds;->getMaxX()F

    move-result v5

    move v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->setMaxX(F)V

    .line 501
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BoxBounds;->getMaxY()F

    move-result v5

    move v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BoxBounds;->setMaxY(F)V

    .line 502
    return-void
.end method

.method public unionWith(FFFFFF)V
    .locals 14

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move v1, p1

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

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    .line 314
    goto :goto_0

    .line 317
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 318
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 319
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 320
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 321
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 322
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 323
    goto :goto_0
.end method

.method public unionWith(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BoxBounds;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 296
    goto :goto_0

    .line 299
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 300
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 301
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 302
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 303
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 304
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    .line 305
    goto :goto_0
.end method

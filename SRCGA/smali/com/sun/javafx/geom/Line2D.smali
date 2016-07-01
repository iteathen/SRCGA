.class public Lcom/sun/javafx/geom/Line2D;
.super Lcom/sun/javafx/geom/Shape;
.source "Line2D.java"


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 10

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 75
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 85
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Line2D;->setLine(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V

    .line 86
    return-void
.end method

.method public static linesIntersect(FFFFFFFF)Z
    .locals 15

    .prologue
    .line 322
    move v0, p0

    .local v0, "x1":F
    move/from16 v1, p1

    .local v1, "y1":F
    move/from16 v2, p2

    .local v2, "x2":F
    move/from16 v3, p3

    .local v3, "y2":F
    move/from16 v4, p4

    .local v4, "x3":F
    move/from16 v5, p5

    .local v5, "y3":F
    move/from16 v6, p6

    .local v6, "x4":F
    move/from16 v7, p7

    .local v7, "y4":F
    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v8

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v6

    move v14, v7

    .line 323
    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v9

    mul-int/2addr v8, v9

    if-gtz v8, :cond_0

    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    move v12, v0

    move v13, v1

    .line 324
    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v8

    move v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v2

    move v14, v3

    .line 325
    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v9

    mul-int/2addr v8, v9

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .end local v0    # "x1":F
    return v0

    .restart local v0    # "x1":F
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static ptLineDist(FFFFFF)F
    .locals 12

    .prologue
    .line 603
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move/from16 v4, p4

    .local v4, "px":F
    move/from16 v5, p5

    .local v5, "py":F
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/geom/Line2D;->ptLineDistSq(FFFFFF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method public static ptLineDistSq(FFFFFF)F
    .locals 13

    .prologue
    .line 561
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move/from16 v3, p3

    .local v3, "y2":F
    move/from16 v4, p4

    .local v4, "px":F
    move/from16 v5, p5

    .local v5, "py":F
    move v9, v2

    move v10, v0

    sub-float/2addr v9, v10

    move v2, v9

    .line 562
    move v9, v3

    move v10, v1

    sub-float/2addr v9, v10

    move v3, v9

    .line 564
    move v9, v4

    move v10, v0

    sub-float/2addr v9, v10

    move v4, v9

    .line 565
    move v9, v5

    move v10, v1

    sub-float/2addr v9, v10

    move v5, v9

    .line 566
    move v9, v4

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 570
    .local v6, "dotprod":F
    move v9, v6

    move v10, v6

    mul-float/2addr v9, v10

    move v10, v2

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v3

    move v12, v3

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    move v7, v9

    .line 573
    .local v7, "projlenSq":F
    move v9, v4

    move v10, v4

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v7

    sub-float/2addr v9, v10

    move v8, v9

    .line 574
    .local v8, "lenSq":F
    move v9, v8

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 575
    const/4 v9, 0x0

    move v8, v9

    .line 577
    :cond_0
    move v9, v8

    move v0, v9

    .end local v0    # "x1":F
    return v0
.end method

.method public static ptSegDist(FFFFFF)F
    .locals 12

    .prologue
    .line 459
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move/from16 v4, p4

    .local v4, "px":F
    move/from16 v5, p5

    .local v5, "py":F
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method public static ptSegDistSq(FFFFFF)F
    .locals 13

    .prologue
    .line 387
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move/from16 v3, p3

    .local v3, "y2":F
    move/from16 v4, p4

    .local v4, "px":F
    move/from16 v5, p5

    .local v5, "py":F
    move v9, v2

    move v10, v0

    sub-float/2addr v9, v10

    move v2, v9

    .line 388
    move v9, v3

    move v10, v1

    sub-float/2addr v9, v10

    move v3, v9

    .line 390
    move v9, v4

    move v10, v0

    sub-float/2addr v9, v10

    move v4, v9

    .line 391
    move v9, v5

    move v10, v1

    sub-float/2addr v9, v10

    move v5, v9

    .line 392
    move v9, v4

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 394
    .local v6, "dotprod":F
    move v9, v6

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_1

    .line 398
    const/4 v9, 0x0

    move v7, v9

    .line 425
    .local v7, "projlenSq":F
    :goto_0
    move v9, v4

    move v10, v4

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v7

    sub-float/2addr v9, v10

    move v8, v9

    .line 426
    .local v8, "lenSq":F
    move v9, v8

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 427
    const/4 v9, 0x0

    move v8, v9

    .line 429
    :cond_0
    move v9, v8

    move v0, v9

    .end local v0    # "x1":F
    return v0

    .line 405
    .end local v7    # "projlenSq":F
    .end local v8    # "lenSq":F
    .restart local v0    # "x1":F
    :cond_1
    move v9, v2

    move v10, v4

    sub-float/2addr v9, v10

    move v4, v9

    .line 406
    move v9, v3

    move v10, v5

    sub-float/2addr v9, v10

    move v5, v9

    .line 407
    move v9, v4

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 408
    move v9, v6

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 412
    const/4 v9, 0x0

    move v7, v9

    .restart local v7    # "projlenSq":F
    goto :goto_0

    .line 418
    .end local v7    # "projlenSq":F
    :cond_2
    move v9, v6

    move v10, v6

    mul-float/2addr v9, v10

    move v10, v2

    move v11, v2

    mul-float/2addr v10, v11

    move v11, v3

    move v12, v3

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    move v7, v9

    .restart local v7    # "projlenSq":F
    goto :goto_0
.end method

.method public static relativeCCW(FFFFFF)I
    .locals 10

    .prologue
    .line 226
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, p4

    .local v4, "px":F
    move v5, p5

    .local v5, "py":F
    move v7, v2

    move v8, v0

    sub-float/2addr v7, v8

    move v2, v7

    .line 227
    move v7, v3

    move v8, v1

    sub-float/2addr v7, v8

    move v3, v7

    .line 228
    move v7, v4

    move v8, v0

    sub-float/2addr v7, v8

    move v4, v7

    .line 229
    move v7, v5

    move v8, v1

    sub-float/2addr v7, v8

    move v5, v7

    .line 230
    move v7, v4

    move v8, v3

    mul-float/2addr v7, v8

    move v8, v5

    move v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    move v6, v7

    .line 231
    .local v6, "ccw":F
    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 238
    move v7, v4

    move v8, v2

    mul-float/2addr v7, v8

    move v8, v5

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 239
    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 247
    move v7, v4

    move v8, v2

    sub-float/2addr v7, v8

    move v4, v7

    .line 248
    move v7, v5

    move v8, v3

    sub-float/2addr v7, v8

    move v5, v7

    .line 249
    move v7, v4

    move v8, v2

    mul-float/2addr v7, v8

    move v8, v5

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 250
    move v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 251
    const/4 v7, 0x0

    move v6, v7

    .line 255
    :cond_0
    move v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    const/4 v7, -0x1

    :goto_0
    move v0, v7

    .end local v0    # "x1":F
    return v0

    .restart local v0    # "x1":F
    :cond_1
    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public contains(FFFF)Z
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/Line2D;
    .locals 8

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    new-instance v1, Lcom/sun/javafx/geom/Line2D;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Line2D;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Line2D;->copy()Lcom/sun/javafx/geom/Line2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 731
    const/4 v3, 0x1

    move v0, v3

    .line 738
    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    :goto_0
    return v0

    .line 733
    .restart local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Line2D;

    if-eqz v3, :cond_2

    .line 734
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Line2D;

    move-object v2, v3

    .line 735
    .local v2, "line":Lcom/sun/javafx/geom/Line2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 738
    .end local v2    # "line":Lcom/sun/javafx/geom/Line2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 8

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v2

    .line 127
    .local v1, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 128
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/LineIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/LineIterator;-><init>(Lcom/sun/javafx/geom/Line2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/LineIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/LineIterator;-><init>(Lcom/sun/javafx/geom/Line2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 722
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 723
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 724
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 725
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 16

    .prologue
    .line 155
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/geom/Line2D;->outcode(FFFFFF)I

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v6, v10

    .local v6, "out2":I
    if-nez v9, :cond_0

    .line 156
    const/4 v9, 0x1

    move v0, v9

    .line 178
    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    :goto_0
    return v0

    .line 158
    .restart local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    :cond_0
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->x1:F

    move v7, v9

    .line 159
    .local v7, "px":F
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->y1:F

    move v8, v9

    .line 160
    .local v8, "py":F
    :goto_1
    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v7

    move v14, v8

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/geom/Line2D;->outcode(FFFFFF)I

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v5, v10

    .local v5, "out1":I
    if-eqz v9, :cond_5

    .line 161
    move v9, v5

    move v10, v6

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 162
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 164
    :cond_1
    move v9, v5

    const/4 v10, 0x5

    and-int/lit8 v9, v9, 0x5

    if-eqz v9, :cond_3

    .line 165
    move v9, v1

    move v7, v9

    .line 166
    move v9, v5

    const/4 v10, 0x4

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_2

    .line 167
    move v9, v7

    move v10, v3

    add-float/2addr v9, v10

    move v7, v9

    .line 169
    :cond_2
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->y1:F

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->x1:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Line2D;->y1:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Line2D;->x1:F

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v8, v9

    goto :goto_1

    .line 171
    :cond_3
    move v9, v2

    move v8, v9

    .line 172
    move v9, v5

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 173
    move v9, v8

    move v10, v4

    add-float/2addr v9, v10

    move v8, v9

    .line 175
    :cond_4
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->x1:F

    move v10, v8

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->y1:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Line2D;->x1:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Line2D;->y1:F

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    goto :goto_1

    .line 178
    :cond_5
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method public intersectsLine(FFFF)Z
    .locals 13

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-static/range {v5 .. v12}, Lcom/sun/javafx/geom/Line2D;->linesIntersect(FFFFFFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public intersectsLine(Lcom/sun/javafx/geom/Line2D;)Z
    .locals 10

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "l":Lcom/sun/javafx/geom/Line2D;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-static/range {v2 .. v9}, Lcom/sun/javafx/geom/Line2D;->linesIntersect(FFFFFFFF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptLineDist(FF)F
    .locals 9

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/Line2D;->ptLineDist(FFFFFF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptLineDist(Lcom/sun/javafx/geom/Point2D;)F
    .locals 8

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptLineDist(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptLineDistSq(FF)F
    .locals 9

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/Line2D;->ptLineDistSq(FFFFFF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptLineDistSq(Lcom/sun/javafx/geom/Point2D;)F
    .locals 8

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptLineDistSq(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptSegDist(FF)D
    .locals 9

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/Line2D;->ptSegDist(FFFFFF)F

    move-result v3

    float-to-double v3, v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return-wide v0
.end method

.method public ptSegDist(Lcom/sun/javafx/geom/Point2D;)F
    .locals 8

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptSegDist(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptSegDistSq(FF)F
    .locals 9

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public ptSegDistSq(Lcom/sun/javafx/geom/Point2D;)F
    .locals 8

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->ptSegDistSq(FFFFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public relativeCCW(FF)I
    .locals 9

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public relativeCCW(Lcom/sun/javafx/geom/Point2D;)I
    .locals 8

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Line2D;
    return v0
.end method

.method public setLine(FFFF)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->x1:F

    .line 98
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->y1:F

    .line 99
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    .line 100
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    .line 101
    return-void
.end method

.method public setLine(Lcom/sun/javafx/geom/Line2D;)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
    move-object v1, p1

    .local v1, "l":Lcom/sun/javafx/geom/Line2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 120
    return-void
.end method

.method public setLine(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 8

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Line2D;
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

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 111
    return-void
.end method

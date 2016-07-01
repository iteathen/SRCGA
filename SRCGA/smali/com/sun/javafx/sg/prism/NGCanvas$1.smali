.class Lcom/sun/javafx/sg/prism/NGCanvas$1;
.super Lcom/sun/javafx/geom/Shape;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/sg/prism/NGCanvas;


# direct methods
.method constructor <init>(Lcom/sun/javafx/sg/prism/NGCanvas;)V
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 9

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 442
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 443
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 444
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move v1, v3

    .line 445
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move v2, v3

    .line 446
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->contains(FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    return v0
.end method

.method public contains(FFFF)Z
    .locals 14

    .prologue
    .line 468
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move/from16 v4, p3

    .local v4, "w":F
    move/from16 v5, p4

    .local v5, "h":F
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 469
    move v8, v2

    float-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v2, v8

    .line 470
    move v8, v3

    float-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v3, v8

    .line 471
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->contains(FFFF)Z

    move-result v8

    move v1, v8

    .line 479
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :goto_0
    return v1

    .line 473
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v9}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$500(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v8

    move-object v6, v8

    .line 474
    .local v6, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v8, v6

    move v9, v2

    move v10, v3

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    move v12, v3

    move v13, v5

    add-float/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FFFF)I

    move-result v8

    move v7, v8

    .line 479
    .local v7, "crossings":I
    move v8, v7

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    move v8, v7

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public copy()Lcom/sun/javafx/geom/Shape;
    .locals 5

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 16

    .prologue
    .line 404
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 405
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v8

    move-object v1, v8

    .line 406
    .local v1, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 407
    move-object v8, v1

    move-object v0, v8

    .line 436
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    .end local v1    # "rb":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 409
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    .restart local v1    # "rb":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v8

    double-to-float v8, v8

    move v2, v8

    .line 410
    .local v2, "tx":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    .line 411
    .local v3, "ty":F
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v10

    move v11, v2

    sub-float/2addr v10, v11

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v11

    move v12, v3

    sub-float/2addr v11, v12

    move-object v12, v1

    .line 412
    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v12

    move v13, v2

    sub-float/2addr v12, v13

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v13

    move v14, v3

    sub-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v8

    goto :goto_0

    .line 421
    .end local v1    # "rb":Lcom/sun/javafx/geom/RectBounds;
    .end local v2    # "tx":F
    .end local v3    # "ty":F
    :cond_1
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    move v1, v8

    .line 422
    .local v1, "x0":F
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    move v2, v8

    .line 423
    .local v2, "y0":F
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    move v3, v8

    .line 424
    .local v3, "x1":F
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    move v4, v8

    .line 425
    .local v4, "y1":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v9}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$500(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v8

    move-object v5, v8

    .line 426
    .local v5, "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_7

    .line 427
    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->numCoords:[I

    move-object v9, v5

    sget-object v10, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    invoke-interface {v9, v10}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v9

    aget v8, v8, v9

    move v6, v8

    .line 428
    .local v6, "ncoords":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_2
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_6

    .line 429
    move v8, v1

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v10, v7

    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    move v1, v8

    .line 430
    :cond_2
    move v8, v3

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v10, v7

    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x0

    aget v9, v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    aget v8, v8, v9

    move v3, v8

    .line 431
    :cond_3
    move v8, v2

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v2, v8

    .line 432
    :cond_4
    move v8, v4

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v4, v8

    .line 428
    :cond_5
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 434
    :cond_6
    move-object v8, v5

    invoke-interface {v8}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 435
    goto :goto_1

    .line 436
    .end local v6    # "ncoords":I
    .end local v7    # "i":I
    :cond_7
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public getCombinedTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 5

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine2D;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    .line 489
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :goto_0
    return-object v0

    .line 484
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 485
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$500(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v3

    move-object v2, v3

    .line 486
    .local v2, "inv":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 487
    :cond_3
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_PATH_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 488
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_PATH_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 489
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_PATH_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v0, v3

    goto :goto_0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v2}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas$1;->getCombinedTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 6

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas$1;->getCombinedTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    return-object v0
.end method

.method public intersects(FFFF)Z
    .locals 14

    .prologue
    .line 451
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move/from16 v4, p3

    .local v4, "w":F
    move/from16 v5, p4

    .local v5, "h":F
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 452
    move v8, v2

    float-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v2, v8

    .line 453
    move v8, v3

    float-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v3, v8

    .line 454
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->intersects(FFFF)Z

    move-result v8

    move v1, v8

    .line 463
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :goto_0
    return v1

    .line 456
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$1;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v9}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$500(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v8

    move-object v6, v8

    .line 457
    .local v6, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v8, v6

    move v9, v2

    move v10, v3

    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    move v12, v3

    move v13, v5

    add-float/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/Shape;->rectCrossingsForPath(Lcom/sun/javafx/geom/PathIterator;FFFF)I

    move-result v8

    move v7, v8

    .line 463
    .local v7, "crossings":I
    move v8, v7

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

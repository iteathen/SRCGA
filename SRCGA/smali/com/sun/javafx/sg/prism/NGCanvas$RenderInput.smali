.class Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
.super Lcom/sun/scenario/effect/Effect;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderInput"
.end annotation


# instance fields
.field buf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

.field h:F

.field savedBoundsTx:Lcom/sun/javafx/geom/transform/Affine2D;

.field final synthetic this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

.field token:I

.field w:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/sun/javafx/sg/prism/NGCanvas;ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/RectBounds;)V
    .locals 10

    .prologue
    .line 1560
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move v2, p2

    .local v2, "token":I
    move-object v3, p3

    .local v3, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, p4

    .local v4, "boundsTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, p5

    .local v5, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 1556
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->savedBoundsTx:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 1561
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->token:I

    .line 1562
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->buf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 1563
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->savedBoundsTx:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1564
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v7

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->x:F

    .line 1565
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v7

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->y:F

    .line 1566
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v7

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->w:F

    .line 1567
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v7

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->h:F

    .line 1568
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 16

    .prologue
    .line 1575
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object/from16 v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v10, v0

    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v6, v10

    .line 1576
    .local v6, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 1577
    move-object v10, v6

    move-object v11, v3

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/BaseBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1579
    :cond_0
    new-instance v10, Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v6

    invoke-direct {v11, v12}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v7, v10

    .line 1580
    .local v7, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v10, v7

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    move-object v10, v7

    const/4 v11, 0x1

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 1581
    :cond_1
    move-object v10, v7

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_2

    move-object v10, v7

    const/4 v11, 0x1

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 1582
    :cond_2
    move-object v10, v1

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-static {v10, v11, v12}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v10

    check-cast v10, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v8, v10

    .line 1583
    .local v8, "ret":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v10, v8

    if-eqz v10, :cond_4

    .line 1584
    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v10

    move-object v9, v10

    .line 1585
    .local v9, "g":Lcom/sun/prism/Graphics;
    move-object v10, v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    invoke-static {v11}, Lcom/sun/javafx/sg/prism/NGCanvas;->access$800(Lcom/sun/javafx/sg/prism/NGCanvas;)F

    move-result v11

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 1586
    move-object v10, v9

    move-object v11, v7

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v11, v11

    int-to-float v11, v11

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-interface {v10, v11, v12}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 1587
    move-object v10, v2

    if-eqz v10, :cond_3

    .line 1588
    move-object v10, v9

    move-object v11, v2

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1590
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->buf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->restore()V

    .line 1591
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->this$0:Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->token:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->buf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v13, v9

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGCanvas;->handleRenderOp(ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RectBounds;)V

    .line 1593
    .end local v9    # "g":Lcom/sun/prism/Graphics;
    :cond_4
    new-instance v10, Lcom/sun/scenario/effect/ImageData;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v1

    move-object v13, v8

    move-object v14, v7

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    return-object v0
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 6

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12

    .prologue
    .line 1603
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->x:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->y:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->x:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->w:F

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->y:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->h:F

    add-float/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v3, v4

    .line 1604
    .local v3, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->savedBoundsTx:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1605
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;->savedBoundsTx:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-static {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTxBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1606
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->txBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1608
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 4

    .prologue
    .line 1618
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 1613
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    return v0
.end method

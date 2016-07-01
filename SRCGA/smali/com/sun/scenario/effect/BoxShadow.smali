.class public Lcom/sun/scenario/effect/BoxShadow;
.super Lcom/sun/scenario/effect/AbstractShadow;
.source "BoxShadow.java"


# instance fields
.field private final state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/BoxShadow;-><init>(II)V

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "hsize":I
    move v2, p2

    .local v2, "vsize":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    sget-object v7, Lcom/sun/scenario/effect/BoxShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/BoxShadow;-><init>(IIILcom/sun/scenario/effect/Effect;)V

    .line 78
    return-void
.end method

.method public constructor <init>(III)V
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "hsize":I
    move v2, p2

    .local v2, "vsize":I
    move v3, p3

    .local v3, "passes":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    sget-object v8, Lcom/sun/scenario/effect/BoxShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/effect/BoxShadow;-><init>(IIILcom/sun/scenario/effect/Effect;)V

    .line 99
    return-void
.end method

.method public constructor <init>(IIILcom/sun/scenario/effect/Effect;)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "hsize":I
    move v2, p2

    .local v2, "vsize":I
    move v3, p3

    .local v3, "passes":I
    move-object v4, p4

    .local v4, "input":Lcom/sun/scenario/effect/Effect;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/AbstractShadow;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 45
    move-object v5, v0

    new-instance v6, Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;-><init>()V

    iput-object v6, v5, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    .line 117
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxShadow;->setHorizontalSize(I)V

    .line 118
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxShadow;->setVerticalSize(I)V

    .line 119
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxShadow;->setPasses(I)V

    .line 120
    move-object v5, v0

    sget-object v6, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 121
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxShadow;->setSpread(F)V

    .line 122
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lcom/sun/scenario/effect/AbstractShadow;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v3, v7

    .line 364
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 365
    .local v4, "hgrow":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 366
    .local v5, "vgrow":I
    new-instance v7, Lcom/sun/javafx/geom/RectBounds;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v10

    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v11

    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v6, v7

    .line 367
    .local v6, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v6

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 368
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/scenario/effect/BoxShadow;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/BoxShadow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 391
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v5

    move-object v4, v5

    .line 393
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getKernelSize(I)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 395
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getGaussianHeight()F
    .locals 3

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxShadow;->getVerticalSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public getGaussianRadius()F
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/BoxShadow;->getHorizontalSize()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/BoxShadow;->getVerticalSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move v1, v2

    .line 294
    .local v1, "d":F
    move v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    move v1, v2

    .line 295
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    :cond_0
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getGaussianWidth()F
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxShadow;->getHorizontalSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public getHorizontalSize()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getHsize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxShadow;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxShadow;->getPasses()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    sget-object v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->THREE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    :goto_0
    return-object v0

    .line 325
    .restart local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    :pswitch_0
    sget-object v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ONE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v1

    goto :goto_0

    .line 327
    :pswitch_1
    sget-object v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->TWO_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v1

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPasses()I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getBlurPasses()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 377
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 378
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 379
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 380
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getSpread()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxShadow;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return-object v0
.end method

.method public getVerticalSize()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->getVsize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    sget-object v3, Lcom/sun/scenario/effect/BoxShadow$1;->$SwitchMap$com$sun$scenario$effect$AbstractShadow$ShadowMode:[I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 353
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    :goto_1
    return-object v0

    .line 336
    .restart local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    :pswitch_0
    new-instance v3, Lcom/sun/scenario/effect/GaussianShadow;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/scenario/effect/GaussianShadow;-><init>()V

    move-object v2, v3

    .line 337
    .local v2, "gs":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/BoxShadow;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 338
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/BoxShadow;->getGaussianWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setGaussianWidth(F)V

    .line 339
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/BoxShadow;->getGaussianHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setGaussianHeight(F)V

    .line 340
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/BoxShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 341
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/BoxShadow;->getSpread()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setSpread(F)V

    .line 342
    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    .line 344
    .end local v2    # "gs":Lcom/sun/scenario/effect/GaussianShadow;
    :pswitch_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setPasses(I)V

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setPasses(I)V

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setPasses(I)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxShadow;
    return v0
.end method

.method public final setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->setShadowColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 255
    return-void
.end method

.method public setGaussianHeight(F)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "h":F
    move v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    move v1, v2

    .line 319
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/BoxShadow;->setVerticalSize(I)V

    .line 320
    return-void
.end method

.method public setGaussianRadius(F)V
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "r":F
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    move v2, v3

    .line 308
    .local v2, "d":F
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setGaussianWidth(F)V

    .line 309
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setGaussianHeight(F)V

    .line 310
    return-void
.end method

.method public setGaussianWidth(F)V
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "w":F
    move v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    move v1, v2

    .line 314
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/BoxShadow;->setHorizontalSize(I)V

    .line 315
    return-void
.end method

.method public final setHorizontalSize(I)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "hsize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->setHsize(I)V

    .line 174
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/BoxShadow;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 148
    return-void
.end method

.method public final setPasses(I)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "passes":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->setBlurPasses(I)V

    .line 230
    return-void
.end method

.method public final setSpread(F)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "spread":F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->setSpread(F)V

    .line 290
    return-void
.end method

.method public final setVerticalSize(I)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxShadow;
    move v1, p1

    .local v1, "vsize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxShadow;->state:Lcom/sun/scenario/effect/impl/state/BoxShadowState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->setVsize(I)V

    .line 200
    return-void
.end method

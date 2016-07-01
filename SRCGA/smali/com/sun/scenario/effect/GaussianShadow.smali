.class public Lcom/sun/scenario/effect/GaussianShadow;
.super Lcom/sun/scenario/effect/AbstractShadow;
.source "GaussianShadow.java"


# instance fields
.field private state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(F)V

    .line 60
    return-void
.end method

.method public constructor <init>(F)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(FLcom/sun/scenario/effect/Color4f;)V

    .line 77
    return-void
.end method

.method public constructor <init>(FLcom/sun/scenario/effect/Color4f;)V
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v2, p2

    .local v2, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    sget-object v6, Lcom/sun/scenario/effect/GaussianShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(FLcom/sun/scenario/effect/Color4f;Lcom/sun/scenario/effect/Effect;)V

    .line 94
    return-void
.end method

.method public constructor <init>(FLcom/sun/scenario/effect/Color4f;Lcom/sun/scenario/effect/Effect;)V
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v2, p2

    .local v2, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, p3

    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/scenario/effect/AbstractShadow;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 47
    move-object v4, v0

    new-instance v5, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;-><init>()V

    iput-object v5, v4, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setRadius(F)V

    .line 109
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setShadowColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
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

    .line 341
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v7

    move v4, v7

    .line 342
    .local v4, "hpad":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v7

    move v5, v7

    .line 343
    .local v5, "vpad":I
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

    .line 344
    .local v6, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v6

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 345
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/scenario/effect/GaussianShadow;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/GaussianShadow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 369
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v5

    move-object v4, v5

    .line 371
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 373
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getGaussianHeight()F
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianShadow;->getVRadius()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public getGaussianRadius()F
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianShadow;->getRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public getGaussianWidth()F
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianShadow;->getHRadius()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public getHRadius()F
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getHRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianShadow;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    sget-object v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->GAUSSIAN:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 13

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-super {v8, v9, v10, v11}, Lcom/sun/scenario/effect/AbstractShadow;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    move-object v4, v8

    .line 354
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v8

    move v5, v8

    .line 355
    .local v5, "hpad":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getPad(I)I

    move-result v8

    move v6, v8

    .line 356
    .local v6, "vpad":I
    new-instance v8, Lcom/sun/javafx/geom/Rectangle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v7, v8

    .line 357
    .local v7, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v7

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 358
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getSpread()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianShadow;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return-object v0
.end method

.method public getVRadius()F
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getVRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;
    .locals 7

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    const/4 v4, 0x0

    move v2, v4

    .line 315
    .local v2, "passes":I
    sget-object v4, Lcom/sun/scenario/effect/GaussianShadow$1;->$SwitchMap$com$sun$scenario$effect$AbstractShadow$ShadowMode:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 328
    :goto_0
    new-instance v4, Lcom/sun/scenario/effect/BoxShadow;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/scenario/effect/BoxShadow;-><init>()V

    move-object v3, v4

    .line 329
    .local v3, "box":Lcom/sun/scenario/effect/BoxShadow;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/GaussianShadow;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 330
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/GaussianShadow;->getGaussianWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setGaussianWidth(F)V

    .line 331
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/GaussianShadow;->getGaussianHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setGaussianHeight(F)V

    .line 332
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/GaussianShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 333
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setPasses(I)V

    .line 334
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/GaussianShadow;->getSpread()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/BoxShadow;->setSpread(F)V

    .line 335
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    .end local v3    # "box":Lcom/sun/scenario/effect/BoxShadow;
    :goto_1
    return-object v0

    .line 317
    .restart local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    :pswitch_0
    move-object v4, v0

    move-object v0, v4

    goto :goto_1

    .line 319
    :pswitch_1
    const/4 v4, 0x1

    move v2, v4

    .line 320
    goto :goto_0

    .line 322
    :pswitch_2
    const/4 v4, 0x2

    move v2, v4

    .line 323
    goto :goto_0

    .line 325
    :pswitch_3
    const/4 v4, 0x3

    move v2, v4

    goto :goto_0

    .line 315
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
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianShadow;
    return v0
.end method

.method public setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v3

    move-object v2, v3

    .line 282
    .local v2, "old":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setShadowColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 283
    return-void
.end method

.method public setGaussianHeight(F)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "h":F
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/GaussianShadow;->setVRadius(F)V

    .line 307
    return-void

    .line 306
    :cond_0
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method public setGaussianRadius(F)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "r":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/GaussianShadow;->setRadius(F)V

    .line 299
    return-void
.end method

.method public setGaussianWidth(F)V
    .locals 5

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "w":F
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/GaussianShadow;->setHRadius(F)V

    .line 303
    return-void

    .line 302
    :cond_0
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method public setHRadius(F)V
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "hradius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getHRadius()F

    move-result v3

    move v2, v3

    .line 193
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setHRadius(F)V

    .line 194
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/GaussianShadow;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 140
    return-void
.end method

.method public setRadius(F)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getRadius()F

    move-result v3

    move v2, v3

    .line 166
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setRadius(F)V

    .line 167
    return-void
.end method

.method public setSpread(F)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "spread":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getSpread()F

    move-result v3

    move v2, v3

    .line 256
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setSpread(F)V

    .line 257
    return-void
.end method

.method public setVRadius(F)V
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianShadow;
    move v1, p1

    .local v1, "vradius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->getVRadius()F

    move-result v3

    move v2, v3

    .line 220
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianShadow;->state:Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->setVRadius(F)V

    .line 221
    return-void
.end method

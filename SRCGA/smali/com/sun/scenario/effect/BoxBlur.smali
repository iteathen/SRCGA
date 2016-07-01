.class public Lcom/sun/scenario/effect/BoxBlur;
.super Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
.source "BoxBlur.java"


# instance fields
.field private final state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/BoxBlur;-><init>(II)V

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move v1, p1

    .local v1, "hsize":I
    move v2, p2

    .local v2, "vsize":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    sget-object v7, Lcom/sun/scenario/effect/BoxBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/BoxBlur;-><init>(IIILcom/sun/scenario/effect/Effect;)V

    .line 78
    return-void
.end method

.method public constructor <init>(III)V
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
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

    sget-object v8, Lcom/sun/scenario/effect/BoxBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/effect/BoxBlur;-><init>(IIILcom/sun/scenario/effect/Effect;)V

    .line 99
    return-void
.end method

.method public constructor <init>(IIILcom/sun/scenario/effect/Effect;)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
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

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 45
    move-object v5, v0

    new-instance v6, Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;-><init>()V

    iput-object v6, v5, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    .line 117
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxBlur;->setHorizontalSize(I)V

    .line 118
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxBlur;->setVerticalSize(I)V

    .line 119
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/BoxBlur;->setPasses(I)V

    .line 120
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v3, v7

    .line 238
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 239
    .local v4, "hgrow":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 240
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

    .line 241
    .local v6, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v6

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 242
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/scenario/effect/BoxBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/BoxBlur;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 269
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v5

    move-object v4, v5

    .line 271
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getKernelSize(I)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getKernelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 273
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method public getHorizontalSize()I
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getHsize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxBlur;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method public getPasses()I
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getBlurPasses()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 251
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 252
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 253
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 254
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/BoxBlur;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return-object v0
.end method

.method public getVerticalSize()I
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getVsize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    const/4 v2, 0x1

    move v0, v2

    .line 263
    .end local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    :goto_0
    return v0

    .line 262
    .end local v1    # "input":Lcom/sun/scenario/effect/Effect;
    .restart local v0    # "this":Lcom/sun/scenario/effect/BoxBlur;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/BoxBlur;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 263
    .restart local v1    # "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final setHorizontalSize(I)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move v1, p1

    .local v1, "hsize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->setHsize(I)V

    .line 172
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/BoxBlur;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 146
    return-void
.end method

.method public final setPasses(I)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move v1, p1

    .local v1, "passes":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->setBlurPasses(I)V

    .line 228
    return-void
.end method

.method public final setVerticalSize(I)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/BoxBlur;
    move v1, p1

    .local v1, "vsize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/BoxBlur;->state:Lcom/sun/scenario/effect/impl/state/BoxBlurState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->setVsize(I)V

    .line 198
    return-void
.end method

.class public Lcom/sun/scenario/effect/GaussianBlur;
.super Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
.source "GaussianBlur.java"


# instance fields
.field private state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    sget-object v3, Lcom/sun/scenario/effect/GaussianBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/GaussianBlur;-><init>(FLcom/sun/scenario/effect/Effect;)V

    .line 56
    return-void
.end method

.method public constructor <init>(F)V
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/scenario/effect/GaussianBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/GaussianBlur;-><init>(FLcom/sun/scenario/effect/Effect;)V

    .line 72
    return-void
.end method

.method public constructor <init>(FLcom/sun/scenario/effect/Effect;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move v1, p1

    .local v1, "radius":F
    move-object v2, p2

    .local v2, "input":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 44
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;-><init>()V

    iput-object v4, v3, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    .line 84
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->setRadius(F)V

    .line 85
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
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

    .line 146
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v7

    move v4, v7

    .line 147
    .local v4, "hpad":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v7

    move v5, v7

    .line 148
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

    .line 149
    .local v6, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v6

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 150
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/scenario/effect/GaussianBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/GaussianBlur;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 178
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v5

    move-object v4, v5

    .line 180
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 182
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianBlur;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 13

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
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

    invoke-super {v8, v9, v10, v11}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    move-object v4, v8

    .line 159
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v8

    move v5, v8

    .line 160
    .local v5, "hpad":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v8

    move v6, v8

    .line 161
    .local v6, "vpad":I
    new-instance v8, Lcom/sun/javafx/geom/Rectangle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v7, v8

    .line 162
    .local v7, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v7

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 163
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/GaussianBlur;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const/4 v2, 0x1

    move v0, v2

    .line 172
    .end local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    :goto_0
    return v0

    .line 171
    .end local v1    # "input":Lcom/sun/scenario/effect/Effect;
    .restart local v0    # "this":Lcom/sun/scenario/effect/GaussianBlur;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/GaussianBlur;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 172
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

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/GaussianBlur;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 114
    return-void
.end method

.method public setRadius(F)V
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GaussianBlur;
    move v1, p1

    .local v1, "radius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getRadius()F

    move-result v3

    move v2, v3

    .line 140
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GaussianBlur;->state:Lcom/sun/scenario/effect/impl/state/GaussianBlurState;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->setRadius(F)V

    .line 141
    return-void
.end method

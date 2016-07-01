.class public Lcom/sun/scenario/effect/MotionBlur;
.super Lcom/sun/scenario/effect/LinearConvolveCoreEffect;
.source "MotionBlur.java"


# instance fields
.field private state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/scenario/effect/MotionBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/MotionBlur;-><init>(FFLcom/sun/scenario/effect/Effect;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move v1, p1

    .local v1, "radius":F
    move v2, p2

    .local v2, "angle":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    sget-object v6, Lcom/sun/scenario/effect/MotionBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/scenario/effect/MotionBlur;-><init>(FFLcom/sun/scenario/effect/Effect;)V

    .line 74
    return-void
.end method

.method public constructor <init>(FFLcom/sun/scenario/effect/Effect;)V
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move v1, p1

    .local v1, "radius":F
    move v2, p2

    .local v2, "angle":F
    move-object v3, p3

    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/scenario/effect/LinearConvolveCoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 44
    move-object v4, v0

    new-instance v5, Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;-><init>()V

    iput-object v5, v4, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    .line 88
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/MotionBlur;->setRadius(F)V

    .line 89
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/MotionBlur;->setAngle(F)V

    .line 90
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getAngle()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
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

    .line 174
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getHPad()I

    move-result v7

    move v4, v7

    .line 175
    .local v4, "hpad":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getVPad()I

    move-result v7

    move v5, v7

    .line 176
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

    .line 177
    .local v6, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v6

    check-cast v7, Lcom/sun/javafx/geom/RectBounds;

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 178
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/scenario/effect/MotionBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/MotionBlur;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 206
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v5

    move-object v4, v5

    .line 208
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getHPad()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getVPad()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 210
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/MotionBlur;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 13

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
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

    .line 187
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getHPad()I

    move-result v8

    move v5, v8

    .line 188
    .local v5, "hpad":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getVPad()I

    move-result v8

    move v6, v8

    .line 189
    .local v6, "vpad":I
    new-instance v8, Lcom/sun/javafx/geom/Rectangle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v7, v8

    .line 190
    .local v7, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v7

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 191
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method bridge synthetic getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/MotionBlur;->getState()Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    const/4 v2, 0x1

    move v0, v2

    .line 200
    .end local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    :goto_0
    return v0

    .line 199
    .end local v1    # "input":Lcom/sun/scenario/effect/Effect;
    .restart local v0    # "this":Lcom/sun/scenario/effect/MotionBlur;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/MotionBlur;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 200
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

.method public setAngle(F)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move v1, p1

    .local v1, "angle":F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->setAngle(F)V

    .line 169
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/MotionBlur;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 119
    return-void
.end method

.method public setRadius(F)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/MotionBlur;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/MotionBlur;->state:Lcom/sun/scenario/effect/impl/state/MotionBlurState;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->setRadius(F)V

    .line 145
    return-void
.end method

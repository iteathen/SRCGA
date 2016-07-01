.class public Lcom/sun/scenario/effect/DisplacementMap;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "DisplacementMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">;"
    }
.end annotation


# instance fields
.field private mapData:Lcom/sun/scenario/effect/FloatMap;

.field private offsetX:F

.field private offsetY:F

.field private scaleX:F

.field private scaleY:F

.field private wrap:Z


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FloatMap;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "mapData":Lcom/sun/scenario/effect/FloatMap;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/scenario/effect/DisplacementMap;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/DisplacementMap;-><init>(Lcom/sun/scenario/effect/FloatMap;Lcom/sun/scenario/effect/Effect;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/FloatMap;Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "mapData":Lcom/sun/scenario/effect/FloatMap;
    move-object v2, p2

    .local v2, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 44
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleX:F

    .line 45
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleY:F

    .line 46
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetX:F

    .line 47
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetY:F

    .line 75
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DisplacementMap;->setMapData(Lcom/sun/scenario/effect/FloatMap;)V

    .line 76
    move-object v3, v0

    const-string v4, "DisplacementMap"

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DisplacementMap;->updatePeerKey(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public varargs filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v5, p5

    .local v5, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public final getContentInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/DisplacementMap;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 8

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    move-object v3, v4

    .line 352
    .local v3, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v3

    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/DisplacementMap;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->deriveWithNewRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    .line 354
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public final getMapData()Lcom/sun/scenario/effect/FloatMap;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public getOffsetX()F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->offsetX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public getOffsetY()F
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->offsetY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->UnclippedUserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->scaleX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->scaleY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public getWrap()Z
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/DisplacementMap;->wrap:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return v0
.end method

.method public setContentInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/DisplacementMap;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 120
    return-void
.end method

.method public setMapData(Lcom/sun/scenario/effect/FloatMap;)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "mapData":Lcom/sun/scenario/effect/FloatMap;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Map data must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    move-object v2, v3

    .line 99
    .local v2, "old":Lcom/sun/scenario/effect/FloatMap;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    .line 100
    return-void
.end method

.method public setOffsetX(F)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move v1, p1

    .local v1, "offsetX":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetX:F

    move v2, v3

    .line 194
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetX:F

    .line 195
    return-void
.end method

.method public setOffsetY(F)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move v1, p1

    .local v1, "offsetY":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetY:F

    move v2, v3

    .line 219
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->offsetY:F

    .line 220
    return-void
.end method

.method public setScaleX(F)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move v1, p1

    .local v1, "scaleX":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleX:F

    move v2, v3

    .line 144
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleX:F

    .line 145
    return-void
.end method

.method public setScaleY(F)V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move v1, p1

    .local v1, "scaleY":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleY:F

    move v2, v3

    .line 169
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->scaleY:F

    .line 170
    return-void
.end method

.method public setWrap(Z)V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move v1, p1

    .local v1, "wrap":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/effect/DisplacementMap;->wrap:Z

    move v2, v3

    .line 246
    .local v2, "old":Z
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/scenario/effect/DisplacementMap;->wrap:Z

    .line 247
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v6, 0x7fc00000    # NaNf

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 18

    .prologue
    .line 294
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DisplacementMap;
    move-object/from16 v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v12, v0

    sget-object v13, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/DisplacementMap;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    .line 295
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v12

    move v4, v12

    .line 296
    .local v4, "rw":F
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    move v5, v12

    .line 297
    .local v5, "rh":F
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v13, v3

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v13

    sub-float/2addr v12, v13

    move v13, v4

    div-float/2addr v12, v13

    move v6, v12

    .line 298
    .local v6, "x":F
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v13, v3

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v13

    sub-float/2addr v12, v13

    move v13, v5

    div-float/2addr v12, v13

    move v7, v12

    .line 301
    .local v7, "y":F
    move v12, v6

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v7

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v6

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    move v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 302
    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    invoke-virtual {v13}, Lcom/sun/scenario/effect/FloatMap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v8, v12

    .line 303
    .local v8, "mx":I
    move v12, v7

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    invoke-virtual {v13}, Lcom/sun/scenario/effect/FloatMap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v9, v12

    .line 304
    .local v9, "my":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    move v13, v8

    move v14, v9

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/FloatMap;->getSample(III)F

    move-result v12

    move v10, v12

    .line 305
    .local v10, "dx":F
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/DisplacementMap;->mapData:Lcom/sun/scenario/effect/FloatMap;

    move v13, v8

    move v14, v9

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/FloatMap;->getSample(III)F

    move-result v12

    move v11, v12

    .line 306
    .local v11, "dy":F
    move v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/sun/scenario/effect/DisplacementMap;->scaleX:F

    move v14, v10

    move-object v15, v0

    iget v15, v15, Lcom/sun/scenario/effect/DisplacementMap;->offsetX:F

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v6, v12

    .line 307
    move v12, v7

    move-object v13, v0

    iget v13, v13, Lcom/sun/scenario/effect/DisplacementMap;->scaleY:F

    move v14, v11

    move-object v15, v0

    iget v15, v15, Lcom/sun/scenario/effect/DisplacementMap;->offsetY:F

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v7, v12

    .line 308
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/scenario/effect/DisplacementMap;->wrap:Z

    if-eqz v12, :cond_0

    .line 309
    move v12, v6

    float-to-double v12, v12

    move v14, v6

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v12, v12

    move v6, v12

    .line 310
    move v12, v7

    float-to-double v12, v12

    move v14, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v12, v12

    move v7, v12

    .line 312
    :cond_0
    new-instance v12, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move v14, v6

    move v15, v4

    mul-float/2addr v14, v15

    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v15

    add-float/2addr v14, v15

    move v15, v7

    move/from16 v16, v5

    mul-float v15, v15, v16

    move-object/from16 v16, v3

    .line 313
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v16

    add-float v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v12

    .line 315
    .end local v8    # "mx":I
    .end local v9    # "my":I
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    :cond_1
    move-object v12, v0

    const/4 v13, 0x0

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/DisplacementMap;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v12

    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/scenario/effect/DisplacementMap;
    return-object v0
.end method

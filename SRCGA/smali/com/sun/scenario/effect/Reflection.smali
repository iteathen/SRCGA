.class public Lcom/sun/scenario/effect/Reflection;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "Reflection.java"


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
.field private bottomOpacity:F

.field private fraction:F

.field private topOffset:F

.field private topOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/Reflection;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/Reflection;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/Reflection;->topOffset:F

    .line 68
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/sun/scenario/effect/Reflection;->topOpacity:F

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/Reflection;->bottomOpacity:F

    .line 70
    move-object v2, v0

    const/high16 v3, 0x3f400000    # 0.75f

    iput v3, v2, Lcom/sun/scenario/effect/Reflection;->fraction:F

    .line 71
    move-object v2, v0

    const-string v3, "Reflection"

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Reflection;->updatePeerKey(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public getBottomOpacity()F
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Reflection;->bottomOpacity:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17

    .prologue
    .line 222
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object/from16 v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/Reflection;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v10

    move-object v3, v10

    .line 223
    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v10, v3

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v4, v10

    .line 224
    .local v4, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->roundOut()V

    .line 225
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v10

    move v5, v10

    .line 226
    .local v5, "x1":F
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/scenario/effect/Reflection;->topOffset:F

    add-float/2addr v10, v11

    move v6, v10

    .line 227
    .local v6, "y1":F
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v10

    move v7, v10

    .line 228
    .local v7, "x2":F
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/scenario/effect/Reflection;->fraction:F

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v8, v10

    .line 229
    .local v8, "y2":F
    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v9, v10

    .line 230
    .local v9, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v9

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v9, v10

    .line 231
    move-object v10, v1

    move-object v11, v9

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/Reflection;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 22

    .prologue
    .line 266
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object/from16 v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Reflection;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v14

    move-object v3, v14

    .line 267
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v14, v3

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v14

    move-object v4, v14

    .line 269
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v14, v3

    sget-object v15, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v14

    move-object v5, v14

    .line 270
    .local v5, "contentBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v14

    move v6, v14

    .line 271
    .local v6, "cbMaxY":F
    const/high16 v14, 0x40000000    # 2.0f

    move v15, v6

    mul-float/2addr v14, v15

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sun/scenario/effect/Reflection;->getTopOffset()F

    move-result v15

    add-float/2addr v14, v15

    move v7, v14

    .line 272
    .local v7, "reflectedMaxYBase":F
    move v14, v6

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sun/scenario/effect/Reflection;->getTopOffset()F

    move-result v15

    add-float/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Lcom/sun/scenario/effect/Reflection;->fraction:F

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v8, v14

    .line 273
    .local v8, "reflecteCbMaxY":F
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v14

    move-object v9, v14

    .line 274
    .local v9, "newDRC":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_0
    move v14, v10

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 275
    move-object v14, v4

    move v15, v10

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v14

    move-object v11, v14

    .line 276
    .local v11, "regionBounds":Lcom/sun/javafx/geom/BaseBounds;
    move v14, v7

    move-object v15, v11

    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v15

    sub-float/2addr v14, v15

    move v12, v14

    .line 277
    .local v12, "reflectedRegionMinY":F
    move v14, v8

    move v15, v12

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v16

    add-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move v13, v14

    .line 279
    .local v13, "reflectedRegionMaxY":F
    move-object v14, v9

    new-instance v15, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v17

    move/from16 v18, v12

    move-object/from16 v19, v11

    .line 281
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v19

    move/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    .line 279
    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->addDirtyRegion(Lcom/sun/javafx/geom/RectBounds;)V

    .line 274
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 284
    .end local v11    # "regionBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v12    # "reflectedRegionMinY":F
    .end local v13    # "reflectedRegionMaxY":F
    :cond_0
    move-object v14, v4

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 285
    move-object v14, v2

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 287
    move-object v14, v4

    move-object v0, v14

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public getFraction()F
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Reflection;->fraction:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Reflection;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public getTopOffset()F
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Reflection;->topOffset:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return v0
.end method

.method public getTopOpacity()F
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Reflection;->topOpacity:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Reflection;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 261
    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBottomOpacity(F)V
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move v1, p1

    .local v1, "bottomOpacity":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 179
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Bottom opacity must be in the range [0,1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Reflection;->bottomOpacity:F

    move v2, v3

    .line 182
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Reflection;->bottomOpacity:F

    .line 183
    return-void
.end method

.method public setFraction(F)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move v1, p1

    .local v1, "fraction":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 212
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Fraction must be in the range [0,1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Reflection;->fraction:F

    move v2, v3

    .line 215
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Reflection;->fraction:F

    .line 216
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Reflection;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 92
    return-void
.end method

.method public setTopOffset(F)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move v1, p1

    .local v1, "topOffset":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Reflection;->topOffset:F

    move v2, v3

    .line 118
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Reflection;->topOffset:F

    .line 119
    return-void
.end method

.method public setTopOpacity(F)V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move v1, p1

    .local v1, "topOpacity":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Top opacity must be in the range [0,1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Reflection;->topOpacity:F

    move v2, v3

    .line 150
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Reflection;->topOpacity:F

    .line 151
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Reflection;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Reflection;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Reflection;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Reflection;
    return-object v0
.end method

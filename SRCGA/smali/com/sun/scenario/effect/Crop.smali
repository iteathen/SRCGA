.class public Lcom/sun/scenario/effect/Crop;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "source":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/scenario/effect/Crop;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/Crop;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "source":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "boundsInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 64
    move-object v3, v0

    const-string v4, "Crop"

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Crop;->updatePeerKey(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private getBoundsInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 24

    .prologue
    .line 171
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/Crop;
    move-object/from16 v2, p1

    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p4

    .local v5, "renderHelper":Ljava/lang/Object;
    move-object/from16 v6, p5

    .local v6, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v14, v1

    const/4 v15, 0x1

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v14

    move-object v7, v14

    .line 172
    .local v7, "input1":Lcom/sun/scenario/effect/Effect;
    move-object v14, v7

    move-object v15, v3

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v14

    move-object v8, v14

    .line 173
    .local v8, "cropBounds":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v9, v14

    .line 174
    .local v9, "cropRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v9

    move-object v15, v4

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 175
    move-object v14, v1

    const/4 v15, 0x0

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v14

    move-object v10, v14

    .line 176
    .local v10, "input0":Lcom/sun/scenario/effect/Effect;
    move-object v14, v10

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    const/16 v18, 0x0

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v14

    move-object v11, v14

    .line 177
    .local v11, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v14, v11

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 178
    new-instance v14, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v1, v14

    .line 183
    .end local v1    # "this":Lcom/sun/scenario/effect/Crop;
    :goto_0
    return-object v1

    .line 180
    .restart local v1    # "this":Lcom/sun/scenario/effect/Crop;
    :cond_0
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/effect/Crop;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v14

    move-object v12, v14

    .line 181
    .local v12, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    move-object/from16 v18, v12

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v11

    aput-object v22, v20, v21

    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/effect/Crop;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v14

    move-object v13, v14

    .line 182
    .local v13, "ret":Lcom/sun/scenario/effect/ImageData;
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 183
    move-object v14, v13

    move-object v1, v14

    goto :goto_0
.end method

.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/Crop;->getBoundsInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public final getBoundsInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Crop;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 11

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v8

    move-object v3, v8

    .line 210
    .local v3, "di0":Lcom/sun/scenario/effect/Effect;
    move-object v8, v3

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v8

    move-object v4, v8

    .line 211
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v8

    move-object v5, v8

    .line 212
    .local v5, "di1":Lcom/sun/scenario/effect/Effect;
    move-object v8, v5

    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v6, v8

    .line 213
    .local v6, "cropBounds":Lcom/sun/javafx/geom/BaseBounds;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 214
    move-object v8, v4

    move v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 215
    move-object v8, v4

    move v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->checkAndClearRegion(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 216
    add-int/lit8 v7, v7, -0x1

    .line 213
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 220
    :cond_1
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Crop;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
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
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return v0
.end method

.method public setBoundsInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Crop;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 106
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Crop;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 85
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Crop;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Crop;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Crop;
    return-object v0
.end method

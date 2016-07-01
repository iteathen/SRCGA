.class public Lcom/sun/scenario/effect/Merge;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "Merge.java"


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
.method public constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    .local v1, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 49
    move-object v3, v0

    const-string v4, "Merge"

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Merge;->updatePeerKey(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 23

    .prologue
    .line 146
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/Merge;
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
    move-object v13, v1

    const/4 v14, 0x0

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/sun/scenario/effect/Merge;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v13

    move-object v7, v13

    .line 147
    .local v7, "botinput":Lcom/sun/scenario/effect/Effect;
    move-object v13, v1

    const/4 v14, 0x1

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/sun/scenario/effect/Merge;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v13

    move-object v8, v13

    .line 148
    .local v8, "topinput":Lcom/sun/scenario/effect/Effect;
    move-object v13, v7

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v9, v13

    .line 150
    .local v9, "botimg":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v9

    if-eqz v13, :cond_1

    .line 151
    move-object v13, v9

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 152
    new-instance v13, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v1, v13

    .line 176
    .end local v1    # "this":Lcom/sun/scenario/effect/Merge;
    :goto_0
    return-object v1

    .line 154
    .restart local v1    # "this":Lcom/sun/scenario/effect/Merge;
    :cond_0
    move-object v13, v5

    instance-of v13, v13, Lcom/sun/scenario/effect/ImageDataRenderer;

    if-eqz v13, :cond_1

    .line 155
    move-object v13, v5

    check-cast v13, Lcom/sun/scenario/effect/ImageDataRenderer;

    move-object v10, v13

    .line 156
    .local v10, "imgr":Lcom/sun/scenario/effect/ImageDataRenderer;
    move-object v13, v10

    move-object v14, v9

    sget-object v15, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v16, v2

    invoke-interface/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageDataRenderer;->renderImage(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/FilterContext;)V

    .line 157
    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 158
    const/4 v13, 0x0

    move-object v9, v13

    .line 161
    .end local v10    # "imgr":Lcom/sun/scenario/effect/ImageDataRenderer;
    :cond_1
    move-object v13, v9

    if-nez v13, :cond_2

    .line 162
    move-object v13, v8

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v1, v13

    goto :goto_0

    .line 165
    :cond_2
    move-object v13, v8

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    const/16 v17, 0x0

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v10, v13

    .line 167
    .local v10, "topimg":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v10

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 168
    new-instance v13, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v1, v13

    goto :goto_0

    .line 170
    :cond_3
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/Merge;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v13

    move-object v11, v13

    .line 172
    .local v11, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v9

    aput-object v21, v19, v20

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x1

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    invoke-virtual/range {v13 .. v18}, Lcom/sun/scenario/effect/Merge;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v13

    move-object v12, v13

    .line 174
    .local v12, "ret":Lcom/sun/scenario/effect/ImageData;
    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 175
    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 176
    move-object v13, v12

    move-object v1, v13

    goto/16 :goto_0
.end method

.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public final getBottomInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Merge;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public final getTopInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Merge;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Merge;->getTopInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 192
    .local v1, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Merge;->getBottomInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 193
    .local v2, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/Merge;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBottomInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    .local v1, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Merge;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 70
    return-void
.end method

.method public setTopInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    .local v1, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Merge;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 90
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Merge;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Merge;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Merge;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Merge;
    return-object v0
.end method

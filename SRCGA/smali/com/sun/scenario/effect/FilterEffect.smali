.class public abstract Lcom/sun/scenario/effect/FilterEffect;
.super Lcom/sun/scenario/effect/Effect;
.source "FilterEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/Effect;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/Effect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object v1, p1

    .local v1, "input1":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "input2":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 53
    return-void
.end method

.method protected static untransformClip(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 15

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p1

    .local v2, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    :cond_0
    move-object v10, v2

    move-object v1, v10

    .line 136
    .end local v1    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return-object v1

    .line 101
    .restart local v1    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    new-instance v10, Lcom/sun/javafx/geom/Rectangle;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    move-object v3, v10

    .line 102
    .local v3, "transformedBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 106
    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 107
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v10

    neg-double v10, v10

    move-wide v4, v10

    .line 108
    .local v4, "tx":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v10

    neg-double v10, v10

    move-wide v6, v10

    .line 109
    .local v6, "ty":D
    move-wide v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v8, v10

    .line 110
    .local v8, "itx":I
    move-wide v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v9, v10

    .line 111
    .local v9, "ity":I
    move-object v10, v3

    move v11, v8

    move v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Rectangle;->translate(II)V

    .line 112
    move v10, v8

    int-to-double v10, v10

    move-wide v12, v4

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    .line 114
    move-object v10, v3

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 116
    :cond_2
    move v10, v9

    int-to-double v10, v10

    move-wide v12, v6

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_3

    .line 118
    move-object v10, v3

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 120
    :cond_3
    move-object v10, v3

    move-object v1, v10

    goto :goto_0

    .line 122
    .end local v4    # "tx":D
    .end local v6    # "ty":D
    .end local v8    # "itx":I
    .end local v9    # "ity":I
    :cond_4
    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v4, v10

    .line 124
    .local v4, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v10, v4

    const/high16 v11, -0x41000000    # -0.5f

    const/high16 v12, -0x41000000    # -0.5f

    :try_start_0
    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 125
    move-object v10, v1

    move-object v11, v4

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v10

    .line 126
    move-object v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 127
    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    :goto_1
    move-object v10, v3

    move-object v1, v10

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v10

    move-object v5, v10

    goto :goto_1
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 26

    .prologue
    .line 170
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object/from16 v3, p1

    .local v3, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v4, p2

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p3

    .local v5, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p4

    .local v6, "renderHelper":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Lcom/sun/scenario/effect/FilterEffect;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v17

    move-object/from16 v8, v17

    .line 172
    .local v8, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;, "TT;"
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/FilterEffect;->getNumInputs()I

    move-result v17

    move/from16 v9, v17

    .line 173
    .local v9, "numinputs":I
    move/from16 v17, v9

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 175
    .local v10, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v17, v8

    move-object/from16 v18, v4

    invoke-interface/range {v17 .. v18}, Lcom/sun/scenario/effect/impl/state/RenderState;->getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v17

    move-object/from16 v12, v17

    .line 176
    .local v12, "inputtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v17, v8

    move-object/from16 v18, v4

    invoke-interface/range {v17 .. v18}, Lcom/sun/scenario/effect/impl/state/RenderState;->getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v17

    move-object/from16 v13, v17

    .line 177
    .local v13, "resulttx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 178
    move-object/from16 v17, v5

    move-object/from16 v11, v17

    .line 182
    .local v11, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    :goto_0
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "i":I
    :goto_1
    move/from16 v17, v14

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 183
    move-object/from16 v17, v2

    move/from16 v18, v14

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Lcom/sun/scenario/effect/FilterEffect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v17

    move-object/from16 v15, v17

    .line 184
    .local v15, "input":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v17, v10

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v8

    move/from16 v23, v14

    move-object/from16 v24, v11

    .line 186
    invoke-interface/range {v22 .. v24}, Lcom/sun/scenario/effect/impl/state/RenderState;->getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v24, v7

    .line 185
    invoke-virtual/range {v19 .. v24}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v19

    aput-object v19, v17, v18

    .line 188
    move-object/from16 v17, v10

    move/from16 v18, v14

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 189
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "j":I
    :goto_2
    move/from16 v17, v16

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 190
    move-object/from16 v17, v10

    move/from16 v18, v16

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 189
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 180
    .end local v11    # "filterClip":Lcom/sun/javafx/geom/Rectangle;
    .end local v14    # "i":I
    .end local v15    # "input":Lcom/sun/scenario/effect/Effect;
    .end local v16    # "j":I
    :cond_0
    move-object/from16 v17, v13

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v18}, Lcom/sun/scenario/effect/FilterEffect;->untransformClip(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v17

    move-object/from16 v11, v17

    .restart local v11    # "filterClip":Lcom/sun/javafx/geom/Rectangle;
    goto :goto_0

    .line 192
    .restart local v14    # "i":I
    .restart local v15    # "input":Lcom/sun/scenario/effect/Effect;
    .restart local v16    # "j":I
    :cond_1
    new-instance v17, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v19, v3

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v17

    .line 209
    .end local v2    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    .end local v14    # "i":I
    .end local v15    # "input":Lcom/sun/scenario/effect/Effect;
    .end local v16    # "j":I
    :goto_3
    return-object v2

    .line 182
    .restart local v2    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    .restart local v14    # "i":I
    .restart local v15    # "input":Lcom/sun/scenario/effect/Effect;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 195
    .end local v15    # "input":Lcom/sun/scenario/effect/Effect;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    invoke-virtual/range {v17 .. v22}, Lcom/sun/scenario/effect/FilterEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v17

    move-object/from16 v14, v17

    .line 196
    .local v14, "ret":Lcom/sun/scenario/effect/ImageData;
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_4
    move/from16 v17, v15

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 197
    move-object/from16 v17, v10

    move/from16 v18, v15

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 196
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 199
    :cond_4
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v17

    if-nez v17, :cond_5

    .line 200
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/scenario/effect/ImageDataRenderer;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 201
    move-object/from16 v17, v6

    check-cast v17, Lcom/sun/scenario/effect/ImageDataRenderer;

    move-object/from16 v15, v17

    .line 202
    .local v15, "renderer":Lcom/sun/scenario/effect/ImageDataRenderer;
    move-object/from16 v17, v15

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    invoke-interface/range {v17 .. v20}, Lcom/sun/scenario/effect/ImageDataRenderer;->renderImage(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/FilterContext;)V

    .line 203
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 204
    const/16 v17, 0x0

    move-object/from16 v14, v17

    .line 209
    .end local v15    # "renderer":Lcom/sun/scenario/effect/ImageDataRenderer;
    :cond_5
    :goto_5
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    goto :goto_3

    .line 206
    .local v15, "i":I
    :cond_6
    move-object/from16 v17, v14

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v17

    move-object/from16 v14, v17

    goto :goto_5
.end method

.method protected varargs abstract filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Lcom/sun/javafx/geom/Rectangle;",
            "TT;[",
            "Lcom/sun/scenario/effect/ImageData;",
            ")",
            "Lcom/sun/scenario/effect/ImageData;"
        }
    .end annotation
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 16

    .prologue
    .line 59
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object/from16 v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/scenario/effect/FilterEffect;->getNumInputs()I

    move-result v10

    move v3, v10

    .line 60
    .local v3, "numinputs":I
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Lcom/sun/scenario/effect/FilterEffect;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v10

    move-object v4, v10

    .line 62
    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object v10, v4

    move-object v11, v1

    invoke-interface {v10, v11}, Lcom/sun/scenario/effect/impl/state/RenderState;->getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    move-object v5, v10

    .line 64
    .local v5, "inputtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v10, v3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 65
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/FilterEffect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v10

    move-object v7, v10

    .line 66
    .local v7, "input":Lcom/sun/scenario/effect/Effect;
    move-object v10, v7

    move-object v11, v5

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v6, v10

    .line 75
    .end local v7    # "input":Lcom/sun/scenario/effect/Effect;
    .local v6, "ret":Lcom/sun/javafx/geom/BaseBounds;
    :goto_0
    move-object v10, v4

    move-object v11, v1

    invoke-interface {v10, v11}, Lcom/sun/scenario/effect/impl/state/RenderState;->getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    move-object v11, v6

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/FilterEffect;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    return-object v0

    .line 68
    .end local v6    # "ret":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v0    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    :cond_0
    move v10, v3

    new-array v10, v10, [Lcom/sun/javafx/geom/BaseBounds;

    move-object v7, v10

    .line 69
    .local v7, "inputBounds":[Lcom/sun/javafx/geom/BaseBounds;
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move v11, v3

    if-ge v10, v11, :cond_1

    .line 70
    move-object v10, v0

    move v11, v8

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/FilterEffect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v10

    move-object v9, v10

    .line 71
    .local v9, "input":Lcom/sun/scenario/effect/Effect;
    move-object v10, v7

    move v11, v8

    move-object v12, v9

    move-object v13, v5

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    aput-object v12, v10, v11

    .line 69
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    .end local v9    # "input":Lcom/sun/scenario/effect/Effect;
    :cond_1
    move-object v10, v7

    invoke-static {v10}, Lcom/sun/scenario/effect/FilterEffect;->combineBounds([Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v6, v10

    .restart local v6    # "ret":Lcom/sun/javafx/geom/BaseBounds;
    goto :goto_0
.end method

.method public abstract getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Lcom/sun/javafx/geom/Rectangle;",
            "Ljava/lang/Object;",
            "Lcom/sun/scenario/effect/Effect;",
            ")TT;"
        }
    .end annotation
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/FilterEffect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/FilterEffect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/FilterEffect;, "Lcom/sun/scenario/effect/FilterEffect<TT;>;"
    return-object v0
.end method

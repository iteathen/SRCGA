.class public final Lcom/sun/javafx/sg/prism/NodeEffectInput;
.super Lcom/sun/scenario/effect/Effect;
.source "NodeEffectInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    }
.end annotation


# instance fields
.field private cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

.field private cachedTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

.field private node:Lcom/sun/javafx/sg/prism/NGNode;

.field private renderType:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

.field private tempBounds:Lcom/sun/javafx/geom/BaseBounds;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->EFFECT_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NodeEffectInput;-><init>(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, p2

    .local v2, "renderType":Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 52
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NodeEffectInput;->tempBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 63
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    .line 64
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NodeEffectInput;->renderType:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    .line 65
    return-void
.end method

.method static contains(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "cachedImage":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "imgbounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v3

    move-object v2, v3

    .line 81
    .local v2, "cachedBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Rectangle;->contains(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v3

    move v0, v3

    .end local v0    # "cachedImage":Lcom/sun/scenario/effect/ImageData;
    return v0
.end method

.method static getImageBoundsForNode(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 10

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "type":Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "clip":Lcom/sun/javafx/geom/Rectangle;
    new-instance v6, Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v4, v6

    .line 199
    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    sget-object v6, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 210
    :goto_0
    new-instance v6, Lcom/sun/javafx/geom/Rectangle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v5, v6

    .line 211
    .local v5, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 212
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 214
    :cond_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "node":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0

    .line 201
    .end local v5    # "r":Lcom/sun/javafx/geom/Rectangle;
    .restart local v0    # "node":Lcom/sun/javafx/sg/prism/NGNode;
    :pswitch_0
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v4, v6

    .line 202
    goto :goto_0

    .line 204
    :pswitch_1
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v4, v6

    .line 205
    goto :goto_0

    .line 207
    :pswitch_2
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getImageDataForBoundedNode(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 13

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, p2

    .local v2, "renderType":Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    move-object/from16 v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v0

    move-object v8, v4

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 228
    invoke-static {v7, v8, v9}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v7

    check-cast v7, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v5, v7

    .line 229
    .local v5, "ret":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 230
    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v7

    move-object v6, v7

    .line 231
    .local v6, "g":Lcom/sun/prism/Graphics;
    move-object v7, v6

    move-object v8, v4

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-interface {v7, v8, v9}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 232
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 233
    move-object v7, v6

    move-object v8, v3

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 235
    :cond_0
    sget-object v7, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 247
    .end local v6    # "g":Lcom/sun/prism/Graphics;
    :cond_1
    :goto_0
    new-instance v7, Lcom/sun/scenario/effect/ImageData;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v5

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v7

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0

    .line 237
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    .restart local v6    # "g":Lcom/sun/prism/Graphics;
    :pswitch_0
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 241
    goto :goto_0

    .line 243
    :pswitch_2
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->renderForClip(Lcom/sun/prism/Graphics;)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static getImageDataForNode(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/sg/prism/NGNode;ZLcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move v2, p2

    .local v2, "contentOnly":Z
    move-object v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "clip":Lcom/sun/javafx/geom/Rectangle;
    move v7, v2

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->EFFECT_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    :goto_0
    move-object v5, v7

    .line 190
    .local v5, "rendertype":Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    move-object v7, v1

    move-object v8, v5

    move-object v9, v3

    move-object v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->getImageBoundsForNode(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    move-object v6, v7

    .line 191
    .local v6, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    move-object v10, v3

    move-object v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->getImageDataForBoundedNode(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0

    .line 187
    .end local v5    # "rendertype":Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;
    .end local v6    # "r":Lcom/sun/javafx/geom/Rectangle;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    sget-object v7, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->FULL_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    goto :goto_0
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 13

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v8, v4

    instance-of v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;

    if-eqz v8, :cond_0

    .line 104
    move-object v8, v4

    check-cast v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->getGraphics()Lcom/sun/prism/Graphics;

    move-result-object v8

    move-object v6, v8

    .line 105
    .local v6, "g":Lcom/sun/prism/Graphics;
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 106
    move-object v8, v0

    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->render(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 107
    const/4 v8, 0x0

    move-object v0, v8

    .line 142
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    .end local v6    # "g":Lcom/sun/prism/Graphics;
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NodeEffectInput;->renderType:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    move-object v10, v2

    move-object v11, v3

    .line 111
    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->getImageBoundsForNode(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    move-object v6, v8

    .line 112
    .local v6, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v9, v6

    .line 114
    invoke-static {v8, v9}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->contains(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v9, v1

    .line 115
    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 117
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v8

    .line 118
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v0, v8

    goto :goto_0

    .line 120
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v9, v6

    .line 121
    invoke-static {v8, v9}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->contains(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v9, v1

    .line 122
    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v9, v2

    .line 123
    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 125
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v8

    .line 126
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object v0, v8

    goto :goto_0

    .line 130
    :cond_2
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NodeEffectInput;->renderType:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    move-object v11, v2

    move-object v12, v6

    .line 131
    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->getImageDataForBoundedNode(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v8

    move-object v7, v8

    .line 132
    .local v7, "retData":Lcom/sun/scenario/effect/ImageData;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 133
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flushIdentityImage()V

    .line 134
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    .line 135
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v8

    .line 142
    :goto_1
    move-object v8, v7

    move-object v0, v8

    goto/16 :goto_0

    .line 137
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flushTransformedImage()V

    .line 138
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 139
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    .line 140
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v8

    goto :goto_1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flushIdentityImage()V

    .line 167
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flushTransformedImage()V

    .line 168
    return-void
.end method

.method public flushIdentityImage()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v1, :cond_0

    .line 152
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 153
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedIdentityImageData:Lcom/sun/scenario/effect/ImageData;

    .line 155
    :cond_0
    return-void
.end method

.method public flushTransformedImage()V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransformedImageData:Lcom/sun/scenario/effect/ImageData;

    .line 162
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->cachedTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 163
    return-void
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v4, v1

    if-nez v4, :cond_0

    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object v3, v4

    .line 92
    .local v3, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NodeEffectInput;->tempBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGNode;->getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NodeEffectInput;->tempBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 93
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NodeEffectInput;->tempBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->copy()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    return-object v0

    .line 90
    .end local v3    # "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    return-object v0
.end method

.method public getNode()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    return v0
.end method

.method public render(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    const/4 v4, 0x0

    move-object v3, v4

    .line 172
    .local v3, "savetx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move-object v3, v4

    .line 174
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 176
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 177
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 178
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 180
    :cond_1
    return-void
.end method

.method public setNode(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 73
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NodeEffectInput;->node:Lcom/sun/javafx/sg/prism/NGNode;

    .line 74
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flush()V

    .line 76
    :cond_0
    return-void
.end method

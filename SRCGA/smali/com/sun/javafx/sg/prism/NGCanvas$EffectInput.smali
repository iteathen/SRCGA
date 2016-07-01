.class Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
.super Lcom/sun/scenario/effect/Effect;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EffectInput"
.end annotation


# instance fields
.field pixelscale:F

.field tex:Lcom/sun/prism/RTTexture;


# direct methods
.method constructor <init>(Lcom/sun/prism/RTTexture;)V
    .locals 4

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/RTTexture;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 1647
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    .line 1648
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->pixelscale:F

    .line 1649
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 17

    .prologue
    .line 1660
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
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
    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    invoke-static {v11, v12}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->create(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-result-object v11

    move-object v7, v11

    .line 1661
    .local v7, "f":Lcom/sun/scenario/effect/Filterable;
    new-instance v11, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v13}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    move-object v8, v11

    .line 1662
    .local v8, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v11, v7

    invoke-interface {v11}, Lcom/sun/scenario/effect/Filterable;->lock()V

    .line 1663
    new-instance v11, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v2

    move-object v14, v7

    move-object v15, v8

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v9, v11

    .line 1664
    .local v9, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v11, v9

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sun/scenario/effect/ImageData;->setReusable(Z)V

    .line 1665
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->pixelscale:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1666
    :cond_0
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v10, v11

    .line 1667
    .local v10, "a2d":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v11, v10

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->pixelscale:F

    div-float/2addr v12, v13

    float-to-double v12, v12

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->pixelscale:F

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1668
    move-object v11, v10

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1669
    move-object v11, v9

    move-object v12, v10

    invoke-virtual {v11, v12}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v11

    move-object v9, v11

    .line 1671
    .end local v10    # "a2d":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_1
    move-object v11, v9

    move-object v1, v11

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    return-object v1
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 6

    .prologue
    .line 1676
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 9

    .prologue
    .line 1681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v7}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    move-object v3, v4

    .line 1682
    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v1

    new-instance v5, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    invoke-static {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 4

    .prologue
    .line 1692
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 1687
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    return v0
.end method

.method public setPixelScale(F)V
    .locals 4

    .prologue
    .line 1652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->pixelscale:F

    .line 1653
    return-void
.end method

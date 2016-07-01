.class public Lcom/sun/scenario/effect/PhongLighting;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "PhongLighting.java"


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
.field private diffuseConstant:F

.field private light:Lcom/sun/scenario/effect/light/Light;

.field private specularConstant:F

.field private specularExponent:F

.field private surfaceScale:F


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/light/Light;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "light":Lcom/sun/scenario/effect/light/Light;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/scenario/effect/GaussianShadow;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(F)V

    sget-object v5, Lcom/sun/scenario/effect/PhongLighting;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/scenario/effect/PhongLighting;-><init>(Lcom/sun/scenario/effect/light/Light;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/light/Light;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "light":Lcom/sun/scenario/effect/light/Light;
    move-object v2, p2

    .local v2, "bumpInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, p3

    .local v3, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 76
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/scenario/effect/PhongLighting;->surfaceScale:F

    .line 77
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/scenario/effect/PhongLighting;->diffuseConstant:F

    .line 78
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/scenario/effect/PhongLighting;->specularConstant:F

    .line 79
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/scenario/effect/PhongLighting;->specularExponent:F

    .line 81
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/PhongLighting;->setLight(Lcom/sun/scenario/effect/light/Light;)V

    .line 82
    return-void
.end method

.method private getContentInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->getContentInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public final getBumpInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public final getContentInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PhongLighting;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public getDiffuseConstant()F
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/PhongLighting;->diffuseConstant:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 10

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/PhongLighting;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v7

    move-object v3, v7

    .line 347
    .local v3, "bump":Lcom/sun/scenario/effect/Effect;
    move-object v7, v3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v7

    move-object v4, v7

    .line 348
    .local v4, "drc1":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 350
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/PhongLighting;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v7

    move-object v5, v7

    .line 351
    .local v5, "content":Lcom/sun/scenario/effect/Effect;
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v7

    move-object v6, v7

    .line 353
    .local v6, "drc2":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 354
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 356
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public getLight()Lcom/sun/scenario/effect/light/Light;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/PhongLighting;->light:Lcom/sun/scenario/effect/light/Light;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 10

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
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
    new-instance v6, Lcom/sun/scenario/effect/PhongLighting$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/scenario/effect/PhongLighting$1;-><init>(Lcom/sun/scenario/effect/PhongLighting;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 13

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sun/scenario/effect/ImageData;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v3

    const/4 v11, 0x1

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    invoke-super {v4, v5, v6, v7}, Lcom/sun/scenario/effect/CoreEffect;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public getSpecularConstant()F
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/PhongLighting;->specularConstant:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return v0
.end method

.method public getSpecularExponent()F
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/PhongLighting;->specularExponent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return v0
.end method

.method public getSurfaceScale()F
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/PhongLighting;->surfaceScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/PhongLighting;->getContentInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 341
    .local v1, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBumpInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "bumpInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 102
    return-void
.end method

.method public setContentInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 126
    return-void
.end method

.method public setDiffuseConstant(F)V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move v1, p1

    .local v1, "diffuseConstant":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 175
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Diffuse constant must be in the range [0,2]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/PhongLighting;->diffuseConstant:F

    move v2, v3

    .line 178
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/PhongLighting;->diffuseConstant:F

    .line 179
    return-void
.end method

.method public setLight(Lcom/sun/scenario/effect/light/Light;)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "light":Lcom/sun/scenario/effect/light/Light;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Light must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/PhongLighting;->light:Lcom/sun/scenario/effect/light/Light;

    .line 148
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhongLighting_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/scenario/effect/light/Light;->getType()Lcom/sun/scenario/effect/light/Light$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/light/Light$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/PhongLighting;->updatePeerKey(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setSpecularConstant(F)V
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move v1, p1

    .local v1, "specularConstant":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 205
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Specular constant must be in the range [0,2]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/PhongLighting;->specularConstant:F

    move v2, v3

    .line 208
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/PhongLighting;->specularConstant:F

    .line 209
    return-void
.end method

.method public setSpecularExponent(F)V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move v1, p1

    .local v1, "specularExponent":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x42200000    # 40.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 235
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Specular exponent must be in the range [0,40]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/PhongLighting;->specularExponent:F

    move v2, v3

    .line 238
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/PhongLighting;->specularExponent:F

    .line 239
    return-void
.end method

.method public setSurfaceScale(F)V
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move v1, p1

    .local v1, "surfaceScale":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 265
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Surface scale must be in the range [0,10]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/PhongLighting;->surfaceScale:F

    move v2, v3

    .line 268
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/PhongLighting;->surfaceScale:F

    .line 269
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->getContentInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/PhongLighting;->getContentInput(Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting;
    return-object v0
.end method

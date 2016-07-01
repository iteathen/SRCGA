.class public abstract Ljavafx/scene/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/effect/Effect$EffectInputProperty;,
        Ljavafx/scene/effect/Effect$EffectInputChangeListener;
    }
.end annotation


# instance fields
.field private effectDirty:Ljavafx/beans/property/IntegerProperty;

.field private peer:Lcom/sun/scenario/effect/Effect;


# direct methods
.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "effectDirty"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    .line 66
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/Effect;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/Effect;Lcom/sun/javafx/effect/EffectDirtyBits;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/effect/Effect;->toggleDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    return-void
.end method

.method private clearEffectDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/effect/EffectDirtyBits;->getMask()I

    move-result v4

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljavafx/scene/effect/Effect;->setEffectDirty(I)V

    .line 140
    return-void
.end method

.method static getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v4, p4

    .local v4, "input":Ljavafx/scene/effect/Effect;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 325
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/Effect;->impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .line 330
    :goto_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    return-object v0

    .line 327
    .restart local v0    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/sun/javafx/scene/BoundsAccessor;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method static getKernelSize(FI)I
    .locals 6

    .prologue
    .line 275
    move v1, p0

    .local v1, "fsize":F
    move v2, p1

    .local v2, "iterations":I
    move v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v3, v4

    .line 276
    .local v3, "ksize":I
    move v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    move v3, v4

    .line 277
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v5, v2

    mul-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 278
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 279
    move v4, v3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move v1, v4

    .end local v1    # "fsize":F
    return v1
.end method

.method static getShadowBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFLjavafx/scene/effect/BlurType;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 288
    move-object v1, p0

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v3, p2

    .local v3, "width":F
    move/from16 v4, p3

    .local v4, "height":F
    move-object/from16 v5, p4

    .local v5, "blurType":Ljavafx/scene/effect/BlurType;
    const/4 v10, 0x0

    move v6, v10

    .line 289
    .local v6, "hgrow":I
    const/4 v10, 0x0

    move v7, v10

    .line 291
    .local v7, "vgrow":I
    sget-object v10, Ljavafx/scene/effect/Effect$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/effect/BlurType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 312
    :goto_0
    move-object v10, v1

    move v11, v6

    int-to-float v11, v11

    move v12, v7

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .line 314
    move-object v10, v2

    move-object v11, v1

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    return-object v1

    .line 293
    .restart local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    :pswitch_0
    move v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    const/4 v10, 0x0

    :goto_1
    move v8, v10

    .line 294
    .local v8, "hradius":F
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    const/4 v10, 0x0

    :goto_2
    move v9, v10

    .line 295
    .local v9, "vradius":F
    move v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v6, v10

    .line 296
    move v10, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v7, v10

    .line 297
    goto :goto_0

    .line 293
    .end local v8    # "hradius":F
    .end local v9    # "vradius":F
    :cond_0
    move v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    goto :goto_1

    .line 294
    .restart local v8    # "hradius":F
    :cond_1
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    goto :goto_2

    .line 299
    .end local v8    # "hradius":F
    :pswitch_1
    move v10, v3

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v6, v10

    .line 300
    move v10, v4

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v7, v10

    .line 301
    goto :goto_0

    .line 303
    :pswitch_2
    move v10, v3

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v6, v10

    .line 304
    move v10, v4

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v7, v10

    .line 305
    goto/16 :goto_0

    .line 307
    :pswitch_3
    move v10, v3

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v6, v10

    .line 308
    move v10, v4

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Ljavafx/scene/effect/Effect;->getKernelSize(FI)I

    move-result v10

    move v7, v10

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isEffectDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)Z
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/effect/EffectDirtyBits;->getMask()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Effect;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/Effect;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEffectDirty(I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 94
    return-void
.end method

.method private toggleDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/effect/EffectDirtyBits;->getMask()I

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljavafx/scene/effect/Effect;->setEffectDirty(I)V

    .line 126
    return-void
.end method

.method static transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 270
    .end local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return-object v0

    .line 268
    .restart local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v2, v3

    .line 269
    .local v2, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    .line 270
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method effectBoundsChanged()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Effect;->toggleDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 71
    return-void
.end method

.method abstract impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
.end method

.method impl_containsCycles(Ljavafx/scene/effect/Effect;)Z
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    .line 160
    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 163
    .end local v0    # "this":Ljavafx/scene/effect/Effect;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/Effect;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public abstract impl_copy()Ljavafx/scene/effect/Effect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract impl_createImpl()Lcom/sun/scenario/effect/Effect;
.end method

.method public final impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Effect;
    return-object v0
.end method

.method public abstract impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public impl_getImpl()Lcom/sun/scenario/effect/Effect;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Effect;->peer:Lcom/sun/scenario/effect/Effect;

    if-nez v1, :cond_0

    .line 83
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_createImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/effect/Effect;->peer:Lcom/sun/scenario/effect/Effect;

    .line 85
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Effect;->peer:Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Effect;
    return-object v0
.end method

.method public final impl_isEffectDirty()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Effect;->isEffectDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Effect;
    return v0
.end method

.method public final impl_sync()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Effect;->isEffectDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Effect;->impl_update()V

    .line 150
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Effect;->clearEffectDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 152
    :cond_0
    return-void
.end method

.method abstract impl_update()V
.end method

.method final markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Effect;->effectDirty:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/effect/EffectDirtyBits;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljavafx/scene/effect/Effect;->setEffectDirty(I)V

    .line 119
    return-void
.end method

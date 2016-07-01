.class public Ljavafx/scene/effect/ColorAdjust;
.super Ljavafx/scene/effect/Effect;
.source "ColorAdjust.java"


# instance fields
.field private brightness:Ljavafx/beans/property/DoubleProperty;

.field private contrast:Ljavafx/beans/property/DoubleProperty;

.field private hue:Ljavafx/beans/property/DoubleProperty;

.field private input:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private saturation:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-wide v1, p1

    .local v1, "hue":D
    move-wide/from16 v3, p3

    .local v3, "saturation":D
    move-wide/from16 v5, p5

    .local v5, "brightness":D
    move-wide/from16 v7, p7

    .local v7, "contrast":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 88
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/ColorAdjust;->setBrightness(D)V

    .line 89
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/ColorAdjust;->setContrast(D)V

    .line 90
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/ColorAdjust;->setHue(D)V

    .line 91
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/ColorAdjust;->setSaturation(D)V

    .line 92
    return-void
.end method


# virtual methods
.method public final brightnessProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->brightness:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 246
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorAdjust$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorAdjust$3;-><init>(Ljavafx/scene/effect/ColorAdjust;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorAdjust;->brightness:Ljavafx/beans/property/DoubleProperty;

    .line 265
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->brightness:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method public final contrastProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->contrast:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 291
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorAdjust$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorAdjust$4;-><init>(Ljavafx/scene/effect/ColorAdjust;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorAdjust;->contrast:Ljavafx/beans/property/DoubleProperty;

    .line 310
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->contrast:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method public final getBrightness()D
    .locals 4

    .prologue
    .line 241
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->brightness:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->brightness:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getContrast()D
    .locals 4

    .prologue
    .line 286
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->contrast:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->contrast:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getHue()D
    .locals 4

    .prologue
    .line 151
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->hue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->hue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getSaturation()D
    .locals 4

    .prologue
    .line 196
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->saturation:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorAdjust;->saturation:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final hueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->hue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 156
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorAdjust$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorAdjust$1;-><init>(Ljavafx/scene/effect/ColorAdjust;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorAdjust;->hue:Ljavafx/beans/property/DoubleProperty;

    .line 175
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->hue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 126
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 127
    const/4 v3, 0x0

    move v0, v3

    .line 130
    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    :goto_0
    return v0

    .line 128
    .restart local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 129
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 130
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    new-instance v2, Ljavafx/scene/effect/ColorAdjust;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/ColorAdjust;->getHue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorAdjust;->getSaturation()D

    move-result-wide v6

    move-object v8, v0

    .line 350
    invoke-virtual {v8}, Ljavafx/scene/effect/ColorAdjust;->getBrightness()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/ColorAdjust;->getContrast()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Ljavafx/scene/effect/ColorAdjust;-><init>(DDDD)V

    move-object v1, v2

    .line 351
    .local v1, "ca":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ColorAdjust;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 352
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/ColorAdjust;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    new-instance v1, Lcom/sun/scenario/effect/ColorAdjust;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/ColorAdjust;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ColorAdjust;->impl_createImpl()Lcom/sun/scenario/effect/ColorAdjust;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/ColorAdjust;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/ColorAdjust;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method impl_update()V
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 316
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 320
    :cond_0
    move-object v3, v0

    .line 321
    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/ColorAdjust;

    move-object v2, v3

    .line 322
    .local v2, "peer":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 323
    move-object v3, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorAdjust;->getHue()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setHue(F)V

    .line 324
    move-object v3, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorAdjust;->getSaturation()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setSaturation(F)V

    .line 325
    move-object v3, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorAdjust;->getBrightness()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setBrightness(F)V

    .line 326
    move-object v3, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorAdjust;->getContrast()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setContrast(F)V

    .line 327
    return-void

    .line 322
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto :goto_0
.end method

.method public final inputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorAdjust;->input:Ljavafx/beans/property/ObjectProperty;

    .line 120
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method public final saturationProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->saturation:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 201
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorAdjust$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorAdjust$2;-><init>(Ljavafx/scene/effect/ColorAdjust;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorAdjust;->saturation:Ljavafx/beans/property/DoubleProperty;

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust;->saturation:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust;
    return-object v0
.end method

.method public final setBrightness(D)V
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->brightnessProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 238
    return-void
.end method

.method public final setContrast(D)V
    .locals 7

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->contrastProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 283
    return-void
.end method

.method public final setHue(D)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->hueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 148
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/ColorAdjust;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public final setSaturation(D)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorAdjust;->saturationProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 193
    return-void
.end method

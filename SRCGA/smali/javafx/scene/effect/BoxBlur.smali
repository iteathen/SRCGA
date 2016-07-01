.class public Ljavafx/scene/effect/BoxBlur;
.super Ljavafx/scene/effect/Effect;
.source "BoxBlur.java"


# instance fields
.field private height:Ljavafx/beans/property/DoubleProperty;

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

.field private iterations:Ljavafx/beans/property/IntegerProperty;

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 11

    .prologue
    .line 86
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/BoxBlur;
    move-wide v2, p1

    .local v2, "width":D
    move-wide v4, p3

    .local v4, "height":D
    move/from16 v6, p5

    .local v6, "iterations":I
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 87
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/effect/BoxBlur;->setWidth(D)V

    .line 88
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/effect/BoxBlur;->setHeight(D)V

    .line 89
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/effect/BoxBlur;->setIterations(I)V

    .line 90
    return-void
.end method

.method private getClampedHeight()I
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    const/4 v1, 0x0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/BoxBlur;->getHeight()D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return v0
.end method

.method private getClampedIterations()I
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    const/4 v1, 0x0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/BoxBlur;->getIterations()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return v0
.end method

.method private getClampedWidth()I
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    const/4 v1, 0x0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/BoxBlur;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return v0
.end method


# virtual methods
.method public final getHeight()D
    .locals 4

    .prologue
    .line 204
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getIterations()I
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->iterations:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->iterations:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 209
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/BoxBlur$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/BoxBlur$2;-><init>(Ljavafx/scene/effect/BoxBlur;D)V

    iput-object v3, v2, Ljavafx/scene/effect/BoxBlur;->height:Ljavafx/beans/property/DoubleProperty;

    .line 228
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v1
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 124
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    move v0, v3

    .line 128
    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    :goto_0
    return v0

    .line 126
    .restart local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 127
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 128
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    new-instance v2, Ljavafx/scene/effect/BoxBlur;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/BoxBlur;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/BoxBlur;->getHeight()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/BoxBlur;->getIterations()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/effect/BoxBlur;-><init>(DDI)V

    move-object v1, v2

    .line 339
    .local v1, "bb":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/BoxBlur;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 340
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/BoxBlur;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    new-instance v1, Lcom/sun/scenario/effect/BoxBlur;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/BoxBlur;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/BoxBlur;->impl_createImpl()Lcom/sun/scenario/effect/BoxBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v0

    .line 319
    invoke-virtual {v12}, Ljavafx/scene/effect/BoxBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v12

    .line 316
    invoke-static {v8, v9, v10, v11, v12}, Ljavafx/scene/effect/BoxBlur;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v1, v8

    .line 321
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/effect/BoxBlur;->getClampedIterations()I

    move-result v8

    move v5, v8

    .line 323
    .local v5, "localIterations":I
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/effect/BoxBlur;->getClampedWidth()I

    move-result v8

    int-to-float v8, v8

    move v9, v5

    invoke-static {v8, v9}, Ljavafx/scene/effect/BoxBlur;->getKernelSize(FI)I

    move-result v8

    move v6, v8

    .line 324
    .local v6, "hgrow":I
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/effect/BoxBlur;->getClampedHeight()I

    move-result v8

    int-to-float v8, v8

    move v9, v5

    invoke-static {v8, v9}, Ljavafx/scene/effect/BoxBlur;->getKernelSize(FI)I

    move-result v8

    move v7, v8

    .line 326
    .local v7, "vgrow":I
    move-object v8, v1

    move v9, v6

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v1, v8

    .line 328
    move-object v8, v2

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/scene/effect/BoxBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method impl_update()V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 294
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 295
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 298
    :cond_0
    move-object v3, v0

    .line 299
    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/BoxBlur;

    move-object v2, v3

    .line 300
    .local v2, "peer":Lcom/sun/scenario/effect/BoxBlur;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxBlur;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 301
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/BoxBlur;->getClampedWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxBlur;->setHorizontalSize(I)V

    .line 302
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/BoxBlur;->getClampedHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxBlur;->setVerticalSize(I)V

    .line 303
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/BoxBlur;->getClampedIterations()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/BoxBlur;->setPasses(I)V

    .line 304
    return-void

    .line 300
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
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/BoxBlur;->input:Ljavafx/beans/property/ObjectProperty;

    .line 118
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method public final iterationsProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->iterations:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 257
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/BoxBlur$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/BoxBlur$3;-><init>(Ljavafx/scene/effect/BoxBlur;I)V

    iput-object v2, v1, Ljavafx/scene/effect/BoxBlur;->iterations:Ljavafx/beans/property/IntegerProperty;

    .line 276
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur;->iterations:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v0
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 201
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/BoxBlur;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public final setIterations(I)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/BoxBlur;->iterationsProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 249
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/BoxBlur;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 151
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 158
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/BoxBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 159
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/BoxBlur$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/BoxBlur$1;-><init>(Ljavafx/scene/effect/BoxBlur;D)V

    iput-object v3, v2, Ljavafx/scene/effect/BoxBlur;->width:Ljavafx/beans/property/DoubleProperty;

    .line 178
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/BoxBlur;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/BoxBlur;
    return-object v1
.end method

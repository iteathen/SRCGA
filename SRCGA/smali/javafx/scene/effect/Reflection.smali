.class public Ljavafx/scene/effect/Reflection;
.super Ljavafx/scene/effect/Effect;
.source "Reflection.java"


# instance fields
.field private bottomOpacity:Ljavafx/beans/property/DoubleProperty;

.field private fraction:Ljavafx/beans/property/DoubleProperty;

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

.field private topOffset:Ljavafx/beans/property/DoubleProperty;

.field private topOpacity:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-wide v1, p1

    .local v1, "topOffset":D
    move-wide/from16 v3, p3

    .local v3, "fraction":D
    move-wide/from16 v5, p5

    .local v5, "topOpacity":D
    move-wide/from16 v7, p7

    .local v7, "bottomOpacity":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 86
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Reflection;->setBottomOpacity(D)V

    .line 87
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Reflection;->setTopOffset(D)V

    .line 88
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Reflection;->setTopOpacity(D)V

    .line 89
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Reflection;->setFraction(D)V

    .line 90
    return-void
.end method

.method private getClampedBottomOpacity()F
    .locals 8

    .prologue
    .line 319
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Reflection;->getBottomOpacity()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return v1
.end method

.method private getClampedFraction()F
    .locals 8

    .prologue
    .line 315
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Reflection;->getFraction()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return v1
.end method

.method private getClampedTopOpacity()F
    .locals 8

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Reflection;->getTopOpacity()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return v1
.end method


# virtual methods
.method public final bottomOpacityProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->bottomOpacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 246
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Reflection$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Reflection$3;-><init>(Ljavafx/scene/effect/Reflection;)V

    iput-object v2, v1, Ljavafx/scene/effect/Reflection;->bottomOpacity:Ljavafx/beans/property/DoubleProperty;

    .line 264
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->bottomOpacity:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method public final fractionProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 291
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->fraction:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 292
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Reflection$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Reflection$4;-><init>(Ljavafx/scene/effect/Reflection;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Reflection;->fraction:Ljavafx/beans/property/DoubleProperty;

    .line 311
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->fraction:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-object v1
.end method

.method public final getBottomOpacity()D
    .locals 4

    .prologue
    .line 241
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->bottomOpacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Reflection;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->bottomOpacity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFraction()D
    .locals 4

    .prologue
    .line 287
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->fraction:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Reflection;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->fraction:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Reflection;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getTopOffset()D
    .locals 4

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOffset:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Reflection;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOffset:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTopOpacity()D
    .locals 4

    .prologue
    .line 196
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOpacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Reflection;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOpacity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->getInput()Ljavafx/scene/effect/Effect;

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
    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    :goto_0
    return v0

    .line 126
    .restart local v0    # "this":Ljavafx/scene/effect/Reflection;
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
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    new-instance v2, Ljavafx/scene/effect/Reflection;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Reflection;->getTopOffset()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/Reflection;->getFraction()D

    move-result-wide v6

    move-object v8, v0

    .line 379
    invoke-virtual {v8}, Ljavafx/scene/effect/Reflection;->getTopOpacity()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/Reflection;->getBottomOpacity()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Ljavafx/scene/effect/Reflection;-><init>(DDDD)V

    move-object v1, v2

    .line 380
    .local v1, "ref":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Reflection;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 381
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Reflection;->impl_createImpl()Lcom/sun/scenario/effect/Reflection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/Reflection;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    new-instance v1, Lcom/sun/scenario/effect/Reflection;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/Reflection;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "node":Ljavafx/scene/Node;
    move-object/from16 v5, p4

    .local v5, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v13, v2

    sget-object v14, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    .line 355
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/effect/Reflection;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v17

    .line 352
    invoke-static/range {v13 .. v17}, Ljavafx/scene/effect/Reflection;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v13

    move-object v2, v13

    .line 356
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->roundOut()V

    .line 358
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v13

    move v6, v13

    .line 359
    .local v6, "x1":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v13

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/effect/Reflection;->getTopOffset()D

    move-result-wide v14

    double-to-float v14, v14

    add-float/2addr v13, v14

    move v7, v13

    .line 360
    .local v7, "y1":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v13

    move v8, v13

    .line 361
    .local v8, "z1":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v13

    move v9, v13

    .line 362
    .local v9, "x2":F
    move v13, v7

    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/effect/Reflection;->getClampedFraction()F

    move-result v14

    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v10, v13

    .line 363
    .local v10, "y2":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v13

    move v11, v13

    .line 365
    .local v11, "z2":F
    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v13 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getInstance(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v13

    move-object v12, v13

    .line 366
    .local v12, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v13

    move-object v12, v13

    .line 368
    move-object v13, v3

    move-object v14, v12

    invoke-static {v13, v14}, Ljavafx/scene/effect/Reflection;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v13

    move-object v1, v13

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-object v1
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 329
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 330
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 333
    :cond_0
    move-object v3, v0

    .line 334
    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/Reflection;

    move-object v2, v3

    .line 335
    .local v2, "peer":Lcom/sun/scenario/effect/Reflection;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Reflection;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 336
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Reflection;->getClampedFraction()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Reflection;->setFraction(F)V

    .line 337
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Reflection;->getTopOffset()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Reflection;->setTopOffset(F)V

    .line 338
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Reflection;->getClampedBottomOpacity()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Reflection;->setBottomOpacity(F)V

    .line 339
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Reflection;->getClampedTopOpacity()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Reflection;->setTopOpacity(F)V

    .line 340
    return-void

    .line 335
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

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->input:Ljavafx/beans/property/ObjectProperty;

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

    iput-object v2, v1, Ljavafx/scene/effect/Reflection;->input:Ljavafx/beans/property/ObjectProperty;

    .line 118
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method public final setBottomOpacity(D)V
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->bottomOpacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 238
    return-void
.end method

.method public final setFraction(D)V
    .locals 7

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->fractionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 284
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Reflection;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public final setTopOffset(D)V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->topOffsetProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 147
    return-void
.end method

.method public final setTopOpacity(D)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Reflection;->topOpacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 193
    return-void
.end method

.method public final topOffsetProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->topOffset:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 155
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Reflection$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Reflection$1;-><init>(Ljavafx/scene/effect/Reflection;)V

    iput-object v2, v1, Ljavafx/scene/effect/Reflection;->topOffset:Ljavafx/beans/property/DoubleProperty;

    .line 174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection;->topOffset:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection;
    return-object v0
.end method

.method public final topOpacityProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 200
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Reflection;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOpacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 201
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Reflection$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Reflection$2;-><init>(Ljavafx/scene/effect/Reflection;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Reflection;->topOpacity:Ljavafx/beans/property/DoubleProperty;

    .line 219
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Reflection;->topOpacity:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Reflection;
    return-object v1
.end method

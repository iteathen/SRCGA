.class public Ljavafx/scene/effect/DisplacementMap;
.super Ljavafx/scene/effect/Effect;
.source "DisplacementMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
    }
.end annotation


# instance fields
.field private final defaultMap:Ljavafx/scene/effect/FloatMap;

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

.field private mapData:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/FloatMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mapDataChangeListener:Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

.field private offsetX:Ljavafx/beans/property/DoubleProperty;

.field private offsetY:Ljavafx/beans/property/DoubleProperty;

.field private scaleX:Ljavafx/beans/property/DoubleProperty;

.field private scaleY:Ljavafx/beans/property/DoubleProperty;

.field private wrap:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 186
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/FloatMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/FloatMap;-><init>(II)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->defaultMap:Ljavafx/scene/effect/FloatMap;

    .line 227
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;-><init>(Ljavafx/scene/effect/DisplacementMap;Ljavafx/scene/effect/DisplacementMap$1;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->mapDataChangeListener:Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    .line 115
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/FloatMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/FloatMap;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/DisplacementMap;->setMapData(Ljavafx/scene/effect/FloatMap;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/FloatMap;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "mapData":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 186
    move-object v2, v0

    new-instance v3, Ljavafx/scene/effect/FloatMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/effect/FloatMap;-><init>(II)V

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap;->defaultMap:Ljavafx/scene/effect/FloatMap;

    .line 227
    move-object v2, v0

    new-instance v3, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;-><init>(Ljavafx/scene/effect/DisplacementMap;Ljavafx/scene/effect/DisplacementMap$1;)V

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap;->mapDataChangeListener:Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/DisplacementMap;->setMapData(Ljavafx/scene/effect/FloatMap;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/FloatMap;DDDD)V
    .locals 16

    .prologue
    .line 143
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object/from16 v1, p1

    .local v1, "mapData":Ljavafx/scene/effect/FloatMap;
    move-wide/from16 v2, p2

    .local v2, "offsetX":D
    move-wide/from16 v4, p4

    .local v4, "offsetY":D
    move-wide/from16 v6, p6

    .local v6, "scaleX":D
    move-wide/from16 v8, p8

    .local v8, "scaleY":D
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 186
    move-object v10, v0

    new-instance v11, Ljavafx/scene/effect/FloatMap;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Ljavafx/scene/effect/FloatMap;-><init>(II)V

    iput-object v11, v10, Ljavafx/scene/effect/DisplacementMap;->defaultMap:Ljavafx/scene/effect/FloatMap;

    .line 227
    move-object v10, v0

    new-instance v11, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;-><init>(Ljavafx/scene/effect/DisplacementMap;Ljavafx/scene/effect/DisplacementMap$1;)V

    iput-object v11, v10, Ljavafx/scene/effect/DisplacementMap;->mapDataChangeListener:Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    .line 144
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/effect/DisplacementMap;->setMapData(Ljavafx/scene/effect/FloatMap;)V

    .line 145
    move-object v10, v0

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/effect/DisplacementMap;->setOffsetX(D)V

    .line 146
    move-object v10, v0

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/effect/DisplacementMap;->setOffsetY(D)V

    .line 147
    move-object v10, v0

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/effect/DisplacementMap;->setScaleX(D)V

    .line 148
    move-object v10, v0

    move-wide v11, v8

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/effect/DisplacementMap;->setScaleY(D)V

    .line 149
    return-void
.end method


# virtual methods
.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getMapData()Ljavafx/scene/effect/FloatMap;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->mapData:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->mapData:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/FloatMap;

    goto :goto_0
.end method

.method public final getOffsetX()D
    .locals 4

    .prologue
    .line 355
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->offsetX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOffsetY()D
    .locals 4

    .prologue
    .line 400
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->offsetY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getScaleX()D
    .locals 4

    .prologue
    .line 265
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getScaleY()D
    .locals 4

    .prologue
    .line 310
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DisplacementMap;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 179
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 180
    const/4 v3, 0x0

    move v0, v3

    .line 183
    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    :goto_0
    return v0

    .line 181
    .restart local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 182
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 183
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    new-instance v3, Ljavafx/scene/effect/DisplacementMap;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/DisplacementMap;->getMapData()Ljavafx/scene/effect/FloatMap;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/effect/FloatMap;->impl_copy()Ljavafx/scene/effect/FloatMap;

    move-result-object v5

    move-object v6, v1

    .line 522
    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->getOffsetX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/DisplacementMap;->getOffsetY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/effect/DisplacementMap;->getScaleX()D

    move-result-wide v10

    move-object v12, v1

    .line 523
    invoke-virtual {v12}, Ljavafx/scene/effect/DisplacementMap;->getScaleY()D

    move-result-wide v12

    invoke-direct/range {v4 .. v13}, Ljavafx/scene/effect/DisplacementMap;-><init>(Ljavafx/scene/effect/FloatMap;DDDD)V

    move-object v2, v3

    .line 524
    .local v2, "dm":Ljavafx/scene/effect/DisplacementMap;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/DisplacementMap;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/DisplacementMap;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 525
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v1
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/DisplacementMap;
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    new-instance v1, Lcom/sun/scenario/effect/DisplacementMap;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Lcom/sun/scenario/effect/FloatMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/FloatMap;-><init>(II)V

    sget-object v4, Lcom/sun/scenario/effect/Effect;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/DisplacementMap;-><init>(Lcom/sun/scenario/effect/FloatMap;Lcom/sun/scenario/effect/Effect;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/DisplacementMap;->impl_createImpl()Lcom/sun/scenario/effect/DisplacementMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    .line 510
    invoke-virtual {v9}, Ljavafx/scene/effect/DisplacementMap;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    .line 507
    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/DisplacementMap;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v1, v5

    .line 511
    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/scene/effect/DisplacementMap;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method impl_update()V
    .locals 8

    .prologue
    .line 473
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/DisplacementMap;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    move-object v2, v5

    .line 474
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 475
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 478
    :cond_0
    move-object v5, v1

    .line 479
    invoke-virtual {v5}, Ljavafx/scene/effect/DisplacementMap;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/DisplacementMap;

    move-object v3, v5

    .line 480
    .local v3, "peer":Lcom/sun/scenario/effect/DisplacementMap;
    move-object v5, v3

    move-object v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setContentInput(Lcom/sun/scenario/effect/Effect;)V

    .line 481
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/DisplacementMap;->getMapData()Ljavafx/scene/effect/FloatMap;

    move-result-object v5

    move-object v4, v5

    .line 482
    .local v4, "localMapData":Ljavafx/scene/effect/FloatMap;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/effect/DisplacementMap;->mapDataChangeListener:Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->register(Ljavafx/scene/effect/FloatMap;)V

    .line 483
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 484
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/effect/FloatMap;->impl_sync()V

    .line 485
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/effect/FloatMap;->getImpl()Lcom/sun/scenario/effect/FloatMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setMapData(Lcom/sun/scenario/effect/FloatMap;)V

    .line 490
    :goto_1
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->getScaleX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setScaleX(F)V

    .line 491
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->getScaleY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setScaleY(F)V

    .line 492
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->getOffsetX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setOffsetX(F)V

    .line 493
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->getOffsetY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setOffsetY(F)V

    .line 494
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DisplacementMap;->isWrap()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setWrap(Z)V

    .line 495
    return-void

    .line 480
    .end local v4    # "localMapData":Ljavafx/scene/effect/FloatMap;
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    goto :goto_0

    .line 487
    .restart local v4    # "localMapData":Ljavafx/scene/effect/FloatMap;
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/effect/DisplacementMap;->defaultMap:Ljavafx/scene/effect/FloatMap;

    invoke-virtual {v5}, Ljavafx/scene/effect/FloatMap;->impl_sync()V

    .line 488
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DisplacementMap;->defaultMap:Ljavafx/scene/effect/FloatMap;

    invoke-virtual {v6}, Ljavafx/scene/effect/FloatMap;->getImpl()Lcom/sun/scenario/effect/FloatMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/DisplacementMap;->setMapData(Lcom/sun/scenario/effect/FloatMap;)V

    goto :goto_1
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
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 171
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->input:Ljavafx/beans/property/ObjectProperty;

    .line 173
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method public final isWrap()Z
    .locals 2

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->wrap:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->wrap:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final mapDataProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/FloatMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->mapData:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 205
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DisplacementMap$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DisplacementMap$1;-><init>(Ljavafx/scene/effect/DisplacementMap;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->mapData:Ljavafx/beans/property/ObjectProperty;

    .line 224
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->mapData:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method public final offsetXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 360
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DisplacementMap$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DisplacementMap$4;-><init>(Ljavafx/scene/effect/DisplacementMap;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->offsetX:Ljavafx/beans/property/DoubleProperty;

    .line 378
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->offsetX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method public final offsetYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 405
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DisplacementMap$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DisplacementMap$5;-><init>(Ljavafx/scene/effect/DisplacementMap;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->offsetY:Ljavafx/beans/property/DoubleProperty;

    .line 423
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->offsetY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.method public final scaleXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 270
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/DisplacementMap$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/DisplacementMap$2;-><init>(Ljavafx/scene/effect/DisplacementMap;D)V

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap;->scaleX:Ljavafx/beans/property/DoubleProperty;

    .line 288
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleX:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v1
.end method

.method public final scaleYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 314
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 315
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/DisplacementMap$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/DisplacementMap$3;-><init>(Ljavafx/scene/effect/DisplacementMap;D)V

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap;->scaleY:Ljavafx/beans/property/DoubleProperty;

    .line 333
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap;->scaleY:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v1
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DisplacementMap;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final setMapData(Ljavafx/scene/effect/FloatMap;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DisplacementMap;->mapDataProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public final setOffsetX(D)V
    .locals 7

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DisplacementMap;->offsetXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 352
    return-void
.end method

.method public final setOffsetY(D)V
    .locals 7

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DisplacementMap;->offsetYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 397
    return-void
.end method

.method public final setScaleX(D)V
    .locals 7

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DisplacementMap;->scaleXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 262
    return-void
.end method

.method public final setScaleY(D)V
    .locals 7

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DisplacementMap;->scaleYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 307
    return-void
.end method

.method public final setWrap(Z)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DisplacementMap;->wrapProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 442
    return-void
.end method

.method public final wrapProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->wrap:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 450
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DisplacementMap$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DisplacementMap$6;-><init>(Ljavafx/scene/effect/DisplacementMap;)V

    iput-object v2, v1, Ljavafx/scene/effect/DisplacementMap;->wrap:Ljavafx/beans/property/BooleanProperty;

    .line 468
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap;->wrap:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap;
    return-object v0
.end method

.class public Ljavafx/scene/effect/Light$Point;
.super Ljavafx/scene/effect/Light;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;

.field private z:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Light;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/paint/Color;)V
    .locals 13

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Point;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object/from16 v8, p7

    .local v8, "color":Ljavafx/scene/paint/Color;
    move-object v9, v1

    invoke-direct {v9}, Ljavafx/scene/effect/Light;-><init>()V

    .line 347
    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Light$Point;->setX(D)V

    .line 348
    move-object v9, v1

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Light$Point;->setY(D)V

    .line 349
    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/Light$Point;->setZ(D)V

    .line 350
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/effect/Light$Point;->setColor(Ljavafx/scene/paint/Color;)V

    .line 351
    return-void
.end method


# virtual methods
.method public final getX()D
    .locals 4

    .prologue
    .line 379
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Point;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Point;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Point;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 421
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Point;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Point;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Point;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getZ()D
    .locals 4

    .prologue
    .line 463
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Point;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Point;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Point;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Point;->z:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/light/Light;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Point;->impl_createImpl()Lcom/sun/scenario/effect/light/PointLight;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Point;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/light/PointLight;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    new-instance v1, Lcom/sun/scenario/effect/light/PointLight;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/light/PointLight;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Point;
    return-object v0
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 491
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Point;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/effect/Light;->impl_update()V

    .line 492
    move-object v3, v1

    .line 493
    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Point;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/light/PointLight;

    move-object v2, v3

    .line 494
    .local v2, "peer":Lcom/sun/scenario/effect/light/PointLight;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Point;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/PointLight;->setX(F)V

    .line 495
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Point;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/PointLight;->setY(F)V

    .line 496
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Point;->getZ()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/PointLight;->setZ(F)V

    .line 497
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Point;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 376
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Point;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 418
    return-void
.end method

.method public final setZ(D)V
    .locals 7

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Point;->zProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 460
    return-void
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 384
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Point$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Point$1;-><init>(Ljavafx/scene/effect/Light$Point;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Point;->x:Ljavafx/beans/property/DoubleProperty;

    .line 402
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Point;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 426
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Point$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Point$2;-><init>(Ljavafx/scene/effect/Light$Point;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Point;->y:Ljavafx/beans/property/DoubleProperty;

    .line 444
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Point;
    return-object v0
.end method

.method public final zProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Point;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->z:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 468
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Point$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Point$3;-><init>(Ljavafx/scene/effect/Light$Point;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Point;->z:Ljavafx/beans/property/DoubleProperty;

    .line 486
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Point;->z:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Point;
    return-object v0
.end method

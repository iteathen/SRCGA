.class public Ljavafx/scene/effect/Light$Spot;
.super Ljavafx/scene/effect/Light$Point;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spot"
.end annotation


# instance fields
.field private pointsAtX:Ljavafx/beans/property/DoubleProperty;

.field private pointsAtY:Ljavafx/beans/property/DoubleProperty;

.field private pointsAtZ:Ljavafx/beans/property/DoubleProperty;

.field private specularExponent:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Light$Point;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDLjavafx/scene/paint/Color;)V
    .locals 15

    .prologue
    .line 556
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-wide/from16 v8, p7

    .local v8, "specularExponent":D
    move-object/from16 v10, p9

    .local v10, "color":Ljavafx/scene/paint/Color;
    move-object v11, v1

    invoke-direct {v11}, Ljavafx/scene/effect/Light$Point;-><init>()V

    .line 557
    move-object v11, v1

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/Light$Spot;->setX(D)V

    .line 558
    move-object v11, v1

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/Light$Spot;->setY(D)V

    .line 559
    move-object v11, v1

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/Light$Spot;->setZ(D)V

    .line 560
    move-object v11, v1

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/Light$Spot;->setSpecularExponent(D)V

    .line 561
    move-object v11, v1

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/Light$Spot;->setColor(Ljavafx/scene/paint/Color;)V

    .line 562
    return-void
.end method


# virtual methods
.method public final getPointsAtX()D
    .locals 4

    .prologue
    .line 590
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPointsAtY()D
    .locals 4

    .prologue
    .line 632
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPointsAtZ()D
    .locals 4

    .prologue
    .line 674
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->pointsAtZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getSpecularExponent()D
    .locals 4

    .prologue
    .line 717
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/light/Light;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Spot;->impl_createImpl()Lcom/sun/scenario/effect/light/SpotLight;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/light/PointLight;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Spot;->impl_createImpl()Lcom/sun/scenario/effect/light/SpotLight;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/light/SpotLight;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    new-instance v1, Lcom/sun/scenario/effect/light/SpotLight;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/light/SpotLight;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method impl_update()V
    .locals 10

    .prologue
    .line 745
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/effect/Light$Point;->impl_update()V

    .line 746
    move-object v3, v1

    .line 747
    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Spot;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/light/SpotLight;

    move-object v2, v3

    .line 748
    .local v2, "peer":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Spot;->getPointsAtX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/SpotLight;->setPointsAtX(F)V

    .line 749
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Spot;->getPointsAtY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/SpotLight;->setPointsAtY(F)V

    .line 750
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Spot;->getPointsAtZ()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/SpotLight;->setPointsAtZ(F)V

    .line 751
    move-object v3, v2

    const-wide/16 v4, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Light$Spot;->getSpecularExponent()D

    move-result-wide v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/SpotLight;->setSpecularExponent(F)V

    .line 752
    return-void
.end method

.method public final pointsAtXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 595
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Spot$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Spot$1;-><init>(Ljavafx/scene/effect/Light$Spot;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtX:Ljavafx/beans/property/DoubleProperty;

    .line 613
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method public final pointsAtYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 637
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Spot$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Spot$2;-><init>(Ljavafx/scene/effect/Light$Spot;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtY:Ljavafx/beans/property/DoubleProperty;

    .line 655
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method public final pointsAtZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 679
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$Spot$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Light$Spot$3;-><init>(Ljavafx/scene/effect/Light$Spot;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtZ:Ljavafx/beans/property/DoubleProperty;

    .line 697
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot;->pointsAtZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v0
.end method

.method public final setPointsAtX(D)V
    .locals 7

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Spot;->pointsAtXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 587
    return-void
.end method

.method public final setPointsAtY(D)V
    .locals 7

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Spot;->pointsAtYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 629
    return-void
.end method

.method public final setPointsAtZ(D)V
    .locals 7

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Spot;->pointsAtZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 671
    return-void
.end method

.method public final setSpecularExponent(D)V
    .locals 7

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Spot;->specularExponentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 714
    return-void
.end method

.method public final specularExponentProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 721
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 722
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Light$Spot$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Light$Spot$4;-><init>(Ljavafx/scene/effect/Light$Spot;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Light$Spot;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    .line 740
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Spot;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Spot;
    return-object v1
.end method

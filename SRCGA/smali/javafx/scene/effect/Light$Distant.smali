.class public Ljavafx/scene/effect/Light$Distant;
.super Ljavafx/scene/effect/Light;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Distant"
.end annotation


# instance fields
.field private azimuth:Ljavafx/beans/property/DoubleProperty;

.field private elevation:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Light;-><init>()V

    return-void
.end method

.method public constructor <init>(DDLjavafx/scene/paint/Color;)V
    .locals 11

    .prologue
    .line 191
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-wide v2, p1

    .local v2, "azimuth":D
    move-wide v4, p3

    .local v4, "elevation":D
    move-object/from16 v6, p5

    .local v6, "color":Ljavafx/scene/paint/Color;
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/effect/Light;-><init>()V

    .line 192
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/effect/Light$Distant;->setAzimuth(D)V

    .line 193
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/effect/Light$Distant;->setElevation(D)V

    .line 194
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/effect/Light$Distant;->setColor(Ljavafx/scene/paint/Color;)V

    .line 195
    return-void
.end method


# virtual methods
.method public final azimuthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->azimuth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 224
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Light$Distant$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x4046800000000000L    # 45.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Light$Distant$1;-><init>(Ljavafx/scene/effect/Light$Distant;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Light$Distant;->azimuth:Ljavafx/beans/property/DoubleProperty;

    .line 242
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->azimuth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    return-object v1
.end method

.method public final elevationProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 266
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->elevation:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 267
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Light$Distant$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x4046800000000000L    # 45.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Light$Distant$2;-><init>(Ljavafx/scene/effect/Light$Distant;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Light$Distant;->elevation:Ljavafx/beans/property/DoubleProperty;

    .line 285
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->elevation:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    return-object v1
.end method

.method public final getAzimuth()D
    .locals 4

    .prologue
    .line 219
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->azimuth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x4046800000000000L    # 45.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->azimuth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getElevation()D
    .locals 4

    .prologue
    .line 262
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->elevation:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x4046800000000000L    # 45.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Light$Distant;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Light$Distant;->elevation:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/light/DistantLight;
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant;
    new-instance v1, Lcom/sun/scenario/effect/light/DistantLight;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/light/DistantLight;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Distant;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/light/Light;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Distant;->impl_createImpl()Lcom/sun/scenario/effect/light/DistantLight;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Distant;
    return-object v0
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 290
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Light$Distant;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/effect/Light;->impl_update()V

    .line 291
    move-object v3, v1

    .line 292
    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Distant;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/light/DistantLight;

    move-object v2, v3

    .line 293
    .local v2, "peer":Lcom/sun/scenario/effect/light/DistantLight;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Distant;->getAzimuth()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/DistantLight;->setAzimuth(F)V

    .line 294
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Light$Distant;->getElevation()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/light/DistantLight;->setElevation(F)V

    .line 295
    return-void
.end method

.method public final setAzimuth(D)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Distant;->azimuthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 216
    return-void
.end method

.method public final setElevation(D)V
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Light$Distant;->elevationProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 259
    return-void
.end method

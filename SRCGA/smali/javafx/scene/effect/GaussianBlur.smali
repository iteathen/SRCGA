.class public Ljavafx/scene/effect/GaussianBlur;
.super Ljavafx/scene/effect/Effect;
.source "GaussianBlur.java"


# instance fields
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

.field private radius:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-wide v1, p1

    .local v1, "radius":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 76
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/GaussianBlur;->setRadius(D)V

    .line 77
    return-void
.end method

.method private getClampedRadius()F
    .locals 8

    .prologue
    .line 164
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/GaussianBlur;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/GaussianBlur;->getRadius()D

    move-result-wide v4

    const-wide v6, 0x404f800000000000L    # 63.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/GaussianBlur;
    return v1
.end method


# virtual methods
.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 136
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/GaussianBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/GaussianBlur;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/GaussianBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/GaussianBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 112
    const/4 v3, 0x0

    move v0, v3

    .line 115
    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    :goto_0
    return v0

    .line 113
    .restart local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 114
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 115
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/GaussianBlur;
    new-instance v2, Ljavafx/scene/effect/GaussianBlur;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/GaussianBlur;->getRadius()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/GaussianBlur;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v1
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/GaussianBlur;->impl_createImpl()Lcom/sun/scenario/effect/GaussianBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/GaussianBlur;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    new-instance v1, Lcom/sun/scenario/effect/GaussianBlur;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/GaussianBlur;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    .line 193
    invoke-virtual {v10}, Ljavafx/scene/effect/GaussianBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v10

    .line 190
    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/scene/effect/GaussianBlur;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 194
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/effect/GaussianBlur;->getClampedRadius()F

    move-result v6

    move v5, v6

    .line 195
    .local v5, "r":F
    move-object v6, v1

    move v7, v5

    move v8, v5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 196
    move-object v6, v2

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/effect/GaussianBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v0
.end method

.method impl_update()V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/GaussianBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 170
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 171
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 174
    :cond_0
    move-object v3, v0

    .line 175
    invoke-virtual {v3}, Ljavafx/scene/effect/GaussianBlur;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/GaussianBlur;

    move-object v2, v3

    .line 176
    .local v2, "peer":Lcom/sun/scenario/effect/GaussianBlur;
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/GaussianBlur;->getClampedRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianBlur;->setRadius(F)V

    .line 177
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GaussianBlur;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 178
    return-void

    .line 177
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
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 103
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/GaussianBlur;->input:Ljavafx/beans/property/ObjectProperty;

    .line 105
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/GaussianBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 141
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/GaussianBlur$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/GaussianBlur$1;-><init>(Ljavafx/scene/effect/GaussianBlur;D)V

    iput-object v3, v2, Ljavafx/scene/effect/GaussianBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 160
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/GaussianBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/GaussianBlur;
    return-object v1
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/GaussianBlur;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/GaussianBlur;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 133
    return-void
.end method

.class public Ljavafx/scene/effect/Bloom;
.super Ljavafx/scene/effect/Effect;
.source "Bloom.java"


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

.field private threshold:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-wide v1, p1

    .local v1, "threshold":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 84
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Bloom;->setThreshold(D)V

    .line 85
    return-void
.end method


# virtual methods
.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Bloom;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getThreshold()D
    .locals 4

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Bloom;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Bloom;->threshold:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Bloom;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Bloom;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Bloom;->threshold:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Bloom;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 118
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 119
    const/4 v3, 0x0

    move v0, v3

    .line 122
    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    :goto_0
    return v0

    .line 120
    .restart local v0    # "this":Ljavafx/scene/effect/Bloom;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 121
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 122
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
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    new-instance v2, Ljavafx/scene/effect/Bloom;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Bloom;->getThreshold()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Bloom;-><init>(D)V

    move-object v1, v2

    .line 204
    .local v1, "b":Ljavafx/scene/effect/Bloom;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Bloom;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Bloom;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 205
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/Bloom;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    new-instance v1, Lcom/sun/scenario/effect/Bloom;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/Bloom;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Bloom;->impl_createImpl()Lcom/sun/scenario/effect/Bloom;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
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

    invoke-virtual {v9}, Ljavafx/scene/effect/Bloom;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/Bloom;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0
.end method

.method impl_update()V
    .locals 10

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Bloom;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 173
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 174
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 177
    :cond_0
    move-object v3, v0

    .line 178
    invoke-virtual {v3}, Ljavafx/scene/effect/Bloom;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/Bloom;

    move-object v2, v3

    .line 179
    .local v2, "peer":Lcom/sun/scenario/effect/Bloom;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Bloom;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 180
    move-object v3, v2

    const-wide/16 v4, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/Bloom;->getThreshold()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Bloom;->setThreshold(F)V

    .line 181
    return-void

    .line 179
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
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 110
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Bloom;->input:Ljavafx/beans/property/ObjectProperty;

    .line 112
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom;
    return-object v0
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Bloom;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public final setThreshold(D)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Bloom;->thresholdProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 141
    return-void
.end method

.method public final thresholdProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 148
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Bloom;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Bloom;->threshold:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 149
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Bloom$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Bloom$1;-><init>(Ljavafx/scene/effect/Bloom;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Bloom;->threshold:Ljavafx/beans/property/DoubleProperty;

    .line 167
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Bloom;->threshold:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Bloom;
    return-object v1
.end method

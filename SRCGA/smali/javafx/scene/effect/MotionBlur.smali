.class public Ljavafx/scene/effect/MotionBlur;
.super Ljavafx/scene/effect/Effect;
.source "MotionBlur.java"


# instance fields
.field private angle:Ljavafx/beans/property/DoubleProperty;

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
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-wide v1, p1

    .local v1, "angle":D
    move-wide v3, p3

    .local v3, "radius":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 80
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/MotionBlur;->setAngle(D)V

    .line 81
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/MotionBlur;->setRadius(D)V

    .line 82
    return-void
.end method

.method private getClampedRadius()F
    .locals 8

    .prologue
    .line 214
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/MotionBlur;->getRadius()D

    move-result-wide v4

    const-wide v6, 0x404f800000000000L    # 63.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return v1
.end method

.method private getHPad()I
    .locals 6

    .prologue
    .line 232
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/effect/MotionBlur;->getAngle()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object v4, v1

    .line 233
    invoke-direct {v4}, Ljavafx/scene/effect/MotionBlur;->getClampedRadius()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    .line 232
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return v1
.end method

.method private getVPad()I
    .locals 6

    .prologue
    .line 237
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/effect/MotionBlur;->getAngle()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object v4, v1

    .line 238
    invoke-direct {v4}, Ljavafx/scene/effect/MotionBlur;->getClampedRadius()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return v1
.end method


# virtual methods
.method public final angleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->angle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 191
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/MotionBlur$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/MotionBlur$2;-><init>(Ljavafx/scene/effect/MotionBlur;)V

    iput-object v2, v1, Ljavafx/scene/effect/MotionBlur;->angle:Ljavafx/beans/property/DoubleProperty;

    .line 210
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->angle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method public final getAngle()D
    .locals 4

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->angle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->angle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 117
    const/4 v3, 0x0

    move v0, v3

    .line 120
    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    :goto_0
    return v0

    .line 118
    .restart local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 119
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 120
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    new-instance v2, Ljavafx/scene/effect/MotionBlur;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/MotionBlur;->getAngle()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/MotionBlur;->getRadius()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/effect/MotionBlur;-><init>(DD)V

    move-object v1, v2

    .line 271
    .local v1, "mb":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/MotionBlur;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 272
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/MotionBlur;->impl_createImpl()Lcom/sun/scenario/effect/MotionBlur;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/MotionBlur;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    new-instance v1, Lcom/sun/scenario/effect/MotionBlur;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/MotionBlur;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v7, v1

    sget-object v8, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v0

    .line 254
    invoke-virtual {v11}, Ljavafx/scene/effect/MotionBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v11

    .line 251
    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/effect/MotionBlur;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v1, v7

    .line 256
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/effect/MotionBlur;->getHPad()I

    move-result v7

    move v5, v7

    .line 257
    .local v5, "hpad":I
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/effect/MotionBlur;->getVPad()I

    move-result v7

    move v6, v7

    .line 258
    .local v6, "vpad":I
    move-object v7, v1

    move v8, v5

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v1, v7

    .line 260
    move-object v7, v2

    move-object v8, v1

    invoke-static {v7, v8}, Ljavafx/scene/effect/MotionBlur;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 220
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 221
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 224
    :cond_0
    move-object v3, v0

    .line 225
    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/MotionBlur;

    move-object v2, v3

    .line 226
    .local v2, "peer":Lcom/sun/scenario/effect/MotionBlur;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/MotionBlur;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 227
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/MotionBlur;->getClampedRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/MotionBlur;->setRadius(F)V

    .line 228
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/MotionBlur;->getAngle()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/MotionBlur;->setAngle(F)V

    .line 229
    return-void

    .line 226
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
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 108
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/MotionBlur;->input:Ljavafx/beans/property/ObjectProperty;

    .line 110
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/MotionBlur;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 146
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/MotionBlur$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/MotionBlur$1;-><init>(Ljavafx/scene/effect/MotionBlur;D)V

    iput-object v3, v2, Ljavafx/scene/effect/MotionBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 165
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/MotionBlur;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/MotionBlur;
    return-object v1
.end method

.method public final setAngle(D)V
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->angleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 183
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/MotionBlur;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/MotionBlur;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/MotionBlur;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 138
    return-void
.end method

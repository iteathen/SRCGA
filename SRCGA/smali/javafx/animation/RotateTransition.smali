.class public final Ljavafx/animation/RotateTransition;
.super Ljavafx/animation/Transition;
.source "RotateTransition.java"


# static fields
.field private static final DEFAULT_AXIS:Ljavafx/geometry/Point3D;

.field private static final DEFAULT_BY_ANGLE:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_ANGLE:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_ANGLE:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private axis:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation
.end field

.field private byAngle:Ljavafx/beans/property/DoubleProperty;

.field private cachedNode:Ljavafx/scene/Node;

.field private delta:D

.field private duration:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private fromAngle:Ljavafx/beans/property/DoubleProperty;

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private start:D

.field private toAngle:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 140
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 196
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/RotateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/animation/RotateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 313
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 314
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setNode(Ljavafx/scene/Node;)V

    .line 315
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/RotateTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 316
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/RotateTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 346
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/RotateTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final axisProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 210
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "axis"

    sget-object v6, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    .line 212
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

.method public final byAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 299
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "byAngle"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    .line 301
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

.method public final durationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    new-instance v2, Ljavafx/animation/RotateTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/RotateTransition$1;-><init>(Ljavafx/animation/RotateTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 180
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

.method public final fromAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 240
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "fromAngle"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    .line 242
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

.method public final getAxis()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/RotateTransition;->DEFAULT_AXIS:Ljavafx/geometry/Point3D;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Point3D;

    goto :goto_0
.end method

.method public final getByAngle()D
    .locals 4

    .prologue
    .line 294
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/RotateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getFromAngle()D
    .locals 4

    .prologue
    .line 235
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/RotateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getToAngle()D
    .locals 4

    .prologue
    .line 265
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/RotateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/RotateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_startable(Z)Z
    .locals 4

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Transition;->impl_startable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 352
    invoke-direct {v2}, Ljavafx/animation/RotateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return v0

    .restart local v0    # "this":Ljavafx/animation/RotateTransition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_sync(Z)V
    .locals 12

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v7, v0

    move v8, v1

    invoke-super {v7, v8}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 358
    move v7, v1

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v7, :cond_1

    .line 359
    :cond_0
    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Ljavafx/animation/RotateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v8

    iput-object v8, v7, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    .line 360
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/animation/RotateTransition;->getFromAngle()D

    move-result-wide v7

    move-wide v2, v7

    .line 361
    .local v2, "_fromAngle":D
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/animation/RotateTransition;->getToAngle()D

    move-result-wide v7

    move-wide v4, v7

    .line 362
    .local v4, "_toAngle":D
    move-object v7, v0

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2

    move-wide v8, v2

    .line 363
    :goto_0
    iput-wide v8, v7, Ljavafx/animation/RotateTransition;->start:D

    .line 364
    move-object v7, v0

    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_3

    move-wide v8, v4

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/animation/RotateTransition;->start:D

    sub-double/2addr v8, v10

    :goto_1
    iput-wide v8, v7, Ljavafx/animation/RotateTransition;->delta:D

    .line 365
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/animation/RotateTransition;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v7

    move-object v6, v7

    .line 366
    .local v6, "_axis":Ljavafx/geometry/Point3D;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 367
    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v7}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->setRotationAxis(Ljavafx/geometry/Point3D;)V

    .line 370
    .end local v2    # "_fromAngle":D
    .end local v4    # "_toAngle":D
    .end local v6    # "_axis":Ljavafx/geometry/Point3D;
    :cond_1
    return-void

    .line 362
    .restart local v2    # "_fromAngle":D
    .restart local v4    # "_toAngle":D
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    .line 363
    invoke-virtual {v8}, Ljavafx/scene/Node;->getRotate()D

    move-result-wide v8

    goto :goto_0

    .line 364
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/animation/RotateTransition;->getByAngle()D

    move-result-wide v8

    goto :goto_1
.end method

.method protected interpolate(D)V
    .locals 11

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-wide v1, p1

    .local v1, "frac":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/RotateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/RotateTransition;->start:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/animation/RotateTransition;->delta:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setRotate(D)V

    .line 342
    return-void
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 114
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/RotateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 116
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

.method public final setAxis(Ljavafx/geometry/Point3D;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Point3D;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/RotateTransition;->axisProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 202
    :cond_1
    return-void
.end method

.method public final setByAngle(D)V
    .locals 9

    .prologue
    .line 288
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/RotateTransition;->byAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 289
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/RotateTransition;->byAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 291
    :cond_1
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/RotateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/RotateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 146
    :cond_1
    return-void
.end method

.method public final setFromAngle(D)V
    .locals 7

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/RotateTransition;->fromAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/RotateTransition;->fromAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 232
    :cond_1
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/RotateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/RotateTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 106
    :cond_1
    return-void
.end method

.method public final setToAngle(D)V
    .locals 7

    .prologue
    .line 259
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/RotateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 260
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/RotateTransition;->toAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 262
    :cond_1
    return-void
.end method

.method public final toAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/RotateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 270
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "toAngle"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    .line 272
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/RotateTransition;->toAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/RotateTransition;
    return-object v0
.end method

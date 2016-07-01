.class public final Ljavafx/animation/FadeTransition;
.super Ljavafx/animation/Transition;
.source "FadeTransition.java"


# static fields
.field private static final DEFAULT_BY_VALUE:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_VALUE:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_VALUE:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private byValue:Ljavafx/beans/property/DoubleProperty;

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

.field private fromValue:Ljavafx/beans/property/DoubleProperty;

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

.field private toValue:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 139
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 280
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/FadeTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 281
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/FadeTransition;->setNode(Ljavafx/scene/Node;)V

    .line 282
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/FadeTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 283
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FadeTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 314
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FadeTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final byValueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 266
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "byValue"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
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
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    new-instance v2, Ljavafx/animation/FadeTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/FadeTransition$1;-><init>(Ljavafx/animation/FadeTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 179
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0
.end method

.method public final fromValueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 207
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "fromValue"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    .line 209
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0
.end method

.method public final getByValue()D
    .locals 4

    .prologue
    .line 261
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/FadeTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getFromValue()D
    .locals 4

    .prologue
    .line 202
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/FadeTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getToValue()D
    .locals 4

    .prologue
    .line 232
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/FadeTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_startable(Z)Z
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Transition;->impl_startable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 320
    invoke-direct {v2}, Ljavafx/animation/FadeTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return v0

    .restart local v0    # "this":Ljavafx/animation/FadeTransition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_sync(Z)V
    .locals 14

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move v2, p1

    .local v2, "forceSync":Z
    move-object v7, v1

    move v8, v2

    invoke-super {v7, v8}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 326
    move v7, v2

    if-nez v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    if-nez v7, :cond_1

    .line 327
    :cond_0
    move-object v7, v1

    move-object v8, v1

    invoke-direct {v8}, Ljavafx/animation/FadeTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v8

    iput-object v8, v7, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    .line 328
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/FadeTransition;->getFromValue()D

    move-result-wide v7

    move-wide v3, v7

    .line 329
    .local v3, "_fromValue":D
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/FadeTransition;->getToValue()D

    move-result-wide v7

    move-wide v5, v7

    .line 330
    .local v5, "_toValue":D
    move-object v7, v1

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    move-wide v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 331
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 330
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 331
    :goto_0
    iput-wide v8, v7, Ljavafx/animation/FadeTransition;->start:D

    .line 332
    move-object v7, v1

    move-wide v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_3

    move-wide v8, v5

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/animation/FadeTransition;->start:D

    sub-double/2addr v8, v10

    :goto_1
    iput-wide v8, v7, Ljavafx/animation/FadeTransition;->delta:D

    .line 333
    move-object v7, v1

    iget-wide v7, v7, Ljavafx/animation/FadeTransition;->start:D

    move-object v9, v1

    iget-wide v9, v9, Ljavafx/animation/FadeTransition;->delta:D

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_4

    .line 334
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/animation/FadeTransition;->start:D

    sub-double/2addr v8, v10

    iput-wide v8, v7, Ljavafx/animation/FadeTransition;->delta:D

    .line 339
    .end local v3    # "_fromValue":D
    .end local v5    # "_toValue":D
    :cond_1
    :goto_2
    return-void

    .line 330
    .restart local v3    # "_fromValue":D
    .restart local v5    # "_toValue":D
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    .line 331
    invoke-virtual {v8}, Ljavafx/scene/Node;->getOpacity()D

    move-result-wide v8

    goto :goto_0

    .line 332
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/FadeTransition;->getByValue()D

    move-result-wide v8

    goto :goto_1

    .line 335
    :cond_4
    move-object v7, v1

    iget-wide v7, v7, Ljavafx/animation/FadeTransition;->start:D

    move-object v9, v1

    iget-wide v9, v9, Ljavafx/animation/FadeTransition;->delta:D

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 336
    move-object v7, v1

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/animation/FadeTransition;->start:D

    neg-double v8, v8

    iput-wide v8, v7, Ljavafx/animation/FadeTransition;->delta:D

    goto :goto_2
.end method

.method protected interpolate(D)V
    .locals 15

    .prologue
    .line 307
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-wide/from16 v2, p1

    .local v2, "frac":D
    const-wide/16 v6, 0x0

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/animation/FadeTransition;->start:D

    move-wide v10, v2

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/animation/FadeTransition;->delta:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 308
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 307
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 309
    .local v4, "newOpacity":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/FadeTransition;->cachedNode:Ljavafx/scene/Node;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 310
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
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 113
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/FadeTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0
.end method

.method public final setByValue(D)V
    .locals 9

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/FadeTransition;->byValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 256
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/FadeTransition;->byValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 258
    :cond_1
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/FadeTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FadeTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void
.end method

.method public final setFromValue(D)V
    .locals 7

    .prologue
    .line 196
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/FadeTransition;->fromValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/FadeTransition;->fromValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 199
    :cond_1
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FadeTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FadeTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 105
    :cond_1
    return-void
.end method

.method public final setToValue(D)V
    .locals 7

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/FadeTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/FadeTransition;->toValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 229
    :cond_1
    return-void
.end method

.method public final toValueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FadeTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 237
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "toValue"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FadeTransition;->toValue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FadeTransition;
    return-object v0
.end method

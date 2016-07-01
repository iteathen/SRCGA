.class public final Ljavafx/animation/FillTransition;
.super Ljavafx/animation/Transition;
.source "FillTransition.java"


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

.field private static final DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

.field private static final DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;


# instance fields
.field private cachedShape:Ljavafx/scene/shape/Shape;

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

.field private end:Ljavafx/scene/paint/Color;

.field private fromValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private shape:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private start:Ljavafx/scene/paint/Color;

.field private toValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/FillTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    .line 132
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/FillTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    .line 186
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/FillTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/FillTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/FillTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/FillTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavafx/animation/FillTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .locals 9

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "fromValue":Ljavafx/scene/paint/Color;
    move-object v3, p3

    .local v3, "toValue":Ljavafx/scene/paint/Color;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/animation/FillTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;)V
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "shape":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/animation/FillTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .locals 7

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "shape":Ljavafx/scene/shape/Shape;
    move-object v3, p3

    .local v3, "fromValue":Ljavafx/scene/paint/Color;
    move-object v4, p4

    .local v4, "toValue":Ljavafx/scene/paint/Color;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/animation/Transition;-><init>()V

    .line 244
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/animation/FillTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 245
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/animation/FillTransition;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 246
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/animation/FillTransition;->setFromValue(Ljavafx/scene/paint/Color;)V

    .line 247
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/FillTransition;->setToValue(Ljavafx/scene/paint/Color;)V

    .line 248
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/animation/FillTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 249
    return-void
.end method

.method private getTargetShape()Ljavafx/scene/shape/Shape;
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/FillTransition;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v3

    move-object v1, v3

    .line 301
    .local v1, "shape":Ljavafx/scene/shape/Shape;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 302
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/FillTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 303
    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/shape/Shape;

    if-eqz v3, :cond_0

    .line 304
    move-object v3, v2

    check-cast v3, Ljavafx/scene/shape/Shape;

    move-object v1, v3

    .line 307
    .end local v2    # "node":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0
.end method


# virtual methods
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
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 146
    move-object v1, v0

    new-instance v2, Ljavafx/animation/FillTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/FillTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/FillTransition$1;-><init>(Ljavafx/animation/FillTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 172
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0
.end method

.method public final fromValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 200
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "fromValue"

    sget-object v6, Ljavafx/animation/FillTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    .line 202
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FillTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FillTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getFromValue()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FillTransition;->DEFAULT_FROM_VALUE:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FillTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getShape()Ljavafx/scene/shape/Shape;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FillTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FillTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/Shape;

    goto :goto_0
.end method

.method public final getToValue()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/FillTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/FillTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method impl_startable(Z)Z
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavafx/animation/Transition;->impl_startable(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    const/4 v3, 0x0

    move v0, v3

    .line 330
    .end local v0    # "this":Ljavafx/animation/FillTransition;
    :goto_0
    return v0

    .line 316
    .restart local v0    # "this":Ljavafx/animation/FillTransition;
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/FillTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    if-eqz v3, :cond_1

    .line 317
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 321
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/FillTransition;->getTargetShape()Ljavafx/scene/shape/Shape;

    move-result-object v3

    move-object v2, v3

    .line 322
    .local v2, "shape":Ljavafx/scene/shape/Shape;
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 323
    invoke-virtual {v3}, Ljavafx/animation/FillTransition;->getFromValue()Ljavafx/scene/paint/Color;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v3

    instance-of v3, v3, Ljavafx/scene/paint/Color;

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v0

    .line 330
    invoke-virtual {v3}, Ljavafx/animation/FillTransition;->getToValue()Ljavafx/scene/paint/Color;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method impl_sync(Z)V
    .locals 5

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 336
    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/FillTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    if-nez v3, :cond_1

    .line 337
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/animation/FillTransition;->getTargetShape()Ljavafx/scene/shape/Shape;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/FillTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    .line 338
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/FillTransition;->getFromValue()Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v2, v3

    .line 339
    .local v2, "_fromValue":Ljavafx/scene/paint/Color;
    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 340
    :goto_0
    iput-object v4, v3, Ljavafx/animation/FillTransition;->start:Ljavafx/scene/paint/Color;

    .line 341
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/FillTransition;->getToValue()Ljavafx/scene/paint/Color;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/FillTransition;->end:Ljavafx/scene/paint/Color;

    .line 343
    .end local v2    # "_fromValue":Ljavafx/scene/paint/Color;
    :cond_1
    return-void

    .line 339
    .restart local v2    # "_fromValue":Ljavafx/scene/paint/Color;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    .line 340
    invoke-virtual {v4}, Ljavafx/scene/shape/Shape;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v4

    check-cast v4, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method protected interpolate(D)V
    .locals 9

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-wide v1, p1

    .local v1, "frac":D
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransition;->start:Ljavafx/scene/paint/Color;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/FillTransition;->end:Ljavafx/scene/paint/Color;

    move-wide v6, v1

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/paint/Color;->interpolate(Ljavafx/scene/paint/Color;D)Ljavafx/scene/paint/Color;

    move-result-object v4

    move-object v3, v4

    .line 296
    .local v3, "newColor":Ljavafx/scene/paint/Color;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/FillTransition;->cachedShape:Ljavafx/scene/shape/Shape;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Shape;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 297
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FillTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/FillTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FillTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 138
    :cond_1
    return-void
.end method

.method public final setFromValue(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FillTransition;->fromValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FillTransition;->fromValueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 192
    :cond_1
    return-void
.end method

.method public final setShape(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FillTransition;->shapeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 98
    :cond_1
    return-void
.end method

.method public final setToValue(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/FillTransition;->toValueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 222
    :cond_1
    return-void
.end method

.method public final shapeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 106
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "shape"

    sget-object v6, Ljavafx/animation/FillTransition;->DEFAULT_SHAPE:Ljavafx/scene/shape/Shape;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    .line 108
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->shape:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0
.end method

.method public final toValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/FillTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 230
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "toValue"

    sget-object v6, Ljavafx/animation/FillTransition;->DEFAULT_TO_VALUE:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    .line 232
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/FillTransition;->toValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/FillTransition;
    return-object v0
.end method

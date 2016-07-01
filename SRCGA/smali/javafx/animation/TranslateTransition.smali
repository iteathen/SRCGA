.class public final Ljavafx/animation/TranslateTransition;
.super Ljavafx/animation/Transition;
.source "TranslateTransition.java"


# static fields
.field private static final DEFAULT_BY_X:D = 0.0

.field private static final DEFAULT_BY_Y:D = 0.0

.field private static final DEFAULT_BY_Z:D = 0.0

.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_FROM_X:D = NaN

.field private static final DEFAULT_FROM_Y:D = NaN

.field private static final DEFAULT_FROM_Z:D = NaN

.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final DEFAULT_TO_X:D = NaN

.field private static final DEFAULT_TO_Y:D = NaN

.field private static final DEFAULT_TO_Z:D = NaN

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private byX:Ljavafx/beans/property/DoubleProperty;

.field private byY:Ljavafx/beans/property/DoubleProperty;

.field private byZ:Ljavafx/beans/property/DoubleProperty;

.field private cachedNode:Ljavafx/scene/Node;

.field private deltaX:D

.field private deltaY:D

.field private deltaZ:D

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

.field private fromX:Ljavafx/beans/property/DoubleProperty;

.field private fromY:Ljavafx/beans/property/DoubleProperty;

.field private fromZ:Ljavafx/beans/property/DoubleProperty;

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

.field private startX:D

.field private startY:D

.field private startZ:D

.field private toX:Ljavafx/beans/property/DoubleProperty;

.field private toY:Ljavafx/beans/property/DoubleProperty;

.field private toZ:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    .line 145
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/TranslateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/animation/TranslateTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    .line 480
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 467
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/TranslateTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 468
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/TranslateTransition;->setNode(Ljavafx/scene/Node;)V

    .line 469
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/TranslateTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 470
    return-void
.end method

.method private getTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 507
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final byXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 395
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "byX"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    .line 397
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final byYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 424
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "byY"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    .line 426
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final byZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 453
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "byZ"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    .line 455
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
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
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 159
    move-object v1, v0

    new-instance v2, Ljavafx/animation/TranslateTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/TranslateTransition$1;-><init>(Ljavafx/animation/TranslateTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 185
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final fromXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 214
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "fromX"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final fromYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 245
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "fromY"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    .line 247
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final fromZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 276
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "fromZ"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    .line 278
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final getByX()D
    .locals 4

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getByY()D
    .locals 4

    .prologue
    .line 419
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getByZ()D
    .locals 4

    .prologue
    .line 448
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getFromX()D
    .locals 4

    .prologue
    .line 209
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFromY()D
    .locals 4

    .prologue
    .line 240
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFromZ()D
    .locals 4

    .prologue
    .line 271
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getToX()D
    .locals 4

    .prologue
    .line 301
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getToY()D
    .locals 4

    .prologue
    .line 331
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getToZ()D
    .locals 4

    .prologue
    .line 361
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/TranslateTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/TranslateTransition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_startable(Z)Z
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/animation/Transition;->impl_startable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 513
    invoke-direct {v2}, Ljavafx/animation/TranslateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return v0

    .restart local v0    # "this":Ljavafx/animation/TranslateTransition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_sync(Z)V
    .locals 29

    .prologue
    .line 518
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/animation/TranslateTransition;
    move/from16 v5, p1

    .local v5, "forceSync":Z
    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-super/range {v24 .. v25}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 519
    move/from16 v24, v5

    if-nez v24, :cond_0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 520
    :cond_0
    move-object/from16 v24, v4

    move-object/from16 v25, v4

    invoke-direct/range {v25 .. v25}, Ljavafx/animation/TranslateTransition;->getTargetNode()Ljavafx/scene/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    .line 522
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getFromX()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 523
    .local v6, "_fromX":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getFromY()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 524
    .local v8, "_fromY":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getFromZ()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 526
    .local v10, "_fromZ":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getToX()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 527
    .local v12, "_toX":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getToY()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 528
    .local v14, "_toY":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getToZ()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 530
    .local v16, "_toZ":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getByX()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 531
    .local v18, "_byX":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getByY()D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 532
    .local v20, "_byY":D
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/TranslateTransition;->getByZ()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 534
    .local v22, "_byZ":D
    move-wide/from16 v24, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_2

    move-wide/from16 v24, v12

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_2

    move-wide/from16 v24, v18

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 535
    move-object/from16 v24, v4

    const-wide/high16 v25, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startX:D

    .line 541
    :goto_0
    move-wide/from16 v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_5

    move-wide/from16 v24, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_5

    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    .line 542
    move-object/from16 v24, v4

    const-wide/high16 v25, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startY:D

    .line 548
    :goto_1
    move-wide/from16 v24, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_8

    move-wide/from16 v24, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-eqz v24, :cond_8

    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 549
    move-object/from16 v24, v4

    const-wide/high16 v25, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startZ:D

    .line 555
    .end local v6    # "_fromX":D
    .end local v8    # "_fromY":D
    .end local v10    # "_fromZ":D
    .end local v12    # "_toX":D
    .end local v14    # "_toY":D
    .end local v16    # "_toZ":D
    .end local v18    # "_byX":D
    .end local v20    # "_byY":D
    .end local v22    # "_byZ":D
    :cond_1
    :goto_2
    return-void

    .line 537
    .restart local v6    # "_fromX":D
    .restart local v8    # "_fromY":D
    .restart local v10    # "_fromZ":D
    .restart local v12    # "_toX":D
    .restart local v14    # "_toY":D
    .restart local v16    # "_toZ":D
    .restart local v18    # "_byX":D
    .restart local v20    # "_byY":D
    .restart local v22    # "_byZ":D
    :cond_2
    move-object/from16 v24, v4

    move-wide/from16 v25, v6

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_3

    move-wide/from16 v25, v6

    :goto_3
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startX:D

    .line 538
    move-object/from16 v24, v4

    move-wide/from16 v25, v12

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_4

    move-wide/from16 v25, v12

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Ljavafx/animation/TranslateTransition;->startX:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    :goto_4
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->deltaX:D

    goto/16 :goto_0

    .line 537
    :cond_3
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/Node;->getTranslateX()D

    move-result-wide v25

    goto :goto_3

    .line 538
    :cond_4
    move-wide/from16 v25, v18

    goto :goto_4

    .line 544
    :cond_5
    move-object/from16 v24, v4

    move-wide/from16 v25, v8

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_6

    move-wide/from16 v25, v8

    :goto_5
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startY:D

    .line 545
    move-object/from16 v24, v4

    move-wide/from16 v25, v14

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_7

    move-wide/from16 v25, v14

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Ljavafx/animation/TranslateTransition;->startY:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    :goto_6
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->deltaY:D

    goto/16 :goto_1

    .line 544
    :cond_6
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/Node;->getTranslateY()D

    move-result-wide v25

    goto :goto_5

    .line 545
    :cond_7
    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljavafx/animation/TranslateTransition;->getByY()D

    move-result-wide v25

    goto :goto_6

    .line 551
    :cond_8
    move-object/from16 v24, v4

    move-wide/from16 v25, v10

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_9

    move-wide/from16 v25, v10

    :goto_7
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->startZ:D

    .line 552
    move-object/from16 v24, v4

    move-wide/from16 v25, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_a

    move-wide/from16 v25, v16

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-wide v0, v0, Ljavafx/animation/TranslateTransition;->startZ:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    :goto_8
    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Ljavafx/animation/TranslateTransition;->deltaZ:D

    goto/16 :goto_2

    .line 551
    :cond_9
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/Node;->getTranslateZ()D

    move-result-wide v25

    goto :goto_7

    .line 552
    :cond_a
    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljavafx/animation/TranslateTransition;->getByZ()D

    move-result-wide v25

    goto :goto_8
.end method

.method public interpolate(D)V
    .locals 11

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-wide v1, p1

    .local v1, "frac":D
    move-object v3, v0

    iget-wide v3, v3, Ljavafx/animation/TranslateTransition;->startX:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/TranslateTransition;->startX:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/animation/TranslateTransition;->deltaX:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setTranslateX(D)V

    .line 497
    :cond_0
    move-object v3, v0

    iget-wide v3, v3, Ljavafx/animation/TranslateTransition;->startY:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 498
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/TranslateTransition;->startY:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/animation/TranslateTransition;->deltaY:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setTranslateY(D)V

    .line 500
    :cond_1
    move-object v3, v0

    iget-wide v3, v3, Ljavafx/animation/TranslateTransition;->startZ:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TranslateTransition;->cachedNode:Ljavafx/scene/Node;

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/animation/TranslateTransition;->startZ:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/animation/TranslateTransition;->deltaZ:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setTranslateZ(D)V

    .line 503
    :cond_2
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
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 119
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/TranslateTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 121
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final setByX(D)V
    .locals 9

    .prologue
    .line 384
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->byX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 385
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->byXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 387
    :cond_1
    return-void
.end method

.method public final setByY(D)V
    .locals 9

    .prologue
    .line 413
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->byY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 414
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->byYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 416
    :cond_1
    return-void
.end method

.method public final setByZ(D)V
    .locals 9

    .prologue
    .line 442
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->byZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 443
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->byZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 445
    :cond_1
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/TranslateTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 151
    :cond_1
    return-void
.end method

.method public final setFromX(D)V
    .locals 7

    .prologue
    .line 203
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->fromX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->fromXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 206
    :cond_1
    return-void
.end method

.method public final setFromY(D)V
    .locals 7

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->fromY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->fromYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 237
    :cond_1
    return-void
.end method

.method public final setFromZ(D)V
    .locals 7

    .prologue
    .line 265
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->fromZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->fromZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 268
    :cond_1
    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/TranslateTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 111
    :cond_1
    return-void
.end method

.method public final setToX(D)V
    .locals 7

    .prologue
    .line 295
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->toXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 298
    :cond_1
    return-void
.end method

.method public final setToY(D)V
    .locals 7

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 326
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->toYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 328
    :cond_1
    return-void
.end method

.method public final setToZ(D)V
    .locals 7

    .prologue
    .line 355
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransition;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/TranslateTransition;->toZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 358
    :cond_1
    return-void
.end method

.method public final toXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 306
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "toX"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    .line 308
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final toYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 336
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "toY"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    .line 338
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

.method public final toZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 366
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "toZ"

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    .line 368
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition;->toZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition;
    return-object v0
.end method

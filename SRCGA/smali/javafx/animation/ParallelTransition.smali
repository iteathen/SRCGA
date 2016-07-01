.class public final Ljavafx/animation/ParallelTransition;
.super Ljavafx/animation/Transition;
.source "ParallelTransition.java"


# static fields
.field private static final DEFAULT_NODE:Ljavafx/scene/Node;

.field private static final EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedChildren:[Ljavafx/animation/Animation;

.field private final children:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private childrenChanged:Z

.field private final childrenListener:Ljavafx/beans/InvalidationListener;

.field private final childrenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private cycleTime:J

.field private delays:[J

.field private durations:[J

.field private forceChildSync:[Z

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

.field private offsetTicks:[J

.field private oldTicks:J

.field private final rateListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private rates:[D

.field private toggledRate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/animation/Animation;

    sput-object v0, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, Ljavafx/scene/Node;

    invoke-direct {v1, v2}, Ljavafx/animation/ParallelTransition;-><init>(Ljavafx/scene/Node;)V

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 10

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/Transition;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V

    .line 106
    move-object v2, v0

    sget-object v3, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/animation/ParallelTransition$$Lambda$3;->lambdaFactory$(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    move-object v2, v0

    new-instance v3, Ljavafx/animation/ParallelTransition$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    move-object v2, v0

    new-instance v3, Ljavafx/animation/ParallelTransition$3;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    new-instance v6, Ljavafx/animation/ParallelTransition$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v4, v5, v6}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 302
    move-object v2, v0

    sget-object v3, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v2, v3}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 10

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Transition;-><init>()V

    .line 106
    move-object v2, v0

    sget-object v3, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/animation/ParallelTransition$$Lambda$2;->lambdaFactory$(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    move-object v2, v0

    new-instance v3, Ljavafx/animation/ParallelTransition$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    move-object v2, v0

    new-instance v3, Ljavafx/animation/ParallelTransition$3;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    new-instance v6, Ljavafx/animation/ParallelTransition$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v4, v5, v6}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v3, v2, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 288
    move-object v2, v0

    sget-object v3, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v2, v3}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 289
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/ParallelTransition;->setNode(Ljavafx/scene/Node;)V

    .line 290
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V
    .locals 11

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "children":[Ljavafx/animation/Animation;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 106
    move-object v3, v0

    sget-object v4, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v4, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 114
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 117
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/animation/ParallelTransition$$Lambda$1;->lambdaFactory$(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 124
    move-object v3, v0

    new-instance v4, Ljavafx/animation/ParallelTransition$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/animation/ParallelTransition$1;-><init>(Ljavafx/animation/ParallelTransition;)V

    iput-object v4, v3, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 169
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    .line 171
    move-object v3, v0

    new-instance v4, Ljavafx/animation/ParallelTransition$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    new-instance v7, Ljavafx/animation/ParallelTransition$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/animation/ParallelTransition$2;-><init>(Ljavafx/animation/ParallelTransition;)V

    invoke-direct {v5, v6, v7}, Ljavafx/animation/ParallelTransition$3;-><init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V

    iput-object v4, v3, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    .line 263
    move-object v3, v0

    sget-object v4, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v3, v4}, Ljavafx/animation/ParallelTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 264
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/ParallelTransition;->setNode(Ljavafx/scene/Node;)V

    .line 265
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 266
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/Animation;)V
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "children":[Ljavafx/animation/Animation;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/animation/ParallelTransition;-><init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V

    .line 277
    return-void
.end method

.method static synthetic access$000(Ljavafx/animation/ParallelTransition;)[Ljavafx/animation/Animation;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/animation/ParallelTransition;)[D
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->rates:[D

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/animation/ParallelTransition;Z)Z
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return v0
.end method

.method static synthetic access$300(Ljavafx/animation/ParallelTransition;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/animation/ParallelTransition;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/animation/ParallelTransition;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->childrenSet:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "x1":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/animation/ParallelTransition;->checkCycle(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/animation/ParallelTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/ParallelTransition;->lambda$new$469(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/animation/ParallelTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/ParallelTransition;->lambda$new$469(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/animation/ParallelTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/ParallelTransition;->lambda$new$469(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private calculateFraction(JJ)D
    .locals 13

    .prologue
    .line 334
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/ParallelTransition;
    move-wide v2, p1

    .local v2, "currentTicks":J
    move-wide/from16 v4, p3

    .local v4, "cycleTicks":J
    move-wide v8, v2

    long-to-double v8, v8

    move-wide v10, v4

    long-to-double v10, v10

    div-double/2addr v8, v10

    move-wide v6, v8

    .line 335
    .local v6, "frac":D
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v1, v8

    .end local v1    # "this":Ljavafx/animation/ParallelTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/ParallelTransition;
    :cond_0
    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    move-wide v8, v6

    goto :goto_0
.end method

.method private static checkCycle(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "child":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "parent":Ljavafx/animation/Animation;
    move-object v3, v1

    move-object v2, v3

    .line 226
    .local v2, "a":Ljavafx/animation/Animation;
    :goto_0
    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_1

    .line 227
    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v3, :cond_0

    .line 228
    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    move-object v2, v3

    goto :goto_0

    .line 230
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 233
    .end local v0    # "child":Ljavafx/animation/Animation;
    :goto_1
    return v0

    .restart local v0    # "child":Ljavafx/animation/Animation;
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method private computeCycleDuration()Ljavafx/util/Duration;
    .locals 12

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    sget-object v8, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v1, v8

    .line 317
    .local v1, "maxTime":Ljavafx/util/Duration;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/animation/Animation;

    move-object v3, v8

    .line 318
    .local v3, "animation":Ljavafx/animation/Animation;
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 319
    .local v4, "absRate":D
    move-wide v8, v4

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    move-object v8, v3

    .line 320
    invoke-virtual {v8}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v8

    :goto_1
    move-object v6, v8

    .line 321
    .local v6, "totalDuration":Ljavafx/util/Duration;
    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v8

    move-object v7, v8

    .line 322
    .local v7, "childDuration":Ljavafx/util/Duration;
    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 323
    sget-object v8, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v0, v8

    .line 330
    .end local v0    # "this":Ljavafx/animation/ParallelTransition;
    .end local v3    # "animation":Ljavafx/animation/Animation;
    .end local v4    # "absRate":D
    .end local v6    # "totalDuration":Ljavafx/util/Duration;
    .end local v7    # "childDuration":Ljavafx/util/Duration;
    :goto_2
    return-object v0

    .line 320
    .restart local v0    # "this":Ljavafx/animation/ParallelTransition;
    .restart local v3    # "animation":Ljavafx/animation/Animation;
    .restart local v4    # "absRate":D
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljavafx/util/Duration;->divide(D)Ljavafx/util/Duration;

    move-result-object v8

    goto :goto_1

    .line 325
    .restart local v6    # "totalDuration":Ljavafx/util/Duration;
    .restart local v7    # "childDuration":Ljavafx/util/Duration;
    :cond_1
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    move-object v8, v7

    move-object v1, v8

    .line 329
    :cond_2
    goto :goto_0

    .line 330
    .end local v3    # "animation":Ljavafx/animation/Animation;
    .end local v4    # "absRate":D
    .end local v6    # "totalDuration":Ljavafx/util/Duration;
    .end local v7    # "childDuration":Ljavafx/util/Duration;
    :cond_3
    move-object v8, v1

    move-object v0, v8

    goto :goto_2
.end method

.method private jumpToEnd()V
    .locals 9

    .prologue
    .line 579
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/ParallelTransition;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 580
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v4, v2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 582
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 584
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/ParallelTransition;->durations:[J

    move v5, v2

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/ParallelTransition;->durations:[J

    move v7, v2

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_1
    return-void
.end method

.method private jumpToStart()V
    .locals 9

    .prologue
    .line 589
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/ParallelTransition;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 590
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v4, v2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 591
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 593
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/ParallelTransition;->durations:[J

    move v7, v2

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 589
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 595
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$469(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 119
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_0

    .line 120
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/ParallelTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/ParallelTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 122
    :cond_0
    return-void
.end method

.method private startChild(Ljavafx/animation/Animation;I)Z
    .locals 10

    .prologue
    .line 339
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/ParallelTransition;
    move-object v2, p1

    .local v2, "child":Ljavafx/animation/Animation;
    move v3, p2

    .local v3, "index":I
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v6, v3

    aget-boolean v5, v5, v6

    move v4, v5

    .line 340
    .local v4, "forceSync":Z
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/Animation;->impl_startable(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    move-object v5, v2

    iget-object v5, v5, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/ParallelTransition;->rates:[D

    move v7, v3

    aget-wide v6, v6, v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 342
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/Animation;->impl_start(Z)V

    .line 343
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v6, v3

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 344
    const/4 v5, 0x1

    move v1, v5

    .line 346
    .end local v1    # "this":Ljavafx/animation/ParallelTransition;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/animation/ParallelTransition;
    :cond_0
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0
.end method


# virtual methods
.method public final getChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/ParallelTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/ParallelTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/ParallelTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 311
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 312
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/ParallelTransition;
    return-object v0

    .line 311
    .restart local v0    # "this":Ljavafx/animation/ParallelTransition;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

    instance-of v2, v2, Ljavafx/animation/Transition;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->parent:Ljavafx/animation/Animation;

    check-cast v2, Ljavafx/animation/Transition;

    .line 312
    invoke-virtual {v2}, Ljavafx/animation/Transition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public impl_jumpTo(JJZ)V
    .locals 31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/animation/ParallelTransition;
    move-wide/from16 v5, p1

    .local v5, "currentTicks":J
    move-wide/from16 v7, p3

    .local v7, "cycleTicks":J
    move/from16 v9, p5

    .local v9, "forceJump":Z
    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/ParallelTransition;->impl_setCurrentTicks(J)V

    .line 525
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    move/from16 v20, v9

    if-nez v20, :cond_0

    .line 526
    .line 568
    :goto_0
    return-void

    .line 528
    :cond_0
    move-object/from16 v20, v4

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljavafx/animation/ParallelTransition;->impl_sync(Z)V

    .line 529
    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    invoke-direct/range {v20 .. v24}, Ljavafx/animation/ParallelTransition;->calculateFraction(JJ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 530
    .local v10, "frac":D
    const-wide/16 v20, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/animation/ParallelTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v22

    const-wide/16 v23, 0x0

    move-wide/from16 v25, v7

    move-wide/from16 v27, v10

    invoke-virtual/range {v22 .. v28}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v22

    move-wide/from16 v24, v7

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 531
    .local v12, "newTicks":J
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 532
    .local v14, "i":I
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v20, v0

    move-object/from16 v15, v20

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v16, v20

    const/16 v20, 0x0

    move/from16 v17, v20

    :goto_1
    move/from16 v20, v17

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move-object/from16 v20, v15

    move/from16 v21, v17

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 533
    .local v18, "animation":Ljavafx/animation/Animation;
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    move-object/from16 v19, v20

    .line 534
    .local v19, "status":Ljavafx/animation/Animation$Status;
    move-wide/from16 v20, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v14

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-gtz v20, :cond_3

    .line 535
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v14

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v21

    .line 536
    move-object/from16 v20, v19

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 537
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 538
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->impl_stop()V

    .line 565
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 532
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 539
    :cond_2
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    .line 540
    move-object/from16 v20, v18

    const-wide/16 v21, 0x0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v23, v0

    move/from16 v24, v14

    aget-wide v23, v23, v24

    const/16 v25, 0x1

    invoke-virtual/range {v20 .. v25}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    goto :goto_2

    .line 542
    :cond_3
    move-wide/from16 v20, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v14

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v14

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-ltz v20, :cond_5

    .line 543
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v14

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v21

    .line 544
    move-object/from16 v20, v19

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 545
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v14

    aget-wide v21, v21, v22

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    move-object/from16 v23, v0

    move/from16 v24, v14

    aget-wide v23, v23, v24

    mul-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 546
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->impl_stop()V

    goto/16 :goto_2

    .line 547
    :cond_4
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v20

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v14

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    .line 548
    move-object/from16 v20, v18

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v14

    aget-wide v21, v21, v22

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v23, v0

    move/from16 v24, v14

    aget-wide v23, v23, v24

    const/16 v25, 0x1

    invoke-virtual/range {v20 .. v25}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    goto/16 :goto_2

    .line 551
    :cond_5
    move-object/from16 v20, v19

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 552
    move-object/from16 v20, v4

    move-object/from16 v21, v18

    move/from16 v22, v14

    invoke-direct/range {v20 .. v22}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v20

    .line 553
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/ParallelTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 554
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->impl_pause()V

    .line 557
    :cond_6
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v14

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_7

    move-wide/from16 v22, v12

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v14

    aget-wide v24, v24, v25

    sub-long v22, v22, v24

    :goto_3
    aput-wide v22, v20, v21

    .line 563
    :goto_4
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v20, v0

    move-wide/from16 v21, v12

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v23, v0

    move/from16 v24, v14

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    move-object/from16 v23, v0

    move/from16 v24, v14

    aget-wide v23, v23, v24

    mul-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    goto/16 :goto_2

    .line 557
    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v14

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v14

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    move-wide/from16 v24, v12

    sub-long v22, v22, v24

    goto :goto_3

    .line 558
    :cond_8
    move-object/from16 v20, v19

    sget-object v21, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 559
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v14

    move-object/from16 v29, v20

    move/from16 v30, v21

    move-object/from16 v20, v29

    move/from16 v21, v30

    move-object/from16 v22, v29

    move/from16 v23, v30

    aget-wide v22, v22, v23

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v12

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->signum(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v20, v21

    goto/16 :goto_4

    .line 561
    :cond_9
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v14

    move-object/from16 v29, v20

    move/from16 v30, v21

    move-object/from16 v20, v29

    move/from16 v21, v30

    move-object/from16 v22, v29

    move/from16 v23, v30

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_a

    move-wide/from16 v24, v12

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    :goto_5
    add-long v22, v22, v24

    aput-wide v22, v20, v21

    goto/16 :goto_4

    :cond_a
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v24, v0

    move-wide/from16 v26, v12

    sub-long v24, v24, v26

    goto :goto_5

    .line 567
    .end local v18    # "animation":Ljavafx/animation/Animation;
    .end local v19    # "status":Ljavafx/animation/Animation$Status;
    :cond_b
    move-object/from16 v20, v4

    move-wide/from16 v21, v12

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/animation/ParallelTransition;->oldTicks:J

    .line 568
    goto/16 :goto_0
.end method

.method impl_pause()V
    .locals 7

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v5, v0

    invoke-super {v5}, Ljavafx/animation/Transition;->impl_pause()V

    .line 385
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 386
    .local v4, "animation":Ljavafx/animation/Animation;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    sget-object v6, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v5, v6, :cond_0

    .line 387
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Animation;->impl_pause()V

    .line 385
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v4    # "animation":Ljavafx/animation/Animation;
    :cond_1
    return-void
.end method

.method public impl_playTo(JJ)V
    .locals 37
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/animation/ParallelTransition;
    move-wide/from16 v5, p1

    .local v5, "currentTicks":J
    move-wide/from16 v7, p3

    .local v7, "cycleTicks":J
    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/ParallelTransition;->impl_setCurrentTicks(J)V

    .line 447
    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    invoke-direct/range {v20 .. v24}, Ljavafx/animation/ParallelTransition;->calculateFraction(JJ)D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 448
    .local v9, "frac":D
    const-wide/16 v20, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/animation/ParallelTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v22

    const-wide/16 v23, 0x0

    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    invoke-virtual/range {v22 .. v28}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v22

    move-wide/from16 v24, v7

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v11, v20

    .line 449
    .local v11, "newTicks":J
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 450
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "i":I
    :goto_0
    move/from16 v20, v13

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 451
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v20, v0

    move/from16 v21, v13

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 452
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v13

    move-object/from16 v34, v20

    move/from16 v35, v21

    move-object/from16 v20, v34

    move/from16 v21, v35

    move-object/from16 v22, v34

    move/from16 v23, v35

    aget-wide v22, v22, v23

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->signum(D)D

    move-result-wide v24

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v26, v0

    move/from16 v27, v13

    aget-wide v26, v26, v27

    const-wide/16 v28, 0x2

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v30, v0

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v32, v0

    move/from16 v33, v13

    aget-wide v32, v32, v33

    sub-long v30, v30, v32

    mul-long v28, v28, v30

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v20, v21

    .line 450
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 455
    :cond_1
    move-object/from16 v20, v4

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    .line 457
    .end local v13    # "i":I
    :cond_2
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_c

    .line 458
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 459
    .restart local v13    # "i":I
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    :goto_1
    move/from16 v20, v16

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move-object/from16 v20, v14

    move/from16 v21, v16

    aget-object v20, v20, v21

    move-object/from16 v17, v20

    .line 460
    .local v17, "animation":Ljavafx/animation/Animation;
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-ltz v20, :cond_4

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-lez v20, :cond_3

    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-wide v24, v24, v25

    .line 461
    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_4

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 462
    :cond_3
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-gtz v20, :cond_7

    const/16 v20, 0x1

    :goto_2
    move/from16 v18, v20

    .line 463
    .local v18, "enteringCycle":Z
    move-object/from16 v20, v4

    move-object/from16 v21, v17

    move/from16 v22, v13

    invoke-direct/range {v20 .. v22}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 464
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 475
    .end local v18    # "enteringCycle":Z
    :cond_4
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-ltz v20, :cond_a

    .line 476
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 477
    move-object/from16 v20, v17

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 478
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v13

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v21

    .line 483
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 459
    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 462
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 466
    .restart local v18    # "enteringCycle":Z
    :cond_8
    move/from16 v20, v18

    if-eqz v20, :cond_6

    .line 467
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v20

    move-object/from16 v19, v20

    .line 468
    .local v19, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v20, v19

    if-eqz v20, :cond_9

    .line 469
    move-object/from16 v20, v19

    new-instance v21, Ljavafx/event/ActionEvent;

    move-object/from16 v34, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v34

    move-object/from16 v23, v4

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v20 .. v21}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 471
    :cond_9
    goto :goto_4

    .line 480
    .end local v18    # "enteringCycle":Z
    .end local v19    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_a
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-lez v20, :cond_5

    .line 481
    move-object/from16 v20, v17

    move-wide/from16 v21, v11

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    sub-long v21, v21, v23

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    goto :goto_3

    .line 485
    .line 515
    .end local v17    # "animation":Ljavafx/animation/Animation;
    :cond_b
    move-object/from16 v20, v4

    move-wide/from16 v21, v11

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/animation/ParallelTransition;->oldTicks:J

    .line 516
    return-void

    .line 486
    .end local v13    # "i":I
    :cond_c
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 487
    .restart local v13    # "i":I
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    :goto_5
    move/from16 v20, v16

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move-object/from16 v20, v14

    move/from16 v21, v16

    aget-object v20, v20, v21

    move-object/from16 v17, v20

    .line 488
    .restart local v17    # "animation":Ljavafx/animation/Animation;
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_f

    .line 489
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_d

    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-ltz v20, :cond_e

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 490
    :cond_d
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/ParallelTransition;->oldTicks:J

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-wide v24, v24, v25

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-ltz v20, :cond_11

    const/16 v20, 0x1

    :goto_6
    move/from16 v18, v20

    .line 491
    .restart local v18    # "enteringCycle":Z
    move-object/from16 v20, v4

    move-object/from16 v21, v17

    move/from16 v22, v13

    invoke-direct/range {v20 .. v22}, Ljavafx/animation/ParallelTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 492
    move-object/from16 v20, v17

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->rates:[D

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    mul-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 503
    .end local v18    # "enteringCycle":Z
    :cond_e
    move-wide/from16 v20, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-wide v22, v22, v23

    cmp-long v20, v20, v22

    if-gtz v20, :cond_14

    .line 504
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 505
    move-object/from16 v20, v17

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 506
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v20, v0

    move/from16 v21, v13

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v21

    .line 512
    :cond_f
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 487
    :cond_10
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 490
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 494
    .restart local v18    # "enteringCycle":Z
    :cond_12
    move/from16 v20, v18

    if-eqz v20, :cond_10

    .line 495
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v20

    move-object/from16 v19, v20

    .line 496
    .restart local v19    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v20, v19

    if-eqz v20, :cond_13

    .line 497
    move-object/from16 v20, v19

    new-instance v21, Ljavafx/event/ActionEvent;

    move-object/from16 v34, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v34

    move-object/from16 v23, v4

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v20 .. v21}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 499
    :cond_13
    goto :goto_8

    .line 509
    .end local v18    # "enteringCycle":Z
    .end local v19    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_14
    move-object/from16 v20, v17

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->durations:[J

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->delays:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v21

    move-wide/from16 v23, v11

    sub-long v21, v21, v23

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    goto :goto_7
.end method

.method impl_resume()V
    .locals 12

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/ParallelTransition;
    move-object v7, v1

    invoke-super {v7}, Ljavafx/animation/Transition;->impl_resume()V

    .line 395
    const/4 v7, 0x0

    move v2, v7

    .line 396
    .local v2, "i":I
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 397
    .local v6, "animation":Ljavafx/animation/Animation;
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_0

    .line 398
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/animation/Animation;->impl_resume()V

    .line 399
    move-object v7, v6

    iget-object v7, v7, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->rates:[D

    move v9, v2

    aget-wide v8, v8, v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->signum(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 401
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    .end local v6    # "animation":Ljavafx/animation/Animation;
    :cond_1
    return-void
.end method

.method impl_start(Z)V
    .locals 12

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Ljavafx/animation/Transition;->impl_start(Z)V

    .line 408
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/animation/ParallelTransition;->toggledRate:Z

    .line 409
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/ParallelTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 410
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v6

    move-wide v2, v6

    .line 411
    .local v2, "curRate":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/ParallelTransition;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v6

    move-wide v4, v6

    .line 412
    .local v4, "currentTicks":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 413
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/animation/ParallelTransition;->jumpToEnd()V

    .line 414
    move-wide v6, v4

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/animation/ParallelTransition;->cycleTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 415
    move-object v6, v0

    move-wide v7, v4

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/animation/ParallelTransition;->cycleTime:J

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Ljavafx/animation/ParallelTransition;->impl_jumpTo(JJZ)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/animation/ParallelTransition;->jumpToStart()V

    .line 419
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 420
    move-object v6, v0

    move-wide v7, v4

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/animation/ParallelTransition;->cycleTime:J

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Ljavafx/animation/ParallelTransition;->impl_jumpTo(JJZ)V

    goto :goto_0
.end method

.method impl_stop()V
    .locals 7

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v5, v0

    invoke-super {v5}, Ljavafx/animation/Transition;->impl_stop()V

    .line 428
    move-object v5, v0

    iget-object v5, v5, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 429
    .local v4, "animation":Ljavafx/animation/Animation;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    sget-object v6, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v5, v6, :cond_0

    .line 430
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Animation;->impl_stop()V

    .line 428
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v4    # "animation":Ljavafx/animation/Animation;
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    if-eqz v5, :cond_2

    .line 434
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/animation/ParallelTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/ParallelTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 436
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 437
    return-void
.end method

.method impl_sync(Z)V
    .locals 15

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move/from16 v1, p1

    .local v1, "forceSync":Z
    move-object v8, v0

    move v9, v1

    invoke-super {v8, v9}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 352
    move v8, v1

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    if-nez v8, :cond_1

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->durations:[J

    if-nez v8, :cond_5

    .line 353
    :cond_1
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    sget-object v10, Ljavafx/animation/ParallelTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljavafx/animation/Animation;

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 354
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v8, v8

    move v2, v8

    .line 355
    .local v2, "n":I
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [J

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->durations:[J

    .line 356
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [J

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->delays:[J

    .line 357
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [D

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->rates:[D

    .line 358
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [J

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->offsetTicks:[J

    .line 359
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [Z

    iput-object v9, v8, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    .line 360
    move-object v8, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Ljavafx/animation/ParallelTransition;->cycleTime:J

    .line 361
    const/4 v8, 0x0

    move v3, v8

    .line 362
    .local v3, "i":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 363
    .local v7, "animation":Ljavafx/animation/Animation;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->rates:[D

    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 364
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->rates:[D

    move v9, v3

    aget-wide v8, v8, v9

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 365
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->rates:[D

    move v9, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    .line 367
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->durations:[J

    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/animation/ParallelTransition;->rates:[D

    move v12, v3

    aget-wide v11, v11, v12

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;D)J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 368
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->delays:[J

    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 369
    move-object v8, v0

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/animation/ParallelTransition;->cycleTime:J

    move-object v11, v0

    iget-object v11, v11, Ljavafx/animation/ParallelTransition;->durations:[J

    move v12, v3

    aget-wide v11, v11, v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/animation/ParallelTransition;->delays:[J

    move v14, v3

    aget-wide v13, v13, v14

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v8, Ljavafx/animation/ParallelTransition;->cycleTime:J

    .line 370
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v9, v3

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 362
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 373
    .end local v7    # "animation":Ljavafx/animation/Animation;
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/animation/ParallelTransition;->childrenChanged:Z

    .line 374
    .line 380
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 374
    :cond_5
    move v8, v1

    if-eqz v8, :cond_4

    .line 375
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    array-length v8, v8

    move v2, v8

    .line 376
    .restart local v2    # "n":I
    const/4 v8, 0x0

    move v3, v8

    .restart local v3    # "i":I
    :goto_1
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_4

    .line 377
    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/ParallelTransition;->forceChildSync:[Z

    move v9, v3

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected interpolate(D)V
    .locals 0
    .param p1, "frac"    # D

    .prologue
    .line 576
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
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 164
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/ParallelTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 166
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/ParallelTransition;
    return-object v0
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/ParallelTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/ParallelTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 156
    :cond_1
    return-void
.end method

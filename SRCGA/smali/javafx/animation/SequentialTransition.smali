.class public final Ljavafx/animation/SequentialTransition;
.super Ljavafx/animation/Transition;
.source "SequentialTransition.java"


# static fields
.field private static final BEFORE:I = -0x1

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

.field private curIndex:I

.field private delays:[J

.field private durations:[J

.field private end:I

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

.field private offsetTicks:J

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

.field private startTimes:[J

.field private toggledRate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/animation/Animation;

    sput-object v0, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, Ljavafx/scene/Node;

    invoke-direct {v1, v2}, Ljavafx/animation/SequentialTransition;-><init>(Ljavafx/scene/Node;)V

    .line 303
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 11

    .prologue
    .line 307
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, p1

    .local v2, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/animation/Transition;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V

    .line 111
    move-object v3, v1

    sget-object v4, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Ljavafx/animation/SequentialTransition$$Lambda$3;->lambdaFactory$(Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    move-object v3, v1

    new-instance v4, Ljavafx/animation/SequentialTransition$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    move-object v3, v1

    new-instance v4, Ljava/util/HashSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    move-object v3, v1

    new-instance v4, Ljavafx/animation/SequentialTransition$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    new-instance v7, Ljavafx/animation/SequentialTransition$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v5, v6, v7}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 308
    move-object v3, v1

    sget-object v4, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 11

    .prologue
    .line 293
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 111
    move-object v3, v1

    sget-object v4, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Ljavafx/animation/SequentialTransition$$Lambda$2;->lambdaFactory$(Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    move-object v3, v1

    new-instance v4, Ljavafx/animation/SequentialTransition$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    move-object v3, v1

    new-instance v4, Ljava/util/HashSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    move-object v3, v1

    new-instance v4, Ljavafx/animation/SequentialTransition$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    new-instance v7, Ljavafx/animation/SequentialTransition$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v5, v6, v7}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 294
    move-object v3, v1

    sget-object v4, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 295
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setNode(Ljavafx/scene/Node;)V

    .line 296
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V
    .locals 11

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "children":[Ljavafx/animation/Animation;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Transition;-><init>()V

    .line 111
    move-object v3, v0

    sget-object v4, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 118
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 119
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 121
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 124
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/animation/SequentialTransition$$Lambda$1;->lambdaFactory$(Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    .line 131
    move-object v3, v0

    new-instance v4, Ljavafx/animation/SequentialTransition$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/animation/SequentialTransition$1;-><init>(Ljavafx/animation/SequentialTransition;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    .line 177
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    .line 179
    move-object v3, v0

    new-instance v4, Ljavafx/animation/SequentialTransition$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    new-instance v7, Ljavafx/animation/SequentialTransition$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/animation/SequentialTransition$2;-><init>(Ljavafx/animation/SequentialTransition;)V

    invoke-direct {v5, v6, v7}, Ljavafx/animation/SequentialTransition$3;-><init>(Ljavafx/animation/SequentialTransition;Ljavafx/collections/ObservableList;)V

    iput-object v4, v3, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    .line 269
    move-object v3, v0

    sget-object v4, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setInterpolator(Ljavafx/animation/Interpolator;)V

    .line 270
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setNode(Ljavafx/scene/Node;)V

    .line 271
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 272
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/animation/Animation;)V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, p1

    .local v1, "children":[Ljavafx/animation/Animation;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/animation/SequentialTransition;-><init>(Ljavafx/scene/Node;[Ljavafx/animation/Animation;)V

    .line 283
    return-void
.end method

.method static synthetic access$000(Ljavafx/animation/SequentialTransition;)[Ljavafx/animation/Animation;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/animation/SequentialTransition;)[D
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/animation/SequentialTransition;Z)Z
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return v0
.end method

.method static synthetic access$300(Ljavafx/animation/SequentialTransition;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->childrenListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/animation/SequentialTransition;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/animation/SequentialTransition;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->childrenSet:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "x1":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/animation/SequentialTransition;->checkCycle(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/animation/SequentialTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/SequentialTransition;->lambda$new$401(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/animation/SequentialTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/SequentialTransition;->lambda$new$401(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/animation/SequentialTransition;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/SequentialTransition;->lambda$new$401(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private calculateFraction(JJ)D
    .locals 13

    .prologue
    .line 337
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
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

    .line 338
    .local v6, "frac":D
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v1, v8

    .end local v1    # "this":Ljavafx/animation/SequentialTransition;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/SequentialTransition;
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
    .line 233
    move-object v0, p0

    .local v0, "child":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "parent":Ljavafx/animation/Animation;
    move-object v3, v1

    move-object v2, v3

    .line 234
    .local v2, "a":Ljavafx/animation/Animation;
    :goto_0
    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_1

    .line 235
    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v3, :cond_0

    .line 236
    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    move-object v2, v3

    goto :goto_0

    .line 238
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 241
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
    .locals 11

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v1, v6

    .line 324
    .local v1, "currentDur":Ljavafx/util/Duration;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/animation/Animation;

    move-object v3, v6

    .line 325
    .local v3, "animation":Ljavafx/animation/Animation;
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    .line 326
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 327
    .local v4, "absRate":D
    move-object v6, v1

    move-wide v7, v4

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    move-object v7, v3

    .line 328
    invoke-virtual {v7}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v7

    .line 327
    :goto_1
    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->add(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    .line 329
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 330
    .line 333
    .end local v3    # "animation":Ljavafx/animation/Animation;
    .end local v4    # "absRate":D
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Ljavafx/animation/SequentialTransition;
    return-object v0

    .line 328
    .restart local v0    # "this":Ljavafx/animation/SequentialTransition;
    .restart local v3    # "animation":Ljavafx/animation/Animation;
    .restart local v4    # "absRate":D
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/util/Duration;->divide(D)Ljavafx/util/Duration;

    move-result-object v7

    goto :goto_1

    .line 332
    :cond_2
    goto :goto_0
.end method

.method private findNewIndex(J)I
    .locals 13

    .prologue
    .line 342
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-wide v2, p1

    .local v2, "ticks":J
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object v9, v1

    iget v9, v9, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v8, v9, :cond_0

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v9, v1

    iget v9, v9, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v8, v8, v9

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    move-wide v8, v2

    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 346
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    move v1, v8

    .line 353
    .end local v1    # "this":Ljavafx/animation/SequentialTransition;
    :goto_0
    return v1

    .line 349
    .restart local v1    # "this":Ljavafx/animation/SequentialTransition;
    :cond_0
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object v9, v1

    iget v9, v9, Ljavafx/animation/SequentialTransition;->end:I

    if-ne v8, v9, :cond_4

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 350
    .local v4, "indexUndefined":Z
    move v8, v4

    if-nez v8, :cond_2

    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/animation/SequentialTransition;->oldTicks:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    :cond_2
    const/4 v8, 0x0

    :goto_2
    move v5, v8

    .line 351
    .local v5, "fromIndex":I
    move v8, v4

    if-nez v8, :cond_3

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    :cond_3
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->end:I

    :goto_3
    move v6, v8

    .line 352
    .local v6, "toIndex":I
    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move v9, v5

    move v10, v6

    move-wide v11, v2

    invoke-static {v8, v9, v10, v11, v12}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v8

    move v7, v8

    .line 353
    .local v7, "index":I
    move v8, v7

    if-gez v8, :cond_7

    move v8, v7

    neg-int v8, v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    :goto_4
    move v1, v8

    goto :goto_0

    .line 349
    .end local v4    # "indexUndefined":Z
    .end local v5    # "fromIndex":I
    .end local v6    # "toIndex":I
    .end local v7    # "index":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 350
    .restart local v4    # "indexUndefined":Z
    :cond_5
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 351
    .restart local v5    # "fromIndex":I
    :cond_6
    move-object v8, v1

    iget v8, v8, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto :goto_3

    .line 353
    .restart local v6    # "toIndex":I
    .restart local v7    # "index":I
    :cond_7
    move v8, v7

    if-lez v8, :cond_8

    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private jumpToBefore()V
    .locals 9

    .prologue
    .line 740
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-object v3, v1

    iget v3, v3, Ljavafx/animation/SequentialTransition;->end:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 741
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v4, v2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 742
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 746
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/SequentialTransition;->durations:[J

    move v7, v2

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 740
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 748
    :cond_1
    return-void
.end method

.method private jumpToEnd()V
    .locals 9

    .prologue
    .line 717
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget v4, v4, Ljavafx/animation/SequentialTransition;->end:I

    if-ge v3, v4, :cond_1

    .line 718
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v4, v2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 719
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 734
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/SequentialTransition;->durations:[J

    move v5, v2

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/SequentialTransition;->durations:[J

    move v7, v2

    aget-wide v6, v6, v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$401(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/SequentialTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_0

    .line 127
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/SequentialTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/SequentialTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 129
    :cond_0
    return-void
.end method

.method private startChild(Ljavafx/animation/Animation;I)Z
    .locals 10

    .prologue
    .line 458
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, p1

    .local v2, "child":Ljavafx/animation/Animation;
    move v3, p2

    .local v3, "index":I
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v6, v3

    aget-boolean v5, v5, v6

    move v4, v5

    .line 459
    .local v4, "forceSync":Z
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/Animation;->impl_startable(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    move-object v5, v2

    iget-object v5, v5, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/SequentialTransition;->rates:[D

    move v7, v3

    aget-wide v6, v6, v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 461
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/animation/Animation;->impl_start(Z)V

    .line 462
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v6, v3

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 463
    const/4 v5, 0x1

    move v1, v5

    .line 465
    .end local v1    # "this":Ljavafx/animation/SequentialTransition;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/animation/SequentialTransition;
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
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/SequentialTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/SequentialTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method protected getParentTargetNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/SequentialTransition;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 317
    .local v1, "_node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 318
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/SequentialTransition;
    return-object v0

    .line 317
    .restart local v0    # "this":Ljavafx/animation/SequentialTransition;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    instance-of v2, v2, Ljavafx/animation/Transition;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->parent:Ljavafx/animation/Animation;

    check-cast v2, Ljavafx/animation/Transition;

    .line 318
    invoke-virtual {v2}, Ljavafx/animation/Transition;->getParentTargetNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_jumpTo(JJZ)V
    .locals 31

    .prologue
    .line 655
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/animation/SequentialTransition;
    move-wide/from16 v4, p1

    .local v4, "currentTicks":J
    move-wide/from16 v6, p3

    .local v6, "cycleTicks":J
    move/from16 v8, p5

    .local v8, "forceJump":Z
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    invoke-virtual/range {v21 .. v23}, Ljavafx/animation/SequentialTransition;->impl_setCurrentTicks(J)V

    .line 656
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/SequentialTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v21

    move-object/from16 v9, v21

    .line 658
    .local v9, "status":Ljavafx/animation/Animation$Status;
    move-object/from16 v21, v9

    sget-object v22, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v21, v8

    if-nez v21, :cond_0

    .line 659
    .line 714
    :goto_0
    return-void

    .line 662
    :cond_0
    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljavafx/animation/SequentialTransition;->impl_sync(Z)V

    .line 663
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    invoke-direct/range {v21 .. v25}, Ljavafx/animation/SequentialTransition;->calculateFraction(JJ)D

    move-result-wide v21

    move-wide/from16 v10, v21

    .line 664
    .local v10, "frac":D
    const-wide/16 v21, 0x0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljavafx/animation/SequentialTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v23

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    invoke-virtual/range {v23 .. v29}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v23

    move-wide/from16 v25, v6

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-wide/from16 v12, v21

    .line 665
    .local v12, "newTicks":J
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    move/from16 v14, v21

    .line 666
    .local v14, "oldIndex":I
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-wide/from16 v23, v12

    invoke-direct/range {v22 .. v24}, Ljavafx/animation/SequentialTransition;->findNewIndex(J)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 667
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v15, v21

    .line 668
    .local v15, "newAnimation":Ljavafx/animation/Animation;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v21

    move-wide/from16 v16, v21

    .line 669
    .local v16, "currentRate":D
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-wide v21, v21, v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v24, v0

    aget-wide v23, v23, v24

    invoke-static/range {v21 .. v24}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v21

    move-wide/from16 v18, v21

    .line 670
    .local v18, "currentDelay":J
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 671
    move-object/from16 v21, v9

    sget-object v22, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 672
    move/from16 v21, v14

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    move/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 673
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move/from16 v22, v14

    aget-object v21, v21, v22

    move-object/from16 v20, v21

    .line 674
    .local v20, "oldChild":Ljavafx/animation/Animation;
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 675
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move/from16 v22, v14

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/Animation;->impl_stop()V

    .line 678
    .end local v20    # "oldChild":Ljavafx/animation/Animation;
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 679
    move/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    :goto_1
    move/from16 v20, v21

    .local v20, "i":I
    :goto_2
    move/from16 v21, v20

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 680
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move/from16 v22, v20

    aget-object v21, v21, v22

    const-wide/16 v22, 0x0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v24, v0

    move/from16 v25, v20

    aget-wide v24, v24, v25

    const/16 v26, 0x1

    invoke-virtual/range {v21 .. v26}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 679
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .end local v20    # "i":I
    :cond_2
    move/from16 v21, v14

    goto :goto_1

    .line 687
    .restart local v20    # "i":I
    :cond_3
    move-wide/from16 v21, v12

    move-wide/from16 v23, v18

    cmp-long v21, v21, v23

    if-ltz v21, :cond_4

    .line 688
    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v21

    .line 689
    move-object/from16 v21, v9

    sget-object v22, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 690
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/Animation;->impl_pause()V

    .line 695
    .end local v20    # "i":I
    :cond_4
    move/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 696
    move-wide/from16 v21, v16

    const-wide/16 v23, 0x0

    cmpl-double v21, v21, v23

    if-nez v21, :cond_7

    .line 697
    move-object/from16 v21, v3

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v0, v22

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v12

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

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

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 712
    :goto_3
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v21, v0

    move-wide/from16 v22, v12

    move-wide/from16 v24, v18

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v25, v0

    aget-wide v24, v24, v25

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 713
    move-object/from16 v21, v3

    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 714
    goto/16 :goto_0

    .line 683
    :cond_5
    move/from16 v21, v14

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v21, 0x0

    :goto_4
    move/from16 v20, v21

    .restart local v20    # "i":I
    :goto_5
    move/from16 v21, v20

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 684
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v21, v0

    move/from16 v22, v20

    aget-object v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v22, v0

    move/from16 v23, v20

    aget-wide v22, v22, v23

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v24, v0

    move/from16 v25, v20

    aget-wide v24, v24, v25

    const/16 v26, 0x1

    invoke-virtual/range {v21 .. v26}, Ljavafx/animation/Animation;->impl_jumpTo(JJZ)V

    .line 683
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .end local v20    # "i":I
    :cond_6
    move/from16 v21, v14

    goto :goto_4

    .line 699
    :cond_7
    move-object/from16 v21, v3

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v0, v22

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_8

    move-wide/from16 v24, v12

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    :goto_6
    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto/16 :goto_3

    :cond_8
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v24, v0

    move-wide/from16 v26, v12

    sub-long v24, v24, v26

    goto :goto_6

    .line 702
    :cond_9
    move-wide/from16 v21, v16

    const-wide/16 v23, 0x0

    cmpl-double v21, v21, v23

    if-nez v21, :cond_b

    .line 703
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmpl-double v21, v21, v23

    if-lez v21, :cond_a

    .line 704
    move-object/from16 v21, v3

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v18

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto/16 :goto_3

    .line 706
    :cond_a
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v23, v0

    aget-wide v22, v22, v23

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v25, v0

    aget-wide v24, v24, v25

    add-long v22, v22, v24

    move-wide/from16 v24, v12

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto/16 :goto_3

    .line 709
    :cond_b
    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_c

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v18

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    :goto_7
    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    goto/16 :goto_3

    :cond_c
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v23, v0

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v24, v12

    sub-long v22, v22, v24

    goto :goto_7
.end method

.method impl_pause()V
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/animation/Transition;->impl_pause()V

    .line 422
    move-object v2, v0

    iget v2, v2, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object v3, v0

    iget v3, v3, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v2, v3, :cond_0

    .line 423
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v3, v0

    iget v3, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 424
    .local v1, "current":Ljavafx/animation/Animation;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_0

    .line 425
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Animation;->impl_pause()V

    .line 428
    .end local v1    # "current":Ljavafx/animation/Animation;
    :cond_0
    return-void
.end method

.method impl_playTo(JJ)V
    .locals 33

    .prologue
    .line 469
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/animation/SequentialTransition;
    move-wide/from16 v4, p1

    .local v4, "currentTicks":J
    move-wide/from16 v6, p3

    .local v6, "cycleTicks":J
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->impl_setCurrentTicks(J)V

    .line 470
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    invoke-direct/range {v18 .. v22}, Ljavafx/animation/SequentialTransition;->calculateFraction(JJ)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 471
    .local v8, "frac":D
    const-wide/16 v18, 0x0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/animation/SequentialTransition;->getCachedInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v20

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    invoke-virtual/range {v20 .. v26}, Ljavafx/animation/Interpolator;->interpolate(JJD)J

    move-result-wide v20

    move-wide/from16 v22, v6

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 472
    .local v10, "newTicks":J
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->findNewIndex(J)I

    move-result v18

    move/from16 v12, v18

    .line 473
    .local v12, "newIndex":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    :cond_0
    const/16 v18, 0x0

    :goto_0
    move-object/from16 v13, v18

    .line 474
    .local v13, "current":Ljavafx/animation/Animation;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 475
    move-object/from16 v18, v13

    if-eqz v18, :cond_1

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 476
    move-object/from16 v18, v3

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->signum(D)D

    move-result-wide v21

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v24, v0

    aget-wide v23, v23, v24

    const-wide/16 v25, 0x2

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v27, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v30, v0

    aget-wide v29, v29, v30

    sub-long v27, v27, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v30, v0

    aget-wide v29, v29, v30

    sub-long v27, v27, v29

    mul-long v25, v25, v27

    sub-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 478
    :cond_1
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    .line 480
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 481
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_b

    .line 482
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 483
    .local v14, "currentDelay":J
    move-wide/from16 v18, v10

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-ltz v18, :cond_9

    .line 484
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 485
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gtz v18, :cond_7

    const/16 v18, 0x1

    :goto_1
    move/from16 v16, v18

    .line 486
    .local v16, "enteringCycle":Z
    move/from16 v18, v16

    if-eqz v18, :cond_4

    .line 487
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 489
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 490
    move/from16 v18, v16

    if-eqz v18, :cond_5

    .line 491
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v17, v18

    .line 492
    .local v17, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v17

    if-eqz v18, :cond_5

    .line 493
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 496
    .end local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_5
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 497
    .line 652
    .end local v14    # "currentDelay":J
    .end local v16    # "enteringCycle":Z
    :goto_2
    return-void

    .line 473
    .end local v13    # "current":Ljavafx/animation/Animation;
    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    goto/16 :goto_0

    .line 485
    .restart local v13    # "current":Ljavafx/animation/Animation;
    .restart local v14    # "currentDelay":J
    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 500
    :cond_8
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-ltz v18, :cond_a

    .line 501
    move-object/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 502
    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    .line 503
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 510
    .line 651
    .end local v14    # "currentDelay":J
    :cond_9
    :goto_3
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 652
    goto :goto_2

    .line 506
    .restart local v14    # "currentDelay":J
    :cond_a
    move-wide/from16 v18, v10

    move-wide/from16 v20, v14

    sub-long v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 507
    .local v16, "localTicks":J
    move-object/from16 v18, v13

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    goto :goto_3

    .line 511
    .end local v14    # "currentDelay":J
    .end local v16    # "localTicks":J
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 512
    .restart local v14    # "currentDelay":J
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-gez v18, :cond_c

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-ltz v18, :cond_10

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 513
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-ltz v18, :cond_f

    const/16 v18, 0x1

    :goto_4
    move/from16 v16, v18

    .line 514
    .local v16, "enteringCycle":Z
    move/from16 v18, v16

    if-eqz v18, :cond_d

    .line 515
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-wide v21, v21, v22

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 517
    :cond_d
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-nez v18, :cond_10

    .line 518
    move/from16 v18, v16

    if-eqz v18, :cond_e

    .line 519
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v17, v18

    .line 520
    .restart local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v17

    if-eqz v18, :cond_e

    .line 521
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 524
    .end local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_e
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 525
    goto/16 :goto_2

    .line 513
    .end local v16    # "enteringCycle":Z
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 528
    :cond_10
    move-wide/from16 v18, v10

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gtz v18, :cond_12

    .line 529
    move-object/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 530
    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_11

    .line 531
    move-object/from16 v18, v3

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 537
    :cond_11
    :goto_5
    goto/16 :goto_3

    .line 534
    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v20, v10

    sub-long v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 535
    .local v16, "localTicks":J
    move-object/from16 v18, v13

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    goto :goto_5

    .line 539
    .end local v14    # "currentDelay":J
    .end local v16    # "localTicks":J
    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_20

    .line 540
    move-object/from16 v18, v13

    if-eqz v18, :cond_18

    .line 541
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 542
    .local v14, "oldDelay":J
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-lez v18, :cond_14

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_16

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-eqz v18, :cond_16

    .line 543
    :cond_14
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1a

    const/16 v18, 0x1

    :goto_6
    move/from16 v16, v18

    .line 544
    .local v16, "enteringCycle":Z
    move/from16 v18, v16

    if-eqz v18, :cond_15

    .line 545
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 547
    :cond_15
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-nez v18, :cond_16

    .line 548
    move/from16 v18, v16

    if-eqz v18, :cond_16

    .line 549
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v17, v18

    .line 550
    .restart local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v17

    if-eqz v18, :cond_16

    .line 551
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 556
    .end local v16    # "enteringCycle":Z
    .end local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_16
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 557
    move-object/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 559
    :cond_17
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 561
    .end local v14    # "oldDelay":J
    :cond_18
    move-object/from16 v18, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 562
    move-object/from16 v18, v3

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 563
    :goto_7
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 564
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 565
    .local v14, "animation":Ljavafx/animation/Animation;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 566
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 567
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 574
    :cond_19
    :goto_8
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 563
    move-object/from16 v18, v3

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_7

    .line 543
    .local v14, "oldDelay":J
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 569
    .local v14, "animation":Ljavafx/animation/Animation;
    :cond_1b
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v15, v18

    .line 570
    .local v15, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v15

    if-eqz v18, :cond_19

    .line 571
    move-object/from16 v18, v15

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_8

    .line 576
    .end local v14    # "animation":Ljavafx/animation/Animation;
    .end local v15    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_1c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 577
    .local v14, "newAnimation":Ljavafx/animation/Animation;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 578
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 579
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-ltz v18, :cond_1e

    .line 580
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 581
    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    cmp-long v18, v18, v20

    if-nez v18, :cond_1d

    .line 582
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->end:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 594
    :cond_1d
    :goto_9
    goto/16 :goto_3

    .line 585
    :cond_1e
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v23, v0

    aget-wide v22, v22, v23

    invoke-static/range {v20 .. v23}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v18

    move-wide/from16 v15, v18

    .line 586
    .local v15, "localTicks":J
    move-object/from16 v18, v14

    move-wide/from16 v19, v15

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 587
    goto :goto_9

    .line 589
    .end local v15    # "localTicks":J
    :cond_1f
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v15, v18

    .line 590
    .local v15, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v15

    if-eqz v18, :cond_1d

    .line 591
    move-object/from16 v18, v15

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_9

    .line 595
    .end local v14    # "newAnimation":Ljavafx/animation/Animation;
    .end local v15    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_20
    move-object/from16 v18, v13

    if-eqz v18, :cond_25

    .line 596
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 597
    .local v14, "oldDelay":J
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-gez v18, :cond_21

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-lez v18, :cond_23

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 598
    :cond_21
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->oldTicks:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-ltz v18, :cond_27

    const/16 v18, 0x1

    :goto_a
    move/from16 v16, v18

    .line 599
    .restart local v16    # "enteringCycle":Z
    move/from16 v18, v16

    if-eqz v18, :cond_22

    .line 600
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-wide v21, v21, v22

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 602
    :cond_22
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-nez v18, :cond_23

    .line 603
    move/from16 v18, v16

    if-eqz v18, :cond_23

    .line 604
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v17, v18

    .line 605
    .restart local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v17

    if-eqz v18, :cond_23

    .line 606
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 611
    .end local v16    # "enteringCycle":Z
    .end local v17    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_23
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v18

    sget-object v19, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_24

    .line 612
    move-object/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 614
    :cond_24
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 616
    .end local v14    # "oldDelay":J
    :cond_25
    move-object/from16 v18, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 617
    move-object/from16 v18, v3

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 618
    :goto_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_29

    .line 619
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 620
    .local v14, "animation":Ljavafx/animation/Animation;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-wide v21, v21, v22

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 621
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 622
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 629
    :cond_26
    :goto_c
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/animation/SequentialTransition;->oldTicks:J

    .line 618
    move-object/from16 v18, v3

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_b

    .line 598
    .local v14, "oldDelay":J
    :cond_27
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 624
    .local v14, "animation":Ljavafx/animation/Animation;
    :cond_28
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v15, v18

    .line 625
    .restart local v15    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v15

    if-eqz v18, :cond_26

    .line 626
    move-object/from16 v18, v15

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_c

    .line 631
    .end local v14    # "animation":Ljavafx/animation/Animation;
    .end local v15    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_29
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 632
    .local v14, "newAnimation":Ljavafx/animation/Animation;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v22, v0

    aget-wide v21, v21, v22

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 633
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/SequentialTransition;->startChild(Ljavafx/animation/Animation;I)Z

    move-result v18

    if-eqz v18, :cond_2b

    .line 634
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v21, v0

    aget-wide v20, v20, v21

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->delays:[J

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v23, v0

    aget-wide v22, v22, v23

    invoke-static/range {v20 .. v23}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2a

    .line 635
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->durations:[J

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v20, v0

    aget-wide v19, v19, v20

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 636
    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    .line 637
    move-object/from16 v18, v3

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/animation/SequentialTransition;->curIndex:I

    goto/16 :goto_3

    .line 640
    :cond_2a
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/animation/SequentialTransition;->curIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v18, v18, v19

    move-wide/from16 v20, v10

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/animation/TickCalculation;->sub(JJ)J

    move-result-wide v18

    move-wide/from16 v15, v18

    .line 641
    .local v15, "localTicks":J
    move-object/from16 v18, v14

    move-wide/from16 v19, v15

    invoke-virtual/range {v18 .. v20}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 642
    goto/16 :goto_3

    .line 644
    .end local v15    # "localTicks":J
    :cond_2b
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v18

    move-object/from16 v15, v18

    .line 645
    .local v15, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v18, v15

    if-eqz v18, :cond_9

    .line 646
    move-object/from16 v18, v15

    new-instance v19, Ljavafx/event/ActionEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface/range {v18 .. v19}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto/16 :goto_3
.end method

.method impl_resume()V
    .locals 8

    .prologue
    .line 432
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/animation/Transition;->impl_resume()V

    .line 433
    move-object v3, v1

    iget v3, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v1

    iget v3, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object v4, v1

    iget v4, v4, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v3, v4, :cond_0

    .line 434
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v4, v1

    iget v4, v4, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v3, v3, v4

    move-object v2, v3

    .line 435
    .local v2, "current":Ljavafx/animation/Animation;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v3

    sget-object v4, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    if-ne v3, v4, :cond_0

    .line 436
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/Animation;->impl_resume()V

    .line 437
    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/SequentialTransition;->rates:[D

    move-object v5, v1

    iget v5, v5, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-wide v4, v4, v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 440
    .end local v2    # "current":Ljavafx/animation/Animation;
    :cond_0
    return-void
.end method

.method impl_start(Z)V
    .locals 12

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Ljavafx/animation/Transition;->impl_start(Z)V

    .line 399
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/animation/SequentialTransition;->toggledRate:Z

    .line 400
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/SequentialTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 401
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Ljavafx/animation/SequentialTransition;->offsetTicks:J

    .line 402
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v6

    move-wide v2, v6

    .line 403
    .local v2, "curRate":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/SequentialTransition;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v6

    move-wide v4, v6

    .line 404
    .local v4, "currentTicks":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 405
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/animation/SequentialTransition;->jumpToEnd()V

    .line 406
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Ljavafx/animation/SequentialTransition;->end:I

    iput v7, v6, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 407
    move-wide v6, v4

    move-object v8, v0

    iget-object v8, v8, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v9, v0

    iget v9, v9, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 408
    move-object v6, v0

    move-wide v7, v4

    move-object v9, v0

    iget-object v9, v9, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v10, v0

    iget v10, v10, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v9, v9, v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Ljavafx/animation/SequentialTransition;->impl_jumpTo(JJZ)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/animation/SequentialTransition;->jumpToBefore()V

    .line 412
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Ljavafx/animation/SequentialTransition;->curIndex:I

    .line 413
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 414
    move-object v6, v0

    move-wide v7, v4

    move-object v9, v0

    iget-object v9, v9, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v10, v0

    iget v10, v10, Ljavafx/animation/SequentialTransition;->end:I

    aget-wide v9, v9, v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Ljavafx/animation/SequentialTransition;->impl_jumpTo(JJZ)V

    goto :goto_0
.end method

.method impl_stop()V
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/animation/Transition;->impl_stop()V

    .line 445
    move-object v2, v0

    iget v2, v2, Ljavafx/animation/SequentialTransition;->curIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljavafx/animation/SequentialTransition;->curIndex:I

    move-object v3, v0

    iget v3, v3, Ljavafx/animation/SequentialTransition;->end:I

    if-eq v2, v3, :cond_0

    .line 446
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v3, v0

    iget v3, v3, Ljavafx/animation/SequentialTransition;->curIndex:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 447
    .local v1, "current":Ljavafx/animation/Animation;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v2, v3, :cond_0

    .line 448
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/animation/Animation;->impl_stop()V

    .line 451
    .end local v1    # "current":Ljavafx/animation/Animation;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    if-eqz v2, :cond_1

    .line 452
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/SequentialTransition;->computeCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/SequentialTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 454
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/SequentialTransition;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/SequentialTransition;->rateListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 455
    return-void
.end method

.method impl_sync(Z)V
    .locals 16

    .prologue
    .line 358
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/animation/SequentialTransition;
    move/from16 v2, p1

    .local v2, "forceSync":Z
    move-object v10, v1

    move v11, v2

    invoke-super {v10, v11}, Ljavafx/animation/Transition;->impl_sync(Z)V

    .line 360
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v1

    iget-boolean v10, v10, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    if-nez v10, :cond_1

    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->startTimes:[J

    if-nez v10, :cond_7

    .line 361
    :cond_1
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    sget-object v12, Ljavafx/animation/SequentialTransition;->EMPTY_ANIMATION_ARRAY:[Ljavafx/animation/Animation;

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljavafx/animation/Animation;

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    .line 362
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    array-length v11, v11

    iput v11, v10, Ljavafx/animation/SequentialTransition;->end:I

    .line 363
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [J

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->startTimes:[J

    .line 364
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    new-array v11, v11, [J

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->durations:[J

    .line 365
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    new-array v11, v11, [J

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->delays:[J

    .line 366
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    new-array v11, v11, [D

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->rates:[D

    .line 367
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    new-array v11, v11, [Z

    iput-object v11, v10, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    .line 368
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 369
    .local v3, "cycleTicks":J
    const/4 v10, 0x0

    move v5, v10

    .line 370
    .local v5, "i":I
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->cachedChildren:[Ljavafx/animation/Animation;

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_5

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 371
    .local v9, "animation":Ljavafx/animation/Animation;
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move v11, v5

    move-wide v12, v3

    aput-wide v12, v10, v11

    .line 372
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->rates:[D

    move v11, v5

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 373
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->rates:[D

    move v11, v5

    aget-wide v10, v10, v11

    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 374
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->rates:[D

    move v11, v5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v10, v11

    .line 376
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->durations:[J

    move v11, v5

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljavafx/animation/SequentialTransition;->rates:[D

    move v14, v5

    aget-wide v13, v13, v14

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;D)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 377
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->delays:[J

    move v11, v5

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 378
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->durations:[J

    move v11, v5

    aget-wide v10, v10, v11

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->delays:[J

    move v11, v5

    aget-wide v10, v10, v11

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    move-wide v10, v3

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 379
    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v10

    .line 383
    :goto_1
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v11, v5

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 384
    add-int/lit8 v5, v5, 0x1

    .line 370
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 381
    :cond_4
    move-wide v10, v3

    move-object v12, v1

    iget-object v12, v12, Ljavafx/animation/SequentialTransition;->durations:[J

    move v13, v5

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Ljavafx/animation/SequentialTransition;->delays:[J

    move v15, v5

    aget-wide v14, v14, v15

    invoke-static {v12, v13, v14, v15}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/animation/TickCalculation;->add(JJ)J

    move-result-wide v10

    move-wide v3, v10

    goto :goto_1

    .line 386
    .end local v9    # "animation":Ljavafx/animation/Animation;
    :cond_5
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->startTimes:[J

    move-object v11, v1

    iget v11, v11, Ljavafx/animation/SequentialTransition;->end:I

    move-wide v12, v3

    aput-wide v12, v10, v11

    .line 387
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/animation/SequentialTransition;->childrenChanged:Z

    .line 388
    .line 394
    .end local v3    # "cycleTicks":J
    .end local v5    # "i":I
    :cond_6
    return-void

    .line 388
    :cond_7
    move v10, v2

    if-eqz v10, :cond_6

    .line 389
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    array-length v10, v10

    move v3, v10

    .line 390
    .local v3, "n":I
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_2
    move v10, v4

    move v11, v3

    if-ge v10, v11, :cond_6

    .line 391
    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/SequentialTransition;->forceChildSync:[Z

    move v11, v4

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected interpolate(D)V
    .locals 0
    .param p1, "frac"    # D

    .prologue
    .line 756
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
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 172
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "node"

    sget-object v6, Ljavafx/animation/SequentialTransition;->DEFAULT_NODE:Ljavafx/scene/Node;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    .line 174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/SequentialTransition;
    return-object v0
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/SequentialTransition;->node:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/SequentialTransition;->nodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 164
    :cond_1
    return-void
.end method

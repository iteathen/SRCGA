.class public abstract Ljavafx/concurrent/ScheduledService;
.super Ljavafx/concurrent/Service;
.source "ScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/concurrent/Service",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DELAY_TIMER:Ljava/util/Timer;

.field public static final EXPONENTIAL_BACKOFF_STRATEGY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINEAR_BACKOFF_STRATEGY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGARITHMIC_BACKOFF_STRATEGY:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backoffStrategy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;>;"
        }
    .end annotation
.end field

.field private cumulativePeriod:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private currentFailureCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private delay:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private delayTask:Ljava/util/TimerTask;

.field private freshStart:Z

.field private lastRunTime:J

.field private lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<TV;>;"
        }
    .end annotation
.end field

.field private maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private maximumFailureCount:Ljavafx/beans/property/IntegerProperty;

.field private period:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private restartOnFailure:Ljavafx/beans/property/BooleanProperty;

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 146
    const-class v0, Ljavafx/concurrent/ScheduledService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    .line 157
    new-instance v0, Ljavafx/concurrent/ScheduledService$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/concurrent/ScheduledService$1;-><init>()V

    sput-object v0, Ljavafx/concurrent/ScheduledService;->EXPONENTIAL_BACKOFF_STRATEGY:Ljavafx/util/Callback;

    .line 177
    new-instance v0, Ljavafx/concurrent/ScheduledService$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/concurrent/ScheduledService$2;-><init>()V

    sput-object v0, Ljavafx/concurrent/ScheduledService;->LOGARITHMIC_BACKOFF_STRATEGY:Ljavafx/util/Callback;

    .line 197
    new-instance v0, Ljavafx/concurrent/ScheduledService$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljavafx/concurrent/ScheduledService$3;-><init>()V

    sput-object v0, Ljavafx/concurrent/ScheduledService;->LINEAR_BACKOFF_STRATEGY:Ljavafx/util/Callback;

    .line 211
    new-instance v0, Ljava/util/Timer;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ScheduledService Delay Timer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Ljavafx/concurrent/ScheduledService;->DELAY_TIMER:Ljava/util/Timer;

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;-><init>()V

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "delay"

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->delay:Ljavafx/beans/property/ObjectProperty;

    .line 228
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "period"

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->period:Ljavafx/beans/property/ObjectProperty;

    .line 237
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "backoffStrategy"

    sget-object v6, Ljavafx/concurrent/ScheduledService;->LOGARITHMIC_BACKOFF_STRATEGY:Ljavafx/util/Callback;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->backoffStrategy:Ljavafx/beans/property/ObjectProperty;

    .line 246
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "restartOnFailure"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->restartOnFailure:Ljavafx/beans/property/BooleanProperty;

    .line 256
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "maximumFailureCount"

    const v6, 0x7fffffff

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->maximumFailureCount:Ljavafx/beans/property/IntegerProperty;

    .line 265
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "currentFailureCount"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->currentFailureCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 279
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "cumulativePeriod"

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->cumulativePeriod:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 304
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "maximumCumulativePeriod"

    sget-object v6, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;

    .line 315
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "lastValue"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 323
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/concurrent/ScheduledService;->lastRunTime:J

    .line 329
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    .line 335
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    .line 342
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/concurrent/ScheduledService;->stop:Z

    return-void
.end method

.method static synthetic access$000(Ljavafx/concurrent/ScheduledService;Ljavafx/concurrent/Task;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/ScheduledService;
    move-object v1, p1

    .local v1, "x1":Ljavafx/concurrent/Task;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/ScheduledService;->executeTaskNow(Ljavafx/concurrent/Task;)V

    return-void
.end method

.method static synthetic access$102(Ljavafx/concurrent/ScheduledService;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/ScheduledService;
    move-object v1, p1

    .local v1, "x1":Ljava/util/TimerTask;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/concurrent/ScheduledService;
    return-object v0
.end method

.method private createTimerTask(Ljavafx/concurrent/Task;)Ljava/util/TimerTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Task",
            "<TV;>;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "task":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    sget-boolean v2, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 520
    :cond_0
    new-instance v2, Ljavafx/concurrent/ScheduledService$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/concurrent/ScheduledService$4;-><init>(Ljavafx/concurrent/ScheduledService;Ljavafx/concurrent/Task;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method private executeTaskNow(Ljavafx/concurrent/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Task",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 548
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v2, p1

    .local v2, "task":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    sget-boolean v3, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 549
    :cond_0
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/concurrent/ScheduledService;->clock()J

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/concurrent/ScheduledService;->lastRunTime:J

    .line 550
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    .line 551
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Ljavafx/concurrent/Service;->executeTask(Ljavafx/concurrent/Task;)V

    .line 552
    return-void
.end method

.method private static normalize(Ljavafx/util/Duration;)D
    .locals 4

    .prologue
    .line 560
    move-object v1, p0

    .local v1, "d":Ljavafx/util/Duration;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    .line 562
    .end local v1    # "d":Ljavafx/util/Duration;
    :goto_0
    return-wide v1

    .line 561
    .restart local v1    # "d":Ljavafx/util/Duration;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v2

    goto :goto_0

    .line 562
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method private setCurrentFailureCount(I)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->currentFailureCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 270
    return-void
.end method

.method private superReset()V
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/concurrent/Service;->reset()V

    .line 508
    return-void
.end method


# virtual methods
.method public final backoffStrategyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->backoffStrategy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public cancel()Z
    .locals 4

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v2, v0

    invoke-super {v2}, Ljavafx/concurrent/Service;->cancel()Z

    move-result v2

    move v1, v2

    .line 466
    .local v1, "ret":Z
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/concurrent/ScheduledService;->stop:Z

    .line 467
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 468
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    move-result v2

    .line 469
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    .line 471
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return v0
.end method

.method clock()J
    .locals 3

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-wide v0
.end method

.method public final cumulativePeriodProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->cumulativePeriod:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final currentFailureCountProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->currentFailureCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final delayProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->delay:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method protected executeTask(Ljavafx/concurrent/Task;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Task",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "task":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    sget-boolean v6, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 350
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->checkThread()V

    .line 352
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    if-eqz v6, :cond_3

    .line 357
    sget-boolean v6, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 360
    :cond_1
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/concurrent/ScheduledService;->getPeriod()Ljavafx/util/Duration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/concurrent/ScheduledService;->setCumulativePeriod(Ljavafx/util/Duration;)V

    .line 363
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->getDelay()Ljavafx/util/Duration;

    move-result-object v6

    invoke-static {v6}, Ljavafx/concurrent/ScheduledService;->normalize(Ljavafx/util/Duration;)D

    move-result-wide v6

    double-to-long v6, v6

    move-wide v2, v6

    .line 364
    .local v2, "d":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 366
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/concurrent/ScheduledService;->executeTaskNow(Ljavafx/concurrent/Task;)V

    .line 370
    .line 386
    .end local v2    # "d":J
    :goto_0
    return-void

    .line 368
    .restart local v2    # "d":J
    :cond_2
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/concurrent/ScheduledService;->createTimerTask(Ljavafx/concurrent/Task;)Ljava/util/TimerTask;

    move-result-object v8

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    move-object v9, v13

    iput-object v9, v8, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/concurrent/ScheduledService;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 375
    .end local v2    # "d":J
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->getCumulativePeriod()Ljavafx/util/Duration;

    move-result-object v6

    invoke-static {v6}, Ljavafx/concurrent/ScheduledService;->normalize(Ljavafx/util/Duration;)D

    move-result-wide v6

    move-wide v2, v6

    .line 376
    .local v2, "cumulative":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->clock()J

    move-result-wide v6

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/concurrent/ScheduledService;->lastRunTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    move-wide v4, v6

    .line 377
    .local v4, "runPeriod":D
    move-wide v6, v4

    move-wide v8, v2

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 379
    sget-boolean v6, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 380
    :cond_4
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/concurrent/ScheduledService;->createTimerTask(Ljavafx/concurrent/Task;)Ljava/util/TimerTask;

    move-result-object v8

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    move-object v9, v13

    iput-object v9, v8, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    move-wide v8, v2

    move-wide v10, v4

    sub-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/concurrent/ScheduledService;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 383
    :cond_5
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/concurrent/ScheduledService;->executeTaskNow(Ljavafx/concurrent/Task;)V

    goto :goto_0
.end method

.method protected failed()V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v3, v0

    invoke-super {v3}, Ljavafx/concurrent/Service;->failed()V

    .line 422
    sget-boolean v3, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/ScheduledService;->delayTask:Ljava/util/TimerTask;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 424
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/ScheduledService;->getCurrentFailureCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/concurrent/ScheduledService;->setCurrentFailureCount(I)V

    .line 425
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->getRestartOnFailure()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->getMaximumFailureCount()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/ScheduledService;->getCurrentFailureCount()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 428
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->getBackoffStrategy()Ljavafx/util/Callback;

    move-result-object v3

    move-object v1, v3

    .line 429
    .local v1, "func":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/concurrent/ScheduledService<*>;Ljavafx/util/Duration;>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 430
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/util/Duration;

    move-object v2, v3

    .line 431
    .local v2, "d":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/concurrent/ScheduledService;->setCumulativePeriod(Ljavafx/util/Duration;)V

    .line 434
    .end local v2    # "d":Ljavafx/util/Duration;
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/ScheduledService;->superReset()V

    .line 435
    sget-boolean v3, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 436
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->start()V

    .line 440
    .end local v1    # "func":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/concurrent/ScheduledService<*>;Ljavafx/util/Duration;>;"
    :cond_3
    return-void
.end method

.method public final getBackoffStrategy()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->backoffStrategy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getCumulativePeriod()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->cumulativePeriod:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getCurrentFailureCount()I
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->currentFailureCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return v0
.end method

.method public final getDelay()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->delay:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getLastValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getMaximumCumulativePeriod()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getMaximumFailureCount()I
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->maximumFailureCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return v0
.end method

.method public final getPeriod()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->period:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final getRestartOnFailure()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->restartOnFailure:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return v0
.end method

.method isFreshStart()Z
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return v0
.end method

.method public final lastValueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final maximumCumulativePeriodProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final maximumFailureCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->maximumFailureCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public final periodProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->period:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/concurrent/Service;->reset()V

    .line 449
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/concurrent/ScheduledService;->stop:Z

    .line 450
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/ScheduledService;->getPeriod()Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/concurrent/ScheduledService;->setCumulativePeriod(Ljavafx/util/Duration;)V

    .line 451
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 452
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/concurrent/ScheduledService;->setCurrentFailureCount(I)V

    .line 453
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/concurrent/ScheduledService;->lastRunTime:J

    .line 454
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    .line 455
    return-void
.end method

.method public final restartOnFailureProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/ScheduledService;->restartOnFailure:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    return-object v0
.end method

.method schedule(Ljava/util/TimerTask;J)V
    .locals 8

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "task":Ljava/util/TimerTask;
    move-wide v2, p2

    .local v2, "delay":J
    sget-object v4, Ljavafx/concurrent/ScheduledService;->DELAY_TIMER:Ljava/util/Timer;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 483
    return-void
.end method

.method public final setBackoffStrategy(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;",
            "Ljavafx/util/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/concurrent/ScheduledService<*>;Ljavafx/util/Duration;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->backoffStrategy:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method setCumulativePeriod(Ljavafx/util/Duration;)V
    .locals 8

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    :cond_0
    sget-object v4, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    :goto_0
    move-object v2, v4

    .line 286
    .local v2, "newValue":Ljavafx/util/Duration;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/concurrent/ScheduledService;->maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/util/Duration;

    move-object v3, v4

    .line 287
    .local v3, "maxPeriod":Ljavafx/util/Duration;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 289
    sget-object v4, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v2, v4

    .line 294
    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/concurrent/ScheduledService;->cumulativePeriod:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 295
    return-void

    .line 284
    .end local v2    # "newValue":Ljavafx/util/Duration;
    .end local v3    # "maxPeriod":Ljavafx/util/Duration;
    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 290
    .restart local v2    # "newValue":Ljavafx/util/Duration;
    .restart local v3    # "maxPeriod":Ljavafx/util/Duration;
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    move-object v4, v3

    move-object v2, v4

    goto :goto_1
.end method

.method public final setDelay(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->delay:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaximumCumulativePeriod(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->maximumCumulativePeriod:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaximumFailureCount(I)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->maximumFailureCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setPeriod(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->period:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRestartOnFailure(Z)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService;->restartOnFailure:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected succeeded()V
    .locals 6

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<TV;>;"
    move-object v3, v0

    invoke-super {v3}, Ljavafx/concurrent/Service;->succeeded()V

    .line 395
    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/ScheduledService;->lastValue:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/ScheduledService;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 397
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->getPeriod()Ljavafx/util/Duration;

    move-result-object v3

    move-object v1, v3

    .line 398
    .local v1, "d":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/concurrent/ScheduledService;->setCumulativePeriod(Ljavafx/util/Duration;)V

    .line 400
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/concurrent/ScheduledService;->stop:Z

    move v2, v3

    .line 403
    .local v2, "wasCancelled":Z
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/ScheduledService;->superReset()V

    .line 404
    sget-boolean v3, Ljavafx/concurrent/ScheduledService;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/concurrent/ScheduledService;->freshStart:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 407
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    .line 408
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->cancelFromReadyState()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/ScheduledService;->start()V

    goto :goto_0
.end method

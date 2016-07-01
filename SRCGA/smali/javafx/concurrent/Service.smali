.class public abstract Ljavafx/concurrent/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljavafx/concurrent/Worker;
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/concurrent/Worker",
        "<TV;>;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final IO_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Lsun/util/logging/PlatformLogger;

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final THREAD_GROUP:Ljava/lang/ThreadGroup;

.field private static final THREAD_POOL_SIZE:I = 0x20

.field private static final THREAD_TIME_OUT:J = 0x3e8L

.field private static final UNCAUGHT_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private eventHelper:Ljavafx/concurrent/EventHelper;

.field private final exception:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljavafx/beans/property/StringProperty;

.field private final progress:Ljavafx/beans/property/DoubleProperty;

.field private final running:Ljavafx/beans/property/BooleanProperty;

.field private volatile startedOnce:Z

.field private final state:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation
.end field

.field private task:Ljavafx/concurrent/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/concurrent/Task",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final title:Ljavafx/beans/property/StringProperty;

.field private final totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

.field private final value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final workDone:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 141
    const-class v0, Ljavafx/concurrent/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Ljavafx/concurrent/Service;->LOG:Lsun/util/logging/PlatformLogger;

    .line 161
    new-instance v0, Ljavafx/concurrent/Service$1;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    invoke-direct {v1}, Ljavafx/concurrent/Service$1;-><init>()V

    sput-object v0, Ljavafx/concurrent/Service;->IO_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 171
    invoke-static {}, Ljavafx/concurrent/Service$$Lambda$6;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    sput-object v0, Ljavafx/concurrent/Service;->THREAD_GROUP:Ljava/lang/ThreadGroup;

    .line 172
    invoke-static {}, Ljavafx/concurrent/Service$$Lambda$7;->lambdaFactory$()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Ljavafx/concurrent/Service;->UNCAUGHT_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 182
    invoke-static {}, Ljavafx/concurrent/Service$$Lambda$8;->lambdaFactory$()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Ljavafx/concurrent/Service;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 190
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x2

    const/16 v3, 0x20

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljavafx/concurrent/Service;->IO_QUEUE:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Ljavafx/concurrent/Service;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Ljavafx/concurrent/Service;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 196
    sget-object v0, Ljavafx/concurrent/Service;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 197
    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 199
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "state"

    sget-object v6, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    .line 203
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    .line 207
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "exception"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    .line 211
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "workDone"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    .line 215
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "totalWork"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    .line 219
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "progress"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    .line 223
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "running"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    .line 227
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "message"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    .line 231
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "title"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    .line 240
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "executor"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->executor:Ljavafx/beans/property/ObjectProperty;

    .line 521
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/concurrent/Service;->startedOnce:Z

    .line 737
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    .line 529
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    invoke-static {v2}, Ljavafx/concurrent/Service$$Lambda$1;->lambdaFactory$(Ljavafx/concurrent/Service;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 560
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Ljavafx/concurrent/Service;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/concurrent/Service;Ljavafx/beans/value/ObservableValue;Ljavafx/concurrent/Worker$State;Ljavafx/concurrent/Worker$State;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/concurrent/Service;->lambda$new$474(Ljavafx/beans/value/ObservableValue;Ljavafx/concurrent/Worker$State;Ljavafx/concurrent/Worker$State;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/concurrent/Service;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->lambda$start$475()V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/concurrent/Task;Ljava/security/AccessControlContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/concurrent/Service;->lambda$executeTask$477(Ljavafx/concurrent/Task;Ljava/security/AccessControlContext;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/concurrent/Task;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/concurrent/Service;->lambda$null$476(Ljavafx/concurrent/Task;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/concurrent/Service;->lambda$null$472(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$5()Ljava/lang/ThreadGroup;
    .locals 1

    invoke-static {}, Ljavafx/concurrent/Service;->lambda$static$470()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/concurrent/Service;->lambda$static$471(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/concurrent/Service;->lambda$static$473(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private getEventHelper()Ljavafx/concurrent/EventHelper;
    .locals 6

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    .line 740
    move-object v1, v0

    new-instance v2, Ljavafx/concurrent/EventHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/concurrent/EventHelper;-><init>(Ljavafx/event/EventTarget;)V

    iput-object v2, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    .line 742
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method private static synthetic lambda$executeTask$477(Ljavafx/concurrent/Task;Ljava/security/AccessControlContext;)V
    .locals 4

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "task":Ljavafx/concurrent/Task;
    move-object v1, p1

    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/concurrent/Service$$Lambda$4;->lambdaFactory$(Ljavafx/concurrent/Task;)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 728
    return-void
.end method

.method private synthetic lambda$new$474(Ljavafx/beans/value/ObservableValue;Ljavafx/concurrent/Worker$State;Ljavafx/concurrent/Worker$State;)V
    .locals 10

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "observableValue":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "old":Ljavafx/concurrent/Worker$State;
    move-object v3, p3

    .local v3, "value1":Ljavafx/concurrent/Worker$State;
    sget-object v4, Ljavafx/concurrent/Service$2;->$SwitchMap$javafx$concurrent$Worker$State:[I

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/concurrent/Worker$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 557
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Should be unreachable"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 534
    :pswitch_0
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_CANCELLED:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 535
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->cancelled()V

    .line 536
    .line 559
    :goto_0
    return-void

    .line 538
    :pswitch_1
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_FAILED:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 539
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->failed()V

    .line 540
    goto :goto_0

    .line 542
    :pswitch_2
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_READY:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 543
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->ready()V

    .line 544
    goto :goto_0

    .line 546
    :pswitch_3
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_RUNNING:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 547
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->running()V

    .line 548
    goto :goto_0

    .line 550
    :pswitch_4
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SCHEDULED:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 551
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->scheduled()V

    .line 552
    goto :goto_0

    .line 554
    :pswitch_5
    move-object v4, v0

    new-instance v5, Ljavafx/concurrent/WorkerStateEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SUCCEEDED:Ljavafx/event/EventType;

    invoke-direct {v6, v7, v8}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v4, v5}, Ljavafx/concurrent/Service;->fireEvent(Ljavafx/event/Event;)V

    .line 555
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->succeeded()V

    .line 556
    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static synthetic lambda$null$472(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "run":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljavafx/concurrent/Service;->THREAD_GROUP:Ljava/lang/ThreadGroup;

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 184
    .local v1, "th":Ljava/lang/Thread;
    move-object v2, v1

    sget-object v3, Ljavafx/concurrent/Service;->UNCAUGHT_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 185
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 186
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 187
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "run":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static synthetic lambda$null$476(Ljavafx/concurrent/Task;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "task":Ljavafx/concurrent/Task;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Task;->run()V

    .line 726
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "task":Ljavafx/concurrent/Task;
    return-object v0
.end method

.method private synthetic lambda$start$475()V
    .locals 3

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    sget-object v2, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 681
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Service;->executeTask(Ljavafx/concurrent/Task;)V

    .line 682
    return-void
.end method

.method private static synthetic lambda$static$470()Ljava/lang/ThreadGroup;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/ThreadGroup;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "javafx concurrent thread pool"

    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$static$471(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "thread":Ljava/lang/Thread;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/IllegalMonitorStateException;

    if-nez v2, :cond_0

    .line 177
    sget-object v2, Ljavafx/concurrent/Service;->LOG:Lsun/util/logging/PlatformLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught throwable in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavafx/concurrent/Service;->THREAD_GROUP:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$473(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "run":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/concurrent/Service$$Lambda$5;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    move-object v0, v1

    .end local v0    # "run":Ljava/lang/Runnable;
    return-object v0
.end method


# virtual methods
.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 798
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 799
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 762
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 763
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 859
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 568
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    if-nez v1, :cond_2

    .line 569
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/concurrent/Worker$State;->SUCCEEDED:Ljavafx/concurrent/Worker$State;

    if-ne v1, v2, :cond_1

    .line 570
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 575
    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :goto_0
    return v0

    .line 572
    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    sget-object v2, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 573
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 575
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->cancel(Z)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method cancelFromReadyState()V
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    sget-object v2, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 703
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    sget-object v2, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 704
    return-void
.end method

.method protected cancelled()V
    .locals 0

    .prologue
    .line 463
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method checkThread()V
    .locals 5

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/concurrent/Service;->startedOnce:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->isFxApplicationThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Service must only be used from the FX Application Thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_0
    return-void
.end method

.method protected abstract createTask()Ljavafx/concurrent/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/concurrent/Task",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method protected executeTask(Ljavafx/concurrent/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Task",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "task":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    move-object v2, v4

    .line 722
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/concurrent/Service;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 723
    .local v3, "e":Ljava/util/concurrent/Executor;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljavafx/concurrent/Service$$Lambda$3;->lambdaFactory$(Ljavafx/concurrent/Task;Ljava/security/AccessControlContext;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 729
    return-void

    .line 722
    .end local v3    # "e":Ljava/util/concurrent/Executor;
    :cond_0
    sget-object v4, Ljavafx/concurrent/Service;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0
.end method

.method public final executorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->executor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method protected failed()V
    .locals 0

    .prologue
    .line 507
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method protected final fireEvent(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 853
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->fireEvent(Ljavafx/event/Event;)V

    .line 854
    return-void
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->executor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getOnCancelled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 442
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnCancelled()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnFailed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 486
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnFailed()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnReady()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 266
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnReady()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnRunning()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 354
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnRunning()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnScheduled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 310
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnScheduled()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnSucceeded()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 398
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnSucceeded()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getProgress()D
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-wide v0
.end method

.method public final getState()Ljavafx/concurrent/Worker$State;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/concurrent/Worker$State;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getTotalWork()D
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-wide v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final getWorkDone()D
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-wide v0
.end method

.method isFxApplicationThread()Z
    .locals 2

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return v0
.end method

.method public final messageProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onCancelledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 430
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onCancelledProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onFailedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 474
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onFailedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onReadyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 254
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onReadyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onRunningProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 342
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onRunningProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onScheduledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 298
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onScheduledProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final onSucceededProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 386
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onSucceededProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method protected ready()V
    .locals 0

    .prologue
    .line 287
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 817
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 818
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 781
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 782
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 618
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 619
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->getState()Ljavafx/concurrent/Worker$State;

    move-result-object v3

    move-object v2, v3

    .line 620
    .local v2, "s":Ljavafx/concurrent/Worker$State;
    move-object v3, v2

    sget-object v4, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    if-eq v3, v4, :cond_0

    move-object v3, v2

    sget-object v4, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    if-ne v3, v4, :cond_1

    .line 621
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 624
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    .line 625
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 626
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    sget-object v4, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 627
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 628
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 629
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 630
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 631
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    .line 632
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 633
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    .line 634
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 635
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    .line 636
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 637
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 638
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 639
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 640
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 641
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 642
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 643
    return-void
.end method

.method public restart()V
    .locals 3

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 588
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    if-eqz v1, :cond_0

    .line 589
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v1}, Ljavafx/concurrent/Task;->cancel()Z

    move-result v1

    .line 590
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    .line 601
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 602
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    sget-object v2, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 606
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->reset()V

    .line 609
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->start()V

    .line 610
    return-void
.end method

.method runLater(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 914
    return-void
.end method

.method protected running()V
    .locals 0

    .prologue
    .line 375
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method public final runningProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method protected scheduled()V
    .locals 0

    .prologue
    .line 331
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method protected final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Service;->checkThread()V

    .line 836
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 837
    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/util/concurrent/Executor;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->executor:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnCancelled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 454
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnCancelled(Ljavafx/event/EventHandler;)V

    .line 455
    return-void
.end method

.method public final setOnFailed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 498
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnFailed(Ljavafx/event/EventHandler;)V

    .line 499
    return-void
.end method

.method public final setOnReady(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 278
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnReady(Ljavafx/event/EventHandler;)V

    .line 279
    return-void
.end method

.method public final setOnRunning(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 366
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnRunning(Ljavafx/event/EventHandler;)V

    .line 367
    return-void
.end method

.method public final setOnScheduled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 322
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnScheduled(Ljavafx/event/EventHandler;)V

    .line 323
    return-void
.end method

.method public final setOnSucceeded(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->checkThread()V

    .line 410
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Service;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnSucceeded(Ljavafx/event/EventHandler;)V

    .line 411
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    .line 652
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->getState()Ljavafx/concurrent/Worker$State;

    move-result-object v1

    sget-object v2, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    if-eq v1, v2, :cond_0

    .line 653
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only start a Service in the READY state. Was in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 654
    invoke-virtual {v4}, Ljavafx/concurrent/Service;->getState()Ljavafx/concurrent/Worker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Service;->createTask()Ljavafx/concurrent/Task;

    move-result-object v2

    iput-object v2, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    .line 661
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->stateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 662
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 663
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->exception:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 664
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->workDoneProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 665
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->totalWorkProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 666
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->progress:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 667
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->running:Ljavafx/beans/property/BooleanProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->runningProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 668
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->message:Ljavafx/beans/property/StringProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->messageProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 669
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 673
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/concurrent/Service;->startedOnce:Z

    .line 675
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->isFxApplicationThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/concurrent/Service$$Lambda$2;->lambdaFactory$(Ljavafx/concurrent/Service;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Service;->runLater(Ljava/lang/Runnable;)V

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    sget-object v2, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 688
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Service;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Service;->executeTask(Ljavafx/concurrent/Task;)V

    goto :goto_0
.end method

.method public final stateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->state:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method protected succeeded()V
    .locals 0

    .prologue
    .line 419
    .local p0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-void
.end method

.method public final titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final totalWorkProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->totalWorkToBeDone:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

.method public final workDoneProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Service;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Service;->workDone:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Service;, "Ljavafx/concurrent/Service<TV;>;"
    return-object v0
.end method

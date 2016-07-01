.class public Lcom/sun/javafx/runtime/async/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# static fields
.field private static instance:Ljava/util/concurrent/ExecutorService;

.field private static timerInstance:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/BackgroundExecutor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->lambda$getExecutor$256(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->lambda$getTimer$257(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 6

    .prologue
    .line 49
    const-class v5, Lcom/sun/javafx/runtime/async/BackgroundExecutor;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/sun/javafx/runtime/async/BackgroundExecutor$$Lambda$1;->lambdaFactory$()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    .line 55
    sget-object v1, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 58
    :cond_0
    sget-object v1, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1
.end method

.method public static declared-synchronized getTimer()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 6

    .prologue
    .line 62
    const-class v4, Lcom/sun/javafx/runtime/async/BackgroundExecutor;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    invoke-static {}, Lcom/sun/javafx/runtime/async/BackgroundExecutor$$Lambda$2;->lambdaFactory$()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    :cond_0
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static synthetic lambda$getExecutor$256(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 52
    .local v1, "t":Ljava/lang/Thread;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 53
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "r":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static synthetic lambda$getTimer$257(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 67
    .local v1, "t":Ljava/lang/Thread;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 68
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "r":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/sun/javafx/runtime/async/BackgroundExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->instance:Ljava/util/concurrent/ExecutorService;

    .line 81
    :cond_0
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->timerInstance:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    monitor-exit v1

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

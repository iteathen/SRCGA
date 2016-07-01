.class Lcom/sun/glass/ui/monocle/RunnableProcessor;
.super Ljava/lang/Object;
.source "RunnableProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeRunLoops:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Lcom/sun/glass/ui/monocle/RunnableQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sun/glass/ui/monocle/RunnableProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/glass/ui/monocle/RunnableProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/RunnableQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/RunnableQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/RunnableProcessor;->activeRunLoops:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->lambda$invokeAndWait$85(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private static synthetic lambda$invokeAndWait$85(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v3, v0

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v3, v2

    throw v3
.end method

.method static runLater(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v1

    move-object v2, v0

    .line 151
    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method private runLoop()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    new-instance v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;-><init>(Lcom/sun/glass/ui/monocle/RunnableProcessor$1;)V

    move-object v1, v3

    .line 87
    .local v1, "control":Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor;->activeRunLoops:Ljava/util/LinkedList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 89
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->active:Z

    .line 90
    :goto_0
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->active:Z

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/RunnableQueue;->getNextRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    .local v2, "e":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    .line 95
    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->release:Ljava/lang/Object;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    return-object v0
.end method


# virtual methods
.method enterNestedEventLoop()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLoop()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 110
    .local v1, "ret":Ljava/lang/Object;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    return-object v0
.end method

.method invokeAndWait(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v2, v4

    .line 71
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/glass/ui/monocle/RunnableProcessor$$Lambda$1;->lambdaFactory$(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/RunnableQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 79
    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method invokeLater(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/RunnableQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method leaveNestedEventLoop(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v1, p1

    .local v1, "retValue":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;

    move-object v2, v3

    .line 119
    .local v2, "current":Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;
    sget-boolean v3, Lcom/sun/glass/ui/monocle/RunnableProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 122
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->active:Z

    .line 125
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->release:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLoop()Ljava/lang/Object;

    move-result-object v1

    .line 52
    return-void
.end method

.method shutdown()V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 134
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/RunnableQueue;->clear()V

    .line 135
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;

    move-object v2, v4

    .line 137
    .local v2, "control":Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;->active:Z

    .line 138
    goto :goto_0

    .line 139
    .end local v2    # "control":Lcom/sun/glass/ui/monocle/RunnableProcessor$RunLoopControl;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableProcessor;->queue:Lcom/sun/glass/ui/monocle/RunnableQueue;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 140
    move-object v4, v1

    monitor-exit v4

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

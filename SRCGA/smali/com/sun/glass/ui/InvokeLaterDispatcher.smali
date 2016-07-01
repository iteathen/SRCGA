.class public final Lcom/sun/glass/ui/InvokeLaterDispatcher;
.super Ljava/lang/Thread;
.source "InvokeLaterDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;,
        Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;
    }
.end annotation


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final deque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

.field private volatile leavingNestedEventLoop:Z

.field private nestedEventLoopEntered:Z


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v1, p1

    .local v1, "invokeLaterSubmitter":Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 46
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    .line 49
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "InvokeLaterLock"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->setDaemon(Z)V

    .line 73
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/InvokeLaterDispatcher;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    return-object v0
.end method


# virtual methods
.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V

    move-object v2, v6

    .line 143
    .local v2, "future":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 144
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 146
    :goto_0
    move-object v6, v2

    :try_start_0
    invoke-virtual {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->isDone()Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .line 151
    :cond_0
    :goto_1
    move-object v6, v3

    :try_start_1
    monitor-exit v6

    .line 152
    return-void

    .line 149
    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public invokeLater(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v1, p1

    .local v1, "command":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public notifyEnteringNestedEventLoop()V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 172
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 173
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 174
    move-object v3, v1

    monitor-exit v3

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public notifyLeavingNestedEventLoop()V
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 182
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 183
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 184
    move-object v3, v1

    monitor-exit v3

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public notifyLeftNestedEventLoop()V
    .locals 6

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 192
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    .line 193
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 194
    move-object v3, v1

    monitor-exit v3

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public run()V
    .locals 11

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher;
    :goto_0
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    move-object v1, v6

    .line 110
    .local v1, "r":Ljava/lang/Runnable;
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    if-eqz v6, :cond_1

    .line 113
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->deque:Ljava/util/concurrent/BlockingDeque;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 114
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v2, v7

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    move-object v6, v0

    :try_start_1
    iget-boolean v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->leavingNestedEventLoop:Z

    if-eqz v6, :cond_0

    .line 116
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 118
    :cond_0
    move-object v6, v2

    monitor-exit v6

    .line 135
    :goto_2
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v6

    move-object v3, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v3

    :try_start_2
    throw v6

    .line 136
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 139
    return-void

    .line 121
    .restart local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    new-instance v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V

    move-object v2, v6

    .line 122
    .local v2, "future":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLaterSubmitter:Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 123
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_3
    move-object v6, v2

    :try_start_3
    invoke-virtual {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->isDone()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    if-nez v6, :cond_2

    .line 126
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->LOCK:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 131
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    .line 132
    .line 133
    move-object v6, v3

    monitor-exit v6

    goto :goto_2

    .line 131
    :catchall_1
    move-exception v6

    move-object v4, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher;->nestedEventLoopEntered:Z

    move-object v6, v4

    throw v6

    .line 133
    :catchall_2
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v5

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

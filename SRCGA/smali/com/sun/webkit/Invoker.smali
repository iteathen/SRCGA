.class public abstract Lcom/sun/webkit/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# static fields
.field private static instance:Lcom/sun/webkit/Invoker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Invoker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInvoker()Lcom/sun/webkit/Invoker;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/sun/webkit/Invoker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sun/webkit/Invoker;->instance:Lcom/sun/webkit/Invoker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setInvoker(Lcom/sun/webkit/Invoker;)V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "invoker":Lcom/sun/webkit/Invoker;
    const-class v2, Lcom/sun/webkit/Invoker;

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    sput-object v1, Lcom/sun/webkit/Invoker;->instance:Lcom/sun/webkit/Invoker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v2

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "invoker":Lcom/sun/webkit/Invoker;
    throw v0
.end method


# virtual methods
.method protected checkEventThread()V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Invoker;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/webkit/Invoker;->isEventThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current thread is not event thread, current thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    return-void
.end method

.method public abstract invokeOnEventThread(Ljava/lang/Runnable;)V
.end method

.method protected abstract isEventThread()Z
.end method

.method protected lock(Ljava/util/concurrent/locks/ReentrantLock;)Z
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Invoker;
    move-object v1, p1

    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 52
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 54
    const/4 v2, 0x1

    move v0, v2

    .line 56
    .end local v0    # "this":Lcom/sun/webkit/Invoker;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/Invoker;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public abstract postOnEventThread(Ljava/lang/Runnable;)V
.end method

.method protected unlock(Ljava/util/concurrent/locks/ReentrantLock;)Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Invoker;
    move-object v1, p1

    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    const/4 v2, 0x1

    move v0, v2

    .line 71
    .end local v0    # "this":Lcom/sun/webkit/Invoker;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/Invoker;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

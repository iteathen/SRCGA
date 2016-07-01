.class final Lcom/sun/webkit/SeparateThreadTimer;
.super Lcom/sun/webkit/Timer;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fireRunner:Lcom/sun/webkit/SeparateThreadTimer$FireRunner;

.field private final invoker:Lcom/sun/webkit/Invoker;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/sun/webkit/SeparateThreadTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/webkit/SeparateThreadTimer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/webkit/Timer;-><init>()V

    .line 120
    move-object v1, v0

    invoke-static {}, Lcom/sun/webkit/Invoker;->getInvoker()Lcom/sun/webkit/Invoker;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/webkit/SeparateThreadTimer;->invoker:Lcom/sun/webkit/Invoker;

    .line 121
    move-object v1, v0

    new-instance v2, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;-><init>(Lcom/sun/webkit/SeparateThreadTimer;Lcom/sun/webkit/SeparateThreadTimer$1;)V

    iput-object v2, v1, Lcom/sun/webkit/SeparateThreadTimer;->fireRunner:Lcom/sun/webkit/SeparateThreadTimer$FireRunner;

    .line 122
    move-object v1, v0

    new-instance v2, Ljava/lang/Thread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "WebPane-Timer"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/webkit/SeparateThreadTimer;->thread:Ljava/lang/Thread;

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/SeparateThreadTimer;->thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public notifyTick()V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer;
    sget-boolean v1, Lcom/sun/webkit/SeparateThreadTimer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 173
    :cond_0
    return-void
.end method

.method public declared-synchronized run()V
    .locals 10

    .prologue
    .line 153
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/SeparateThreadTimer;
    move-object v9, p0

    monitor-enter v9

    :goto_0
    move-object v4, v1

    :try_start_0
    iget-wide v4, v4, Lcom/sun/webkit/SeparateThreadTimer;->fireTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 155
    .local v2, "curTime":J
    :goto_1
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/webkit/SeparateThreadTimer;->fireTime:J

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 156
    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/webkit/SeparateThreadTimer;->fireTime:J

    move-wide v7, v2

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    .line 159
    :cond_0
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/webkit/SeparateThreadTimer;->fireTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 160
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/webkit/SeparateThreadTimer;->invoker:Lcom/sun/webkit/Invoker;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/webkit/SeparateThreadTimer;->fireRunner:Lcom/sun/webkit/SeparateThreadTimer$FireRunner;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/webkit/SeparateThreadTimer;->fireTime:J

    invoke-static {v5, v6, v7}, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->access$100(Lcom/sun/webkit/SeparateThreadTimer$FireRunner;J)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/webkit/Invoker;->invokeOnEventThread(Ljava/lang/Runnable;)V

    .line 163
    .end local v2    # "curTime":J
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 168
    .local v2, "e":Ljava/lang/InterruptedException;
    monitor-exit v9

    return-void

    .line 153
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v9

    .end local v1    # "this":Lcom/sun/webkit/SeparateThreadTimer;
    throw v1
.end method

.method declared-synchronized setFireTime(J)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer;
    move-wide v1, p1

    .local v1, "time":J
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-wide v4, v1

    :try_start_0
    invoke-super {v3, v4, v5}, Lcom/sun/webkit/Timer;->setFireTime(J)V

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/webkit/SeparateThreadTimer;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_0

    .line 144
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/webkit/SeparateThreadTimer;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 146
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v6

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/webkit/SeparateThreadTimer;
    throw v0
.end method

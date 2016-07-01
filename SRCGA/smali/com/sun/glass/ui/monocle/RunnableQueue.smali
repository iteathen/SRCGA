.class Lcom/sun/glass/ui/monocle/RunnableQueue;
.super Ljava/lang/Object;
.source "RunnableQueue.java"


# instance fields
.field private count:I

.field private queue:[Ljava/lang/Runnable;

.field private start:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/Runnable;

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    return-void
.end method

.method private modulo(I)I
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 38
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v3, v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 40
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    return v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v3

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    throw v0
.end method

.method declared-synchronized getNextRunnable()Ljava/lang/Runnable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    move-object v6, p0

    monitor-enter v6

    :goto_0
    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    if-nez v2, :cond_0

    .line 58
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 61
    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 62
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/RunnableQueue;->modulo(I)I

    move-result v3

    iput v3, v2, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    .line 63
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    monitor-exit v6

    return-object v0

    .line 57
    .end local v1    # "r":Ljava/lang/Runnable;
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    throw v0
.end method

.method declared-synchronized postRunnable(Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v9, p0

    monitor-enter v9

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 45
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v3, v3

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/Runnable;

    move-object v2, v3

    .line 46
    .local v2, "newQueue":[Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    .line 51
    .end local v2    # "newQueue":[Ljava/lang/Runnable;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->queue:[Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/RunnableQueue;->start:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/RunnableQueue;->modulo(I)I

    move-result v4

    move-object v5, v1

    aput-object v5, v3, v4

    .line 52
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget v4, v4, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/RunnableQueue;->count:I

    .line 53
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v9

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/RunnableQueue;
    throw v0
.end method

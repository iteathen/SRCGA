.class final Lcom/sun/webkit/Disposer$DisposerRunnable;
.super Ljava/lang/Object;
.source "Disposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/webkit/Disposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisposerRunnable"
.end annotation


# static fields
.field private static final theInstance:Lcom/sun/webkit/Disposer$DisposerRunnable;


# instance fields
.field private final disposerLock:Ljava/lang/Object;

.field private final disposerQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sun/webkit/Disposer$WeakDisposerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/sun/webkit/Disposer$DisposerRunnable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/webkit/Disposer$DisposerRunnable;-><init>()V

    sput-object v0, Lcom/sun/webkit/Disposer$DisposerRunnable;->theInstance:Lcom/sun/webkit/Disposer$DisposerRunnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$DisposerRunnable;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/webkit/Disposer$DisposerRunnable;->isRunning:Z

    .line 103
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerLock:Ljava/lang/Object;

    .line 104
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic access$100()Lcom/sun/webkit/Disposer$DisposerRunnable;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/sun/webkit/Disposer$DisposerRunnable;->getInstance()Lcom/sun/webkit/Disposer$DisposerRunnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/webkit/Disposer$DisposerRunnable;Lcom/sun/webkit/Disposer$WeakDisposerRecord;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Lcom/sun/webkit/Disposer$DisposerRunnable;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/webkit/Disposer$DisposerRunnable;->enqueue(Lcom/sun/webkit/Disposer$WeakDisposerRecord;)V

    return-void
.end method

.method private enqueue(Lcom/sun/webkit/Disposer$WeakDisposerRecord;)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$DisposerRunnable;
    move-object v1, p1

    .local v1, "obj":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sun/webkit/Disposer$WeakDisposerRecord;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/webkit/Disposer$DisposerRunnable;->enqueueAll(Ljava/util/Collection;)V

    .line 119
    return-void
.end method

.method private enqueueAll(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sun/webkit/Disposer$WeakDisposerRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$DisposerRunnable;
    move-object v1, p1

    .local v1, "objs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/webkit/Disposer$WeakDisposerRecord;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 109
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 110
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->isRunning:Z

    if-nez v4, :cond_0

    .line 111
    invoke-static {}, Lcom/sun/webkit/Invoker;->getInvoker()Lcom/sun/webkit/Invoker;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/webkit/Invoker;->invokeOnEventThread(Ljava/lang/Runnable;)V

    .line 112
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->isRunning:Z

    .line 114
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private static getInstance()Lcom/sun/webkit/Disposer$DisposerRunnable;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/sun/webkit/Disposer$DisposerRunnable;->theInstance:Lcom/sun/webkit/Disposer$DisposerRunnable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$DisposerRunnable;
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 125
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->disposerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/webkit/Disposer$WeakDisposerRecord;

    move-object v1, v4

    .line 126
    .local v1, "obj":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 127
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/webkit/Disposer$DisposerRunnable;->isRunning:Z

    .line 128
    move-object v4, v2

    monitor-exit v4

    .line 137
    return-void

    .line 130
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    # getter for: Lcom/sun/webkit/Disposer;->records:Ljava/util/Set;
    invoke-static {}, Lcom/sun/webkit/Disposer;->access$300()Ljava/util/Set;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    # getter for: Lcom/sun/webkit/Disposer;->records:Ljava/util/Set;
    invoke-static {}, Lcom/sun/webkit/Disposer;->access$300()Ljava/util/Set;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 134
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/webkit/Disposer$WeakDisposerRecord;->dispose()V

    .line 136
    :cond_1
    goto :goto_0

    .line 130
    .end local v1    # "obj":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

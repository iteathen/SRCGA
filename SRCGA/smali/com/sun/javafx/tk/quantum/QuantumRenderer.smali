.class final Lcom/sun/javafx/tk/quantum/QuantumRenderer;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "QuantumRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;,
        Lcom/sun/javafx/tk/quantum/QuantumRenderer$PipelineRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final instanceReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sun/javafx/tk/quantum/QuantumRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private static usePurgatory:Z


# instance fields
.field private _initThrowable:Ljava/lang/Throwable;

.field private _renderer:Ljava/lang/Thread;

.field private initLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-class v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->$assertionsDisabled:Z

    .line 58
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$$Lambda$5;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->usePurgatory:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->instanceReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_initThrowable:Ljava/lang/Throwable;

    .line 67
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 71
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;-><init>(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Lcom/sun/javafx/tk/quantum/QuantumRenderer$1;)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->setInitThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_renderer:Ljava/lang/Thread;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method static synthetic access$302(Lcom/sun/javafx/tk/quantum/QuantumRenderer;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Thread;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_renderer:Ljava/lang/Thread;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->lambda$createResourceFactory$397(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V

    return-void
.end method

.method static synthetic access$lambda$1()V
    .locals 0

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->lambda$createResourceFactory$398()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/prism/GraphicsResource;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->lambda$disposePresentable$399(Lcom/sun/prism/GraphicsResource;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->lambda$stopRenderer$400()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$4()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->lambda$static$394()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    .locals 9

    .prologue
    .line 258
    const-class v7, Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    monitor-enter v7

    :try_start_0
    sget-object v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->instanceReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 259
    const-class v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v0, v5

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    const/4 v4, 0x0

    move-object v1, v4

    .line 262
    .local v1, "newTk":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    :try_start_1
    new-instance v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;-><init>()V

    move-object v1, v4

    .line 263
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->prestartCoreThread()Z

    move-result v4

    .line 265
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    :cond_0
    :goto_0
    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v1

    :try_start_2
    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->initThrowable()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 275
    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->noFallback:Z

    if-eqz v4, :cond_2

    .line 276
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Cannot initialize a graphics pipeline, and Prism fallback is disabled"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Could not initialize prism toolkit, and the fallback is disabled."

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    .line 266
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 267
    .local v2, "t":Ljava/lang/Throwable;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 268
    move-object v4, v1

    move-object v5, v2

    :try_start_4
    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->setInitThrowable(Ljava/lang/Throwable;)V

    .line 270
    :cond_1
    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v4, :cond_0

    .line 271
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->initThrowable()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 283
    :cond_3
    sget-object v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->instanceReference:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 284
    move-object v4, v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    :cond_4
    :try_start_5
    sget-object v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->instanceReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v4

    monitor-exit v7

    return-object v0
.end method

.method private static synthetic lambda$createResourceFactory$397(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "createLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, p1

    .local v1, "job":Lcom/sun/javafx/tk/RenderJob;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$createResourceFactory$398()V
    .locals 4

    .prologue
    .line 161
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v1

    move-object v0, v1

    .line 162
    .local v0, "factory":Lcom/sun/prism/ResourceFactory;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 163
    :cond_0
    return-void
.end method

.method private static synthetic lambda$disposePresentable$399(Lcom/sun/prism/GraphicsResource;)V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "resource":Lcom/sun/prism/GraphicsResource;
    move-object v1, v0

    invoke-interface {v1}, Lcom/sun/prism/GraphicsResource;->dispose()V

    return-void
.end method

.method private static synthetic lambda$static$394()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    const-string v0, "decora.purgatory"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$stopRenderer$400()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->shutdown()V

    .line 197
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method private setInitThrowable(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_initThrowable:Ljava/lang/Throwable;

    .line 80
    return-void
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 231
    sget-boolean v5, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->usePurgatory:Z

    if-eqz v5, :cond_0

    .line 232
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v5

    move-object v3, v5

    .line 233
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v5

    move-object v4, v5

    .line 234
    .local v4, "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/Renderer;->releasePurgatory()V

    .line 236
    .end local v3    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v4    # "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    :cond_0
    return-void
.end method

.method checkRendererIdle()V
    .locals 11

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    sget-boolean v7, Lcom/sun/prism/impl/PrismSettings;->threadCheck:Z

    if-eqz v7, :cond_2

    .line 240
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v7

    move-object v1, v7

    .line 241
    .local v1, "collector":Lcom/sun/javafx/tk/quantum/PaintCollector;
    sget-object v7, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 244
    .local v2, "busy":Z
    move v7, v2

    if-eqz v7, :cond_2

    .line 245
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: PrismPen / FX threads co-running: DIRTY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 246
    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 248
    .local v6, "s":Ljava/lang/StackTraceElement;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "busy":Z
    .end local v6    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 250
    .restart local v2    # "busy":Z
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_renderer:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 251
    .local v6, "q":Ljava/lang/StackTraceElement;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 255
    .end local v1    # "collector":Lcom/sun/javafx/tk/quantum/PaintCollector;
    .end local v2    # "busy":Z
    .end local v6    # "q":Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method protected createResourceFactory()V
    .locals 11

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v6

    .line 158
    .local v1, "createLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$$Lambda$1;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v6

    move-object v2, v6

    .line 160
    .local v2, "createDone":Lcom/sun/javafx/tk/CompletionListener;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$$Lambda$2;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v6

    move-object v3, v6

    .line 165
    .local v3, "factoryCreator":Ljava/lang/Runnable;
    new-instance v6, Lcom/sun/javafx/tk/RenderJob;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;Lcom/sun/javafx/tk/CompletionListener;)V

    move-object v4, v6

    .line 167
    .local v4, "job":Lcom/sun/javafx/tk/RenderJob;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 170
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 172
    .local v5, "th":Ljava/lang/Throwable;
    move-object v6, v5

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected disposePresentable(Lcom/sun/prism/Presentable;)V
    .locals 10

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "presentable":Lcom/sun/prism/Presentable;
    sget-boolean v5, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_renderer:Ljava/lang/Thread;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 183
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lcom/sun/prism/GraphicsResource;

    if-eqz v5, :cond_1

    .line 184
    move-object v5, v1

    check-cast v5, Lcom/sun/prism/GraphicsResource;

    move-object v2, v5

    .line 186
    .local v2, "resource":Lcom/sun/prism/GraphicsResource;
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$$Lambda$3;->lambdaFactory$(Lcom/sun/prism/GraphicsResource;)Ljava/lang/Runnable;

    move-result-object v5

    move-object v3, v5

    .line 188
    .local v3, "presentableDisposer":Ljava/lang/Runnable;
    new-instance v5, Lcom/sun/javafx/tk/RenderJob;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;Lcom/sun/javafx/tk/CompletionListener;)V

    move-object v4, v5

    .line 190
    .local v4, "job":Lcom/sun/javafx/tk/RenderJob;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 192
    .end local v2    # "resource":Lcom/sun/prism/GraphicsResource;
    .end local v3    # "presentableDisposer":Ljava/lang/Runnable;
    .end local v4    # "job":Lcom/sun/javafx/tk/RenderJob;
    :cond_1
    return-void
.end method

.method protected initThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->_initThrowable:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/RenderJob;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

.method protected stopRenderer()V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumRenderer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "QuantumRenderer: shutdown"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_0
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 210
    :cond_1
    sget-object v1, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->instanceReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method protected submitRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/tk/RenderJob;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumRenderer;
    return-object v0
.end method

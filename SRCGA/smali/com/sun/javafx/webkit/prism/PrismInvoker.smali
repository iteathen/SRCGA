.class public final Lcom/sun/javafx/webkit/prism/PrismInvoker;
.super Lcom/sun/webkit/Invoker;
.source "PrismInvoker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/webkit/Invoker;-><init>()V

    .line 39
    return-void
.end method

.method static invokeOnRenderThread(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    new-instance v2, Lcom/sun/javafx/tk/RenderJob;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 79
    return-void
.end method

.method private static isEventThreadPrivate()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v0

    return v0
.end method

.method static runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuantumRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v3, Ljava/util/concurrent/FutureTask;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object v1, v3

    .line 86
    .local v1, "f":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/tk/RenderJob;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 89
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 94
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 91
    .local v2, "ex":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 92
    .end local v2    # "ex":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected checkEventThread()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 63
    return-void
.end method

.method public invokeOnEventThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/webkit/prism/PrismInvoker;->isEventThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected isEventThread()Z
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    invoke-static {}, Lcom/sun/javafx/webkit/prism/PrismInvoker;->isEventThreadPrivate()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    return v0
.end method

.method protected lock(Ljava/util/concurrent/locks/ReentrantLock;)Z
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    move-object v1, p1

    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    return v0
.end method

.method public postOnEventThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method protected unlock(Ljava/util/concurrent/locks/ReentrantLock;)Z
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    move-object v1, p1

    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/webkit/prism/PrismInvoker;
    return v0
.end method

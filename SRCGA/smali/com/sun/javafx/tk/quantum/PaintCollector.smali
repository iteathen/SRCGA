.class final Lcom/sun/javafx/tk/quantum/PaintCollector;
.super Ljava/lang/Object;
.source "PaintCollector.java"

# interfaces
.implements Lcom/sun/javafx/tk/CompletionListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DIRTY_SCENE_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sun/javafx/tk/quantum/GlassScene;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile collector:Lcom/sun/javafx/tk/quantum/PaintCollector;


# instance fields
.field private volatile allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final dirtyScenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/quantum/GlassScene;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasDirty:Z

.field private volatile needsHint:Z

.field private final toolkit:Lcom/sun/javafx/tk/quantum/QuantumToolkit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sun/javafx/tk/quantum/PaintCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    .line 82
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PaintCollector;->DIRTY_SCENE_SORTER:Ljava/util/Comparator;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, p1

    .local v1, "qt":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 95
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    .line 107
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 146
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->toolkit:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    .line 147
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/quantum/ViewPainter;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/PaintCollector;->lambda$liveRepaintRenderJob$369(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/quantum/ViewPainter;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;->lambda$null$368(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;->lambda$static$367(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static createInstance(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Lcom/sun/javafx/tk/quantum/PaintCollector;
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "toolkit":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    new-instance v1, Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;-><init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-object v0, v1

    .end local v0    # "toolkit":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method static getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/sun/javafx/tk/quantum/PaintCollector;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    return-object v0
.end method

.method private static synthetic lambda$liveRepaintRenderJob$369(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/quantum/ViewPainter;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "quantum":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "viewPainter":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v2, p2

    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/tk/RenderJob;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$2;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;Lcom/sun/javafx/tk/CompletionListener;)V

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 325
    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .line 329
    :goto_0
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "quantum":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 326
    .restart local v0    # "quantum":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method private static synthetic lambda$null$368(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, p1

    .local v1, "rj":Lcom/sun/javafx/tk/RenderJob;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$static$367(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)I
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "o1":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "o2":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->isSynchronous()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 84
    .local v2, "i1":I
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->isSynchronous()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 85
    .local v3, "i2":I
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    move v0, v4

    .end local v0    # "o1":Lcom/sun/javafx/tk/quantum/GlassScene;
    return v0

    .line 83
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .restart local v0    # "o1":Lcom/sun/javafx/tk/quantum/GlassScene;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 84
    .restart local v2    # "i1":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method final addDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 7

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 197
    :cond_0
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 199
    :cond_1
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_2

    .line 200
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC.addDirtyScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 212
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty:Z

    .line 214
    :cond_3
    return-void
.end method

.method public done(Lcom/sun/javafx/tk/RenderJob;)V
    .locals 9

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, p1

    .local v1, "job":Lcom/sun/javafx/tk/RenderJob;
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 268
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    if-nez v4, :cond_1

    .line 269
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "PaintCollector: invalid RenderJob"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_1
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    move-object v2, v4

    .line 273
    .local v2, "paintjob":Lcom/sun/javafx/tk/quantum/PaintRenderJob;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/PaintRenderJob;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v4

    move-object v3, v4

    .line 275
    .local v3, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 276
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "PaintCollector: null scene"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->frameRendered()V

    .line 293
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 296
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->toolkit:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->hasNativeSystemVsync()Z

    move-result v4

    if-nez v4, :cond_3

    .line 297
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->toolkit:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->vsyncHint()V

    .line 300
    :cond_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->notifyRenderingFinished()V

    .line 304
    sget-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v4, :cond_4

    .line 305
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->renderEnd()V

    .line 311
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 312
    return-void
.end method

.method final getRendered()Lcom/sun/javafx/tk/CompletionListener;
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    return-object v0
.end method

.method final hasDirty()Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    return v0
.end method

.method final liveRepaintRenderJob(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 9

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/ViewScene;->getPainter()Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-result-object v5

    move-object v2, v5

    .line 319
    .local v2, "viewPainter":Lcom/sun/javafx/tk/quantum/ViewPainter;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    move-object v3, v5

    .line 320
    .local v3, "quantum":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulse(Z)V

    .line 321
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v5

    .line 322
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v5, v3

    move-object v6, v2

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/quantum/ViewPainter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/function/Supplier;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    .line 331
    return-void
.end method

.method final removeDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 234
    :cond_0
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 237
    :cond_1
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_2

    .line 238
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC.removeDirtyScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 244
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty:Z

    .line 245
    return-void

    .line 244
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final renderAll()V
    .locals 13

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    sget-boolean v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v9

    if-eq v8, v9, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 342
    :cond_0
    sget-boolean v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseDebug:Z

    if-eqz v8, :cond_1

    .line 343
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PC.renderAll("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty:Z

    if-nez v8, :cond_2

    .line 350
    .line 447
    :goto_0
    return-void

    .line 356
    :cond_2
    sget-boolean v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 361
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    sget-object v9, Lcom/sun/javafx/tk/quantum/PaintCollector;->DIRTY_SCENE_SORTER:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty:Z

    .line 365
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    .line 369
    sget-boolean v8, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v8, :cond_4

    .line 370
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->renderStart()V

    .line 378
    :cond_4
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/glass/ui/Application;->hasWindowManager()Z

    move-result v8

    if-nez v8, :cond_b

    .line 384
    invoke-static {}, Lcom/sun/glass/ui/Window;->getWindows()Ljava/util/List;

    move-result-object v8

    move-object v1, v8

    .line 385
    .local v1, "glassWindowList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    move-object v8, v0

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 386
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i":I
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .local v3, "n":I
    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_9

    .line 387
    move-object v8, v1

    move v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/Window;

    move-object v4, v8

    .line 388
    .local v4, "w":Lcom/sun/glass/ui/Window;
    move-object v8, v4

    invoke-static {v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->findWindowStage(Lcom/sun/glass/ui/Window;)Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v8

    move-object v5, v8

    .line 389
    .local v5, "ws":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v8, v5

    if-eqz v8, :cond_7

    .line 390
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v8

    move-object v6, v8

    .line 394
    .local v6, "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 395
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    if-nez v8, :cond_5

    .line 396
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->isSynchronous()Z

    move-result v9

    iput-boolean v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    .line 399
    :cond_5
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->useEGL()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_8

    .line 402
    :cond_6
    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->setDoPresent(Z)V

    .line 407
    :goto_2
    move-object v8, v6

    :try_start_0
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/ViewScene;->repaint()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .line 386
    .end local v6    # "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .restart local v6    # "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_8
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->setDoPresent(Z)V

    goto :goto_2

    .line 408
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 409
    .local v7, "t":Ljava/lang/Throwable;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 413
    .line 442
    .end local v1    # "glassWindowList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "w":Lcom/sun/glass/ui/Window;
    .end local v5    # "ws":Lcom/sun/javafx/tk/quantum/WindowStage;
    .end local v6    # "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 444
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->toolkit:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->shouldWaitForRenderingToComplete()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 445
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/PaintCollector;->waitForRenderingToComplete()V

    .line 447
    :cond_a
    goto/16 :goto_0

    .line 423
    :cond_b
    move-object v8, v0

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 425
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->dirtyScenes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v8

    :goto_4
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v2, v8

    .line 427
    .local v2, "gs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    if-nez v8, :cond_c

    .line 428
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/GlassScene;->isSynchronous()Z

    move-result v9

    iput-boolean v9, v8, Lcom/sun/javafx/tk/quantum/PaintCollector;->needsHint:Z

    .line 433
    :cond_c
    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sun/javafx/tk/quantum/GlassScene;->setDoPresent(Z)V

    .line 435
    move-object v8, v2

    :try_start_1
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->repaint()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .line 439
    :goto_5
    goto :goto_4

    .line 436
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 437
    .local v3, "t":Ljava/lang/Throwable;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method waitForRenderingToComplete()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PaintCollector;
    :goto_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PaintCollector;->allWorkCompletedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 159
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 167
    goto :goto_0
.end method

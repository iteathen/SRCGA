.class final Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
.super Ljava/lang/Object;
.source "EmbeddedSceneDnD.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

.field private dragStartListener:Lcom/sun/javafx/embed/HostDragStartListener;

.field private fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

.field private fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

.field private hostThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;)V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->startDrag()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->lambda$executeOnFXThread$284(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;)Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->lambda$createDropTarget$285()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$createDropTarget$285()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 158
    :cond_0
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    return-object v0
.end method

.method private static synthetic lambda$executeOnFXThread$284(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "result":Ljava/util/concurrent/atomic/AtomicReference;
    move-object v1, p1

    .local v1, "r":Ljava/util/concurrent/Callable;
    move-object v2, p2

    .local v2, "l":Ljava/util/concurrent/CountDownLatch;
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    .line 119
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 117
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v5, v4

    throw v5
.end method

.method private setHostThread()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->hostThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 66
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->hostThread:Ljava/lang/Thread;

    .line 68
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 59
    :cond_0
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 61
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->dragStartListener:Lcom/sun/javafx/embed/HostDragStartListener;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    invoke-interface {v1, v2, v3}, Lcom/sun/javafx/embed/HostDragStartListener;->dragStarted(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;Ljavafx/scene/input/TransferMode;)V

    .line 62
    return-void
.end method


# virtual methods
.method public createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;
    .locals 10

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move v1, p1

    .local v1, "isDragSource":Z
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 134
    :cond_0
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 136
    :cond_1
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move v3, v1

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 137
    :cond_2
    new-instance v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string v6, "DND-Embedded"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$1;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Ljava/lang/String;)V

    move-object v2, v3

    .line 145
    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Lcom/sun/glass/ui/ClipboardAssistance;Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    .line 146
    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getDragboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;Z)Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    return-object v0
.end method

.method public createDropTarget()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->setHostThread()V

    .line 156
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    return-object v0
.end method

.method executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, p1

    .local v1, "r":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    move-object v5, v1

    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 127
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 105
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 108
    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v2, v5

    .line 109
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v3, v5

    .line 111
    .local v3, "l":Ljava/util/concurrent/CountDownLatch;
    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 122
    move-object v5, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .line 127
    :goto_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 123
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_1
.end method

.method public isHostThread()Z
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->hostThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDragSourceReleased(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, p1

    .local v1, "ds":Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 77
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    .line 78
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/tk/Toolkit;->exitNestedEventLoop(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onDropTargetReleased(Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;)V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, p1

    .local v1, "dt":Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 84
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->fxDropTarget:Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    .line 85
    return-void
.end method

.method public setDragStartListener(Lcom/sun/javafx/embed/HostDragStartListener;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v1, p1

    .local v1, "l":Lcom/sun/javafx/embed/HostDragStartListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->setHostThread()V

    .line 151
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->dragStartListener:Lcom/sun/javafx/embed/HostDragStartListener;

    .line 152
    return-void
.end method

.class final Lcom/sun/javafx/tk/quantum/PresentingPainter;
.super Lcom/sun/javafx/tk/quantum/ViewPainter;
.source "PresentingPainter.java"


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PresentingPainter;
    move-object v1, p1

    .local v1, "view":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewPainter;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PresentingPainter;
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 47
    const/4 v9, 0x0

    move v1, v9

    .line 48
    .local v1, "locked":Z
    const/4 v9, 0x0

    move v2, v9

    .line 49
    .local v2, "valid":Z
    const/4 v9, 0x0

    move v3, v9

    .line 52
    .local v3, "errored":Z
    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->validateStageGraphics()Z

    move-result v9

    move v2, v9

    .line 53
    move v9, v2

    if-nez v9, :cond_3

    .line 54
    sget-boolean v9, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v9, :cond_0

    .line 55
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "PresentingPainter: validateStageGraphics failed"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->paintImpl(Lcom/sun/prism/Graphics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_1

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v4, v9

    .line 123
    .local v4, "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_2

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_2
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    .line 131
    .end local v4    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    :goto_0
    return-void

    .line 65
    :cond_3
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->lock()V

    .line 66
    const/4 v9, 0x1

    move v1, v9

    .line 68
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-nez v9, :cond_4

    .line 69
    move-object v9, v0

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    .line 71
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->isDeviceReady()Z

    move-result v9

    if-nez v9, :cond_8

    .line 72
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_6

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v4, v9

    .line 123
    .restart local v4    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_7

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_7
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    goto :goto_0

    .line 76
    .end local v4    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_8
    move-object v9, v0

    :try_start_2
    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    if-eqz v9, :cond_9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-interface {v9, v10}, Lcom/sun/prism/Presentable;->lockResources(Lcom/sun/prism/PresentableState;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 77
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->disposePresentable()V

    .line 79
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    if-nez v9, :cond_a

    .line 80
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-interface {v10, v11}, Lcom/sun/prism/ResourceFactory;->createPresentable(Lcom/sun/prism/PresentableState;)Lcom/sun/prism/Presentable;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    .line 81
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/PresentingPainter;->viewWidth:I

    iput v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->penWidth:I

    .line 82
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/PresentingPainter;->viewHeight:I

    iput v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->penHeight:I

    .line 83
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->freshBackBuffer:Z

    .line 86
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    if-eqz v9, :cond_10

    .line 87
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    invoke-interface {v9}, Lcom/sun/prism/Presentable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v9

    move-object v4, v9

    .line 89
    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v5, v9

    .line 90
    .local v5, "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v4

    if-eqz v9, :cond_b

    .line 91
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->paintImpl(Lcom/sun/prism/Graphics;)V

    .line 92
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->freshBackBuffer:Z

    .line 95
    :cond_b
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_c

    .line 96
    const-string v9, "Presenting"

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 98
    :cond_c
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/sun/prism/Presentable;->prepare(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 99
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->disposePresentable()V

    .line 100
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_d

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_d
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v6, v9

    .line 123
    .local v6, "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_e

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_e
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    goto/16 :goto_0

    .line 105
    .end local v6    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_f
    move-object v9, v5

    :try_start_3
    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/ViewScene;->getDoPresent()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 106
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->presentable:Lcom/sun/prism/Presentable;

    invoke-interface {v9}, Lcom/sun/prism/Presentable;->present()Z

    move-result v9

    if-nez v9, :cond_10

    .line 107
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PresentingPainter;->disposePresentable()V

    .line 108
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .end local v4    # "g":Lcom/sun/prism/Graphics;
    .end local v5    # "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_10
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_11

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v4, v9

    .line 123
    .local v4, "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_12

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_12
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    .line 131
    :goto_1
    goto/16 :goto_0

    .line 112
    .end local v4    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 113
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v9, 0x1

    move v3, v9

    .line 114
    move-object v9, v4

    :try_start_4
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_13

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_13
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v4, v9

    .line 123
    .local v4, "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_14

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_14
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    goto :goto_1

    .line 116
    .end local v4    # "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    :catchall_0
    move-exception v9

    move-object v7, v9

    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 118
    move v9, v1

    if-eqz v9, :cond_15

    .line 119
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->unlock()V

    .line 122
    :cond_15
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v8, v9

    .line 123
    .local v8, "viewScene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v9

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    if-eqz v9, :cond_16

    .line 126
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    invoke-interface {v9}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v9

    move v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 129
    :cond_16
    sget-object v9, Lcom/sun/javafx/tk/quantum/PresentingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    move-object v9, v7

    throw v9
.end method

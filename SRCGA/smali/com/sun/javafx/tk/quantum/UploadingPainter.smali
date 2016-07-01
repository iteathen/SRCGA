.class final Lcom/sun/javafx/tk/quantum/UploadingPainter;
.super Lcom/sun/javafx/tk/quantum/ViewPainter;
.source "UploadingPainter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private penScale:F

.field private pixelSource:Lcom/sun/prism/impl/QueuedPixelSource;

.field private resolveRTT:Lcom/sun/prism/RTTexture;

.field private rttexture:Lcom/sun/prism/RTTexture;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    move-object v1, p1

    .local v1, "view":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewPainter;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 48
    move-object v2, v0

    new-instance v3, Lcom/sun/prism/impl/QueuedPixelSource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/sun/prism/impl/QueuedPixelSource;-><init>(Z)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/UploadingPainter;->pixelSource:Lcom/sun/prism/impl/QueuedPixelSource;

    .line 53
    return-void
.end method

.method private resolveRenderTarget(Lcom/sun/prism/Graphics;II)Lcom/sun/prism/RTTexture;
    .locals 17

    .prologue
    .line 199
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    if-eqz v6, :cond_1

    .line 200
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->lock()V

    .line 201
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 202
    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 203
    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v6

    move v7, v3

    if-eq v6, v7, :cond_1

    .line 205
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 206
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 207
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 210
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    if-nez v6, :cond_2

    .line 211
    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v7

    move v8, v2

    move v9, v3

    sget-object v10, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 215
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v6

    move v4, v6

    .line 216
    .local v4, "srcw":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    invoke-interface {v6}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v6

    move v5, v6

    .line 217
    .local v5, "srch":I
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v2

    move/from16 v16, v3

    invoke-interface/range {v6 .. v16}, Lcom/sun/prism/Graphics;->blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 218
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    return-object v0
.end method


# virtual methods
.method disposeRTTexture()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 57
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    .line 60
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 62
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    .line 64
    :cond_1
    return-void
.end method

.method public getPixelScaleFactor()F
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->getRenderScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    return v0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 72
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/UploadingPainter;
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 74
    const/16 v17, 0x0

    move/from16 v3, v17

    .line 76
    .local v3, "errored":Z
    move-object/from16 v17, v2

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->validateStageGraphics()Z

    move-result v17

    if-nez v17, :cond_4

    .line 77
    sget-boolean v17, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v17, :cond_0

    .line 78
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v18, "UploadingPainter: validateStageGraphics failed"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_0
    move-object/from16 v17, v2

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->paintImpl(Lcom/sun/prism/Graphics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_2
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_3
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    .line 196
    :goto_0
    return-void

    .line 84
    :cond_4
    move-object/from16 v17, v2

    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 85
    move-object/from16 v17, v2

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    .line 87
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->isDeviceReady()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-nez v17, :cond_a

    .line 179
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_8
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_9
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    goto/16 :goto_0

    .line 91
    :cond_a
    move-object/from16 v17, v2

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->getPixelScaleFactor()F

    move-result v17

    move/from16 v4, v17

    .line 92
    .local v4, "scale":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getRenderWidth()I

    move-result v17

    move/from16 v5, v17

    .line 93
    .local v5, "bufWidth":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getRenderHeight()I

    move-result v17

    move/from16 v6, v17

    .line 99
    .local v6, "bufHeight":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penScale:F

    move/from16 v17, v0

    move/from16 v18, v4

    cmpl-float v17, v17, v18

    if-nez v17, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penWidth:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->viewWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penHeight:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->viewHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    .line 103
    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v17

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    .line 104
    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v17

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    :cond_b
    const/16 v17, 0x1

    :goto_1
    move/from16 v7, v17

    .line 106
    .local v7, "needsReset":Z
    move/from16 v17, v7

    if-nez v17, :cond_c

    .line 107
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->lock()V

    .line 108
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 109
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 110
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 111
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 115
    :cond_c
    move/from16 v17, v7

    if-eqz v17, :cond_12

    .line 116
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->disposeRTTexture()V

    .line 117
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v6

    sget-object v21, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v22, v0

    .line 118
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/tk/quantum/SceneState;->isMSAA()Z

    move-result v22

    .line 117
    invoke-interface/range {v18 .. v22}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    .line 119
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v17, :cond_11

    .line 179
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_e
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_f
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    goto/16 :goto_0

    .line 104
    .end local v7    # "needsReset":Z
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 122
    .restart local v7    # "needsReset":Z
    :cond_11
    move-object/from16 v17, v2

    move/from16 v18, v4

    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penScale:F

    .line 123
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->viewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penWidth:I

    .line 124
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->viewHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->penHeight:I

    .line 125
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->freshBackBuffer:Z

    .line 127
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v17

    move-object/from16 v8, v17

    .line 128
    .local v8, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v17, v8

    if-nez v17, :cond_16

    .line 129
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->disposeRTTexture()V

    .line 130
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_14
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_15
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 131
    goto/16 :goto_0

    .line 133
    :cond_16
    move-object/from16 v17, v8

    move/from16 v18, v4

    move/from16 v19, v4

    :try_start_4
    invoke-interface/range {v17 .. v19}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 134
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->paintImpl(Lcom/sun/prism/Graphics;)V

    .line 135
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/UploadingPainter;->freshBackBuffer:Z

    .line 137
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getOutputWidth()I

    move-result v17

    move/from16 v9, v17

    .line 138
    .local v9, "outWidth":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getOutputHeight()I

    move-result v17

    move/from16 v10, v17

    .line 139
    .local v10, "outHeight":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getOutputScale()F

    move-result v17

    move/from16 v11, v17

    .line 141
    .local v11, "outScale":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isMSAA()Z

    move-result v17

    if-nez v17, :cond_17

    move/from16 v17, v9

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    move/from16 v17, v10

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    .line 142
    :cond_17
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    invoke-direct/range {v17 .. v20}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRenderTarget(Lcom/sun/prism/Graphics;II)Lcom/sun/prism/RTTexture;

    move-result-object v17

    move-object/from16 v12, v17

    .line 147
    .local v12, "rtt":Lcom/sun/prism/RTTexture;
    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->pixelSource:Lcom/sun/prism/impl/QueuedPixelSource;

    move-object/from16 v17, v0

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v17 .. v20}, Lcom/sun/prism/impl/QueuedPixelSource;->getUnusedPixels(IIF)Lcom/sun/glass/ui/Pixels;

    move-result-object v17

    move-object/from16 v13, v17

    .line 148
    .local v13, "pix":Lcom/sun/glass/ui/Pixels;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v17

    check-cast v17, Ljava/nio/IntBuffer;

    move-object/from16 v14, v17

    .line 150
    .local v14, "bits":Ljava/nio/IntBuffer;
    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->getPixels()[I

    move-result-object v17

    move-object/from16 v15, v17

    .line 152
    .local v15, "rawbits":[I
    move-object/from16 v17, v15

    if-eqz v17, :cond_1f

    .line 153
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    const/16 v19, 0x0

    move/from16 v20, v9

    move/from16 v21, v10

    mul-int v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v17

    .line 163
    :cond_18
    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    .line 164
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 167
    :cond_19
    move-object/from16 v17, v13

    if-eqz v17, :cond_1a

    .line 171
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->pixelSource:Lcom/sun/prism/impl/QueuedPixelSource;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lcom/sun/prism/impl/QueuedPixelSource;->enqueuePixels(Lcom/sun/glass/ui/Pixels;)V

    .line 172
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->pixelSource:Lcom/sun/prism/impl/QueuedPixelSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/SceneState;->uploadPixels(Lcom/sun/prism/PixelSource;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :cond_1a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_1b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_1c
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_1d
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    .line 196
    .end local v4    # "scale":F
    .end local v5    # "bufWidth":I
    .end local v6    # "bufHeight":I
    .end local v7    # "needsReset":Z
    .end local v8    # "g":Lcom/sun/prism/Graphics;
    .end local v9    # "outWidth":I
    .end local v10    # "outHeight":I
    .end local v11    # "outScale":F
    .end local v12    # "rtt":Lcom/sun/prism/RTTexture;
    .end local v13    # "pix":Lcom/sun/glass/ui/Pixels;
    .end local v14    # "bits":Ljava/nio/IntBuffer;
    .end local v15    # "rawbits":[I
    :goto_4
    goto/16 :goto_0

    .line 144
    .restart local v4    # "scale":F
    .restart local v5    # "bufWidth":I
    .restart local v6    # "bufHeight":I
    .restart local v7    # "needsReset":Z
    .restart local v8    # "g":Lcom/sun/prism/Graphics;
    .restart local v9    # "outWidth":I
    .restart local v10    # "outHeight":I
    .restart local v11    # "outScale":F
    :cond_1e
    move-object/from16 v17, v2

    :try_start_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .restart local v12    # "rtt":Lcom/sun/prism/RTTexture;
    goto/16 :goto_2

    .line 155
    .restart local v13    # "pix":Lcom/sun/glass/ui/Pixels;
    .restart local v14    # "bits":Ljava/nio/IntBuffer;
    .restart local v15    # "rawbits":[I
    :cond_1f
    move-object/from16 v17, v12

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/RTTexture;->readPixels(Ljava/nio/Buffer;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 157
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 158
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->disposeRTTexture()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    const/16 v17, 0x0

    move-object/from16 v13, v17

    goto/16 :goto_3

    .line 175
    .end local v4    # "scale":F
    .end local v5    # "bufWidth":I
    .end local v6    # "bufHeight":I
    .end local v7    # "needsReset":Z
    .end local v8    # "g":Lcom/sun/prism/Graphics;
    .end local v9    # "outWidth":I
    .end local v10    # "outHeight":I
    .end local v11    # "outScale":F
    .end local v12    # "rtt":Lcom/sun/prism/RTTexture;
    .end local v13    # "pix":Lcom/sun/glass/ui/Pixels;
    .end local v14    # "bits":Ljava/nio/IntBuffer;
    .end local v15    # "rawbits":[I
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .line 176
    .local v4, "th":Ljava/lang/Throwable;
    const/16 v17, 0x1

    move/from16 v3, v17

    .line 177
    move-object/from16 v17, v4

    :try_start_6
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_20
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_21
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_22
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    goto/16 :goto_4

    .line 179
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 180
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->rttexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 182
    :cond_23
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_24

    .line 183
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->resolveRTT:Lcom/sun/prism/RTTexture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 186
    :cond_24
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 188
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v17

    .line 190
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    .line 191
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/UploadingPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v17

    move/from16 v18, v3

    invoke-interface/range {v17 .. v18}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 194
    :cond_25
    sget-object v17, Lcom/sun/javafx/tk/quantum/UploadingPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v17, v16

    throw v17
.end method

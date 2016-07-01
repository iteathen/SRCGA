.class Lcom/sun/javafx/tk/quantum/ViewScene;
.super Lcom/sun/javafx/tk/quantum/GlassScene;
.source "ViewScene.java"


# static fields
.field private static final UNSUPPORTED_FORMAT:Ljava/lang/String; = "Transparent windows only supported for BYTE_BGRA_PRE format on LITTLE_ENDIAN machines"


# instance fields
.field private paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

.field private painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

.field private platformView:Lcom/sun/glass/ui/View;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v2, p2

    .local v2, "msaa":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassScene;-><init>(ZZ)V

    .line 53
    move-object v3, v0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->createView()Lcom/sun/glass/ui/View;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    .line 54
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    new-instance v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/View;->setEventHandler(Lcom/sun/glass/ui/View$EventHandler;)V

    .line 55
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/ViewScene;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/ViewScene;->lambda$dispose$365()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/ViewScene;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->lambda$setCursor$366(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$dispose$365()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    invoke-virtual {v1}, Lcom/sun/glass/ui/View;->close()V

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    .line 100
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/ViewScene;->updateSceneState()V

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    .line 103
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return-object v0
.end method

.method private synthetic lambda$setCursor$366(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, p1

    .local v1, "cursor":Ljava/lang/Object;
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/cursor/CursorFrame;

    move-object v2, v5

    .line 121
    .local v2, "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v5, v2

    .line 122
    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/CursorUtils;->getPlatformCursor(Lcom/sun/javafx/cursor/CursorFrame;)Lcom/sun/glass/ui/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 124
    .local v3, "platformCursor":Lcom/sun/glass/ui/Cursor;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    if-eqz v5, :cond_0

    .line 125
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    invoke-virtual {v5}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v5

    move-object v4, v5

    .line 126
    .local v4, "window":Lcom/sun/glass/ui/Window;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 127
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Window;->setCursor(Lcom/sun/glass/ui/Cursor;)V

    .line 130
    .end local v4    # "window":Lcom/sun/glass/ui/Window;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/ViewScene$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ViewScene;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->dispose()V

    .line 107
    return-void
.end method

.method public enableInputMethodEvents(Z)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/View;->enableInputMethodEvents(Z)V

    .line 147
    return-void
.end method

.method public finishInputMethodComposition()V
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    invoke-virtual {v1}, Lcom/sun/glass/ui/View;->finishInputMethodComposition()V

    .line 152
    return-void
.end method

.method getPainter()Lcom/sun/javafx/tk/quantum/ViewPainter;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return-object v0
.end method

.method protected getPlatformView()Lcom/sun/glass/ui/View;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return-object v0
.end method

.method getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/ViewScene;->getStage()Lcom/sun/javafx/tk/quantum/GlassStage;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return-object v0
.end method

.method protected isSynchronous()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    instance-of v1, v1, Lcom/sun/javafx/tk/quantum/PresentingPainter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method repaint()V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->platformView:Lcom/sun/glass/ui/View;

    if-nez v2, :cond_0

    .line 135
    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->setPainting(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v1, v2

    .line 140
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 142
    .end local v1    # "tk":Lcom/sun/javafx/tk/Toolkit;
    :cond_1
    goto :goto_0
.end method

.method public setCursor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, p1

    .local v1, "cursor":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setCursor(Ljava/lang/Object;)V

    .line 119
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewScene$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/ViewScene;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/ViewPainter;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v1, p1

    .local v1, "stage":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V

    .line 72
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 73
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v2, v3

    .line 74
    .local v2, "wstage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->needsUpdateWindow()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/prism/GraphicsPipeline;->isUploading()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Pixels;->getNativeFormat()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v3, v4, :cond_2

    .line 77
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Transparent windows only supported for BYTE_BGRA_PRE format on LITTLE_ENDIAN machines"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_2
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/tk/quantum/UploadingPainter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/UploadingPainter;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    .line 83
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->getRoot()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/ViewPainter;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 84
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getRendered()Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/tk/quantum/PaintRenderJob;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/CompletionListener;Ljava/lang/Runnable;)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    .line 86
    .end local v2    # "wstage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_3
    return-void

    .line 81
    .restart local v2    # "wstage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_4
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/tk/quantum/PresentingPainter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/PresentingPainter;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    goto :goto_0
.end method

.method synchroniseOverlayWarning()V
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->waitForSynchronization()V

    .line 162
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->getWarning()Lcom/sun/javafx/tk/quantum/OverlayWarning;

    move-result-object v3

    move-object v1, v3

    .line 163
    .local v1, "warning":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/ViewPainter;->setOverlayRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->releaseSynchronization(Z)V

    .line 172
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->entireSceneNeedsRepaint()V

    .line 173
    .line 174
    return-void

    .line 166
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewScene;->painter:Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/ViewPainter;->setOverlayRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 167
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->updateBounds()V

    .line 168
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->impl_updatePeer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v1    # "warning":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/ViewScene;->releaseSynchronization(Z)V

    .line 172
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/ViewScene;->entireSceneNeedsRepaint()V

    move-object v3, v2

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getPlatformView()Lcom/sun/glass/ui/View;

    move-result-object v2

    move-object v1, v2

    .line 156
    .local v1, "view":Lcom/sun/glass/ui/View;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewScene;
    return-object v0
.end method

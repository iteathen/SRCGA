.class abstract Lcom/sun/javafx/tk/quantum/GlassScene;
.super Ljava/lang/Object;
.source "GlassScene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKScene;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final javaSecurityAccess:Lsun/misc/JavaSecurityAccess;


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private camera:Lcom/sun/javafx/sg/prism/NGCamera;

.field private final depthBuffer:Z

.field private doPresent:Z

.field protected dragGestureListener:Lcom/sun/javafx/tk/TKDragGestureListener;

.field protected dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

.field protected dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

.field private volatile entireSceneDirty:Z

.field protected fillPaint:Lcom/sun/prism/paint/Paint;

.field protected inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

.field private lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

.field private final msaa:Z

.field private final painting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private root:Lcom/sun/javafx/sg/prism/NGNode;

.field protected sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

.field private scenePaintListener:Lcom/sun/javafx/tk/TKScenePaintListener;

.field sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

.field private stage:Lcom/sun/javafx/tk/quantum/GlassStage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassScene;->$assertionsDisabled:Z

    .line 57
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaSecurityAccess()Lsun/misc/JavaSecurityAccess;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/GlassScene;->javaSecurityAccess:Lsun/misc/JavaSecurityAccess;

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ZZ)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v2, p2

    .local v2, "msaa":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneDirty:Z

    .line 75
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->doPresent:Z

    .line 76
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->painting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 86
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->msaa:Z

    .line 87
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->depthBuffer:Z

    .line 88
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/tk/quantum/SceneState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/SceneState;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 89
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/security/AccessControlContext;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassScene;->lambda$setSecurityContext$269()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->lambda$entireSceneNeedsRepaint$270()V

    return-void
.end method

.method private synthetic lambda$entireSceneNeedsRepaint$270()V
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneDirty:Z

    .line 232
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneChanged()V

    .line 233
    return-void
.end method

.method private static synthetic lambda$setSecurityContext$269()Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearEntireSceneDirty()V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneDirty:Z

    .line 243
    return-void
.end method

.method public createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;
    .locals 8

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "isDragSource":Z
    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassScene$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "DND"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassScene$1;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;Ljava/lang/String;)V

    move-object v2, v3

    .line 264
    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getDragboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;Z)Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/GlassScene;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 94
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 95
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 96
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 97
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->dragGestureListener:Lcom/sun/javafx/tk/TKDragGestureListener;

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->scenePaintListener:Lcom/sun/javafx/tk/TKScenePaintListener;

    .line 103
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 104
    return-void
.end method

.method public entireSceneNeedsRepaint()V
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneDirty:Z

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneChanged()V

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassScene$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final declared-synchronized frameRendered()V
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->scenePaintListener:Lcom/sun/javafx/tk/TKScenePaintListener;

    if-eqz v1, :cond_0

    .line 325
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->scenePaintListener:Lcom/sun/javafx/tk/TKScenePaintListener;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKScenePaintListener;->frameRendered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    monitor-exit v2

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    throw v0
.end method

.method public final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Scene security context has not been set!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->accessCtrlCtx:Ljava/security/AccessControlContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method getCamera()Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method protected getClearColor()Lcom/sun/prism/paint/Color;
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    :goto_0
    move-object v1, v2

    .line 339
    .local v1, "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getPlatformWindow()Lcom/sun/glass/ui/Window;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isTransparentWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    sget-object v2, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    move-object v0, v2

    .line 356
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    :goto_1
    return-object v0

    .line 338
    .end local v1    # "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 342
    .restart local v1    # "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-nez v2, :cond_2

    .line 343
    sget-object v2, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    move-object v0, v2

    goto :goto_1

    .line 344
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    if-eqz v2, :cond_6

    move-object v2, v1

    .line 345
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getPlatformWindow()Lcom/sun/glass/ui/Window;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isUnifiedWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v2

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v2, v3, :cond_4

    .line 348
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    check-cast v2, Lcom/sun/prism/paint/Color;

    move-object v0, v2

    goto :goto_1

    .line 349
    :cond_4
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->depthBuffer:Z

    if-eqz v2, :cond_5

    .line 351
    sget-object v2, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    move-object v0, v2

    goto :goto_1

    .line 353
    :cond_5
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1

    .line 356
    :cond_6
    sget-object v2, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    move-object v0, v2

    goto :goto_1
.end method

.method final getCurrentPaint()Lcom/sun/prism/paint/Paint;
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    :goto_0
    move-object v1, v2

    .line 363
    .local v1, "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getStyle()Ljavafx/stage/StageStyle;

    move-result-object v2

    sget-object v3, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    if-ne v2, v3, :cond_2

    .line 364
    sget-object v2, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v2, v3}, Lcom/sun/prism/paint/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v0, v2

    .line 369
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    :goto_2
    return-object v0

    .line 362
    .end local v1    # "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 364
    .restart local v1    # "windowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    goto :goto_1

    .line 366
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v2

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v2, v3, :cond_3

    .line 367
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_2

    .line 369
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    move-object v0, v2

    goto :goto_2
.end method

.method getDepthBuffer()Z
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->depthBuffer:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return v0
.end method

.method public final declared-synchronized getDoPresent()Z
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->doPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    throw v0
.end method

.method public getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method protected getPlatformView()Lcom/sun/glass/ui/View;
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method protected getRoot()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method final getSceneState()Lcom/sun/javafx/tk/quantum/SceneState;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method protected final getStage()Lcom/sun/javafx/tk/quantum/GlassStage;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method public isEntireSceneDirty()Z
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneDirty:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return v0
.end method

.method isMSAA()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->msaa:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return v0
.end method

.method protected abstract isSynchronous()Z
.end method

.method public final markDirty()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneChanged()V

    .line 223
    return-void
.end method

.method public releaseSynchronization(Z)V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "updateState":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 145
    :cond_0
    sget-object v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    return-void
.end method

.method repaint()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public sceneChanged()V
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v1, :cond_0

    .line 314
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/PaintCollector;->addDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/PaintCollector;->removeDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    goto :goto_0
.end method

.method public setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Lcom/sun/javafx/sg/prism/NGCamera;->INSTANCE:Lcom/sun/javafx/sg/prism/NGCamera;

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 206
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 207
    return-void

    .line 205
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public setCursor(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 218
    return-void
.end method

.method public final declared-synchronized setDoPresent(Z)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "value":Z
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move v3, v1

    :try_start_0
    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->doPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit v4

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    throw v0
.end method

.method public setFillPaint(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "fillPaint":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Paint;

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 212
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 213
    return-void
.end method

.method public setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    .line 180
    return-void
.end method

.method public setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "lights":[Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    return-void
.end method

.method setPainting(Z)Z
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->painting:Ljava/util/concurrent/atomic/AtomicBoolean;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return v0
.end method

.method public setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 185
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 186
    return-void
.end method

.method public final setSecurityContext(Ljava/security/AccessControlContext;)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "ctx":Ljava/security/AccessControlContext;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Scene security context has been already set!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v2, v3

    .line 122
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/tk/quantum/GlassScene;->javaSecurityAccess:Lsun/misc/JavaSecurityAccess;

    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassScene$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    move-object v6, v2

    move-object v7, v1

    invoke-interface {v4, v5, v6, v7}, Lsun/misc/JavaSecurityAccess;->doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/AccessControlContext;

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 124
    return-void
.end method

.method setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "stage":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->stage:Lcom/sun/javafx/tk/quantum/GlassStage;

    .line 273
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneChanged()V

    .line 274
    return-void
.end method

.method public setTKDragGestureListener(Lcom/sun/javafx/tk/TKDragGestureListener;)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKDragGestureListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->dragGestureListener:Lcom/sun/javafx/tk/TKDragGestureListener;

    .line 176
    return-void
.end method

.method public setTKDragSourceListener(Lcom/sun/javafx/tk/TKDragSourceListener;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKDragSourceListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    .line 172
    return-void
.end method

.method public setTKDropTargetListener(Lcom/sun/javafx/tk/TKDropTargetListener;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKDropTargetListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    .line 168
    return-void
.end method

.method public setTKSceneListener(Lcom/sun/javafx/tk/TKSceneListener;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKSceneListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    .line 160
    return-void
.end method

.method public declared-synchronized setTKScenePaintListener(Lcom/sun/javafx/tk/TKScenePaintListener;)V
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKScenePaintListener;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassScene;->scenePaintListener:Lcom/sun/javafx/tk/TKScenePaintListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v4

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    throw v0
.end method

.method final stageVisible(Z)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move v1, p1

    .local v1, "visible":Z
    move v2, v1

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->forceRepaint:Z

    if-eqz v2, :cond_0

    .line 302
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;->removeDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 304
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 305
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;->addDirtyScene(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 307
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method final updateSceneState()V
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->update()V

    .line 283
    return-void
.end method

.method public waitForRenderingToComplete()V
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PaintCollector;->waitForRenderingToComplete()V

    .line 128
    return-void
.end method

.method public waitForSynchronization()V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene;
    sget-object v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    return-void
.end method

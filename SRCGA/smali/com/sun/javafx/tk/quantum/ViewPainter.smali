.class abstract Lcom/sun/javafx/tk/quantum/ViewPainter;
.super Ljava/lang/Object;
.source "ViewPainter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ROOT_PATHS:[Lcom/sun/javafx/sg/prism/NodePath;

.field protected static final renderLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private clip:Lcom/sun/javafx/geom/RectBounds;

.field private dirtyRect:Lcom/sun/javafx/geom/Rectangle;

.field private dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

.field private dirtyRegionPool:Lcom/sun/javafx/geom/DirtyRegionPool;

.field private dirtyRegionTemp:Lcom/sun/javafx/geom/RectBounds;

.field protected factory:Lcom/sun/prism/ResourceFactory;

.field protected freshBackBuffer:Z

.field private height:I

.field private overlayRoot:Lcom/sun/javafx/sg/prism/NGNode;

.field protected penHeight:I

.field protected penWidth:I

.field protected presentable:Lcom/sun/prism/Presentable;

.field private projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field private root:Lcom/sun/javafx/sg/prism/NGNode;

.field private scaleTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private sceneBuffer:Lcom/sun/prism/RTTexture;

.field protected final sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

.field private tx:Lcom/sun/javafx/geom/transform/Affine3D;

.field protected viewHeight:I

.field private viewProjTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field protected viewWidth:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lcom/sun/javafx/tk/quantum/ViewPainter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->$assertionsDisabled:Z

    .line 67
    sget v0, Lcom/sun/prism/impl/PrismSettings;->dirtyRegionCount:I

    new-array v0, v0, [Lcom/sun/javafx/sg/prism/NodePath;

    sput-object v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->ROOT_PATHS:[Lcom/sun/javafx/sg/prism/NodePath;

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, p1

    .local v1, "gs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->penWidth:I

    .line 79
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->penHeight:I

    .line 127
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->getSceneState()Lcom/sun/javafx/tk/quantum/SceneState;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Scene state is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-eqz v2, :cond_1

    .line 133
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->tx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 134
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewProjTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 135
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 136
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->scaleTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 137
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->clip:Lcom/sun/javafx/geom/RectBounds;

    .line 138
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    .line 139
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionTemp:Lcom/sun/javafx/geom/RectBounds;

    .line 140
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/DirtyRegionPool;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget v5, Lcom/sun/prism/impl/PrismSettings;->dirtyRegionCount:I

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionPool;-><init>(I)V

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionPool:Lcom/sun/javafx/geom/DirtyRegionPool;

    .line 141
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionPool:Lcom/sun/javafx/geom/DirtyRegionPool;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    .line 143
    :cond_1
    return-void
.end method

.method private adjustPerspective(Lcom/sun/javafx/sg/prism/NGCamera;)V
    .locals 11

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v2, p1

    .local v2, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 156
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;

    if-eqz v3, :cond_1

    .line 157
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->scaleTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    neg-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    .line 158
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->scaleTx:Lcom/sun/javafx/geom/transform/Affine3D;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 159
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->scaleTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v3

    .line 160
    move-object v3, v1

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewProjTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGCamera;->getProjViewTx(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewProjTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 161
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewProjTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v3

    .line 163
    :cond_1
    return-void
.end method

.method private doPaint(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NodePath;)V
    .locals 12

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "renderRootPath":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 447
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NodePath;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 450
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 451
    .line 478
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-boolean v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NodePath;->getCurrentNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 456
    :cond_1
    sget-boolean v6, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v6, :cond_2

    .line 457
    const-string v6, "Painting"

    invoke-static {v6}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 459
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v6

    move-object v3, v6

    .line 460
    .local v3, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/GlassScene;->clearEntireSceneDirty()V

    .line 461
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/GlassScene;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    .line 462
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/GlassScene;->getDepthBuffer()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setDepthBuffer(Z)V

    .line 463
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/SceneState;->getClearColor()Lcom/sun/prism/paint/Color;

    move-result-object v6

    move-object v4, v6

    .line 464
    .local v4, "clearColor":Lcom/sun/prism/paint/Color;
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 465
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->clear(Lcom/sun/prism/paint/Color;)V

    .line 467
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/SceneState;->getCurrentPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v6

    move-object v5, v6

    .line 468
    .local v5, "curPaint":Lcom/sun/prism/paint/Paint;
    move-object v6, v5

    if-eqz v6, :cond_5

    .line 469
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v6

    sget-object v7, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-eq v6, v7, :cond_4

    .line 470
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/sun/prism/RenderTarget;->setOpaque(Z)V

    .line 472
    :cond_4
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 473
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    int-to-float v10, v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    .line 475
    :cond_5
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/SceneState;->getCamera()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 476
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;)V

    .line 477
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 478
    goto/16 :goto_0
.end method

.method private static getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;
    .locals 6

    .prologue
    .line 414
    move v0, p0

    .local v0, "i":I
    sget-object v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->ROOT_PATHS:[Lcom/sun/javafx/sg/prism/NodePath;

    move v2, v0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 415
    sget-object v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->ROOT_PATHS:[Lcom/sun/javafx/sg/prism/NodePath;

    move v2, v0

    new-instance v3, Lcom/sun/javafx/sg/prism/NodePath;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/sg/prism/NodePath;-><init>()V

    aput-object v3, v1, v2

    .line 417
    :cond_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->ROOT_PATHS:[Lcom/sun/javafx/sg/prism/NodePath;

    move v2, v0

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "i":I
    return-object v0
.end method

.method private paintOverdraw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 16

    .prologue
    .line 405
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v2, p2

    .local v2, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    move-object v3, v6

    .line 406
    .local v3, "pixels":[I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    sget-object v7, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    invoke-interface {v11}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/sg/prism/NGNode;->drawDirtyOpts(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;Lcom/sun/javafx/geom/Rectangle;[II)V

    .line 407
    move-object v6, v3

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-static {v6, v7, v8}, Lcom/sun/prism/Image;->fromIntArgbPreData([III)Lcom/sun/prism/Image;

    move-result-object v6

    move-object v4, v6

    .line 408
    .local v4, "image":Lcom/sun/prism/Image;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->factory:Lcom/sun/prism/ResourceFactory;

    move-object v7, v4

    sget-object v8, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v6, v7, v8}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v6

    move-object v5, v6

    .line 409
    .local v5, "texture":Lcom/sun/prism/Texture;
    move-object v6, v1

    move-object v7, v5

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v8, v8

    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v9, v9

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v2

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v14, v14

    move-object v15, v2

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v15, v15

    invoke-interface/range {v6 .. v15}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 410
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/Texture;->unlock()V

    .line 411
    return-void
.end method


# virtual methods
.method protected disposePresentable()V
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    instance-of v1, v1, Lcom/sun/prism/GraphicsResource;

    if-eqz v1, :cond_0

    .line 422
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    check-cast v1, Lcom/sun/prism/GraphicsResource;

    invoke-interface {v1}, Lcom/sun/prism/GraphicsResource;->dispose()V

    .line 424
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    .line 425
    return-void
.end method

.method protected getPixelScaleFactor()F
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    invoke-interface {v1}, Lcom/sun/prism/Presentable;->getPixelScaleFactor()F

    move-result v1

    goto :goto_0
.end method

.method protected paintImpl(Lcom/sun/prism/Graphics;)V
    .locals 26

    .prologue
    .line 168
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object/from16 v2, p1

    .local v2, "backBufferGraphics":Lcom/sun/prism/Graphics;
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    if-lez v14, :cond_0

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    if-lez v14, :cond_0

    move-object v14, v2

    if-nez v14, :cond_1

    .line 169
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/javafx/sg/prism/NGNode;->renderForcedContent(Lcom/sun/prism/Graphics;)V

    .line 170
    .line 392
    :goto_0
    return-void

    .line 175
    :cond_1
    move-object v14, v2

    move-object v3, v14

    .line 177
    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getPixelScaleFactor()F

    move-result v14

    move v4, v14

    .line 179
    .local v4, "pixelScale":F
    move-object v14, v3

    move v15, v4

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setPixelScaleFactor(F)V

    .line 183
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->overlayRoot:Lcom/sun/javafx/sg/prism/NGNode;

    if-nez v14, :cond_2

    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->freshBackBuffer:Z

    if-nez v14, :cond_2

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 185
    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/GlassScene;->isEntireSceneDirty()Z

    move-result v14

    if-nez v14, :cond_2

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 186
    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/GlassScene;->getDepthBuffer()Z

    move-result v14

    if-nez v14, :cond_2

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-nez v14, :cond_b

    :cond_2
    const/4 v14, 0x1

    :goto_1
    move v5, v14

    .line 190
    .local v5, "renderEverything":Z
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->showDirtyRegions:Z

    if-nez v14, :cond_3

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->showOverdraw:Z

    if-eqz v14, :cond_c

    :cond_3
    const/4 v14, 0x1

    :goto_2
    move v6, v14

    .line 194
    .local v6, "showDirtyOpts":Z
    move v14, v6

    if-eqz v14, :cond_d

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/SceneState;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/tk/quantum/GlassScene;->getDepthBuffer()Z

    move-result v14

    if-nez v14, :cond_d

    .line 195
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    int-to-float v14, v14

    move v15, v4

    mul-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v7, v14

    .line 196
    .local v7, "bufferWidth":I
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    int-to-float v14, v14

    move v15, v4

    mul-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v8, v14

    .line 198
    .local v8, "bufferHeight":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    if-eqz v14, :cond_5

    .line 199
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->lock()V

    .line 200
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v14

    if-nez v14, :cond_4

    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    .line 201
    invoke-interface {v15}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v15

    if-ne v14, v15, :cond_4

    move v14, v8

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    .line 202
    invoke-interface {v15}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v15

    if-eq v14, v15, :cond_5

    .line 203
    :cond_4
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 204
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 205
    move-object v14, v1

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    .line 211
    :cond_5
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    if-nez v14, :cond_6

    .line 212
    move-object v14, v1

    move-object v15, v3

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v15

    move/from16 v16, v7

    move/from16 v17, v8

    sget-object v18, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    const/16 v19, 0x0

    invoke-interface/range {v15 .. v19}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v15

    iput-object v15, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    .line 217
    const/4 v14, 0x1

    move v5, v14

    .line 219
    :cond_6
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 221
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v14

    move-object v3, v14

    .line 222
    move-object v14, v3

    move v15, v4

    move/from16 v16, v4

    invoke-interface/range {v14 .. v16}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 223
    .line 232
    .end local v7    # "bufferWidth":I
    .end local v8    # "bufferHeight":I
    :cond_7
    :goto_3
    const/4 v14, -0x1

    move v7, v14

    .line 236
    .local v7, "status":I
    move v14, v5

    if-nez v14, :cond_9

    .line 237
    sget-boolean v14, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v14, :cond_8

    .line 238
    const-string v14, "Dirty Opts Computed"

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 240
    :cond_8
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->clip:Lcom/sun/javafx/geom/RectBounds;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 241
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionTemp:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v14

    .line 242
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/DirtyRegionContainer;->reset()V

    .line 243
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->tx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 244
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->setIdentity()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v14

    .line 245
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v15}, Lcom/sun/javafx/tk/quantum/SceneState;->getCamera()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/javafx/tk/quantum/ViewPainter;->adjustPerspective(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 246
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->clip:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionTemp:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionPool:Lcom/sun/javafx/geom/DirtyRegionPool;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->tx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateDirtyRegions(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v14

    move v7, v14

    .line 249
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/DirtyRegionContainer;->roundOut()V

    .line 250
    move v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 251
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->tx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/sun/javafx/sg/prism/NGNode;->doPreCulling(Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 257
    :cond_9
    move v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v14

    :goto_4
    move v8, v14

    .line 259
    .local v8, "dirtyRegionSize":I
    move v14, v8

    if-lez v14, :cond_19

    .line 263
    move-object v14, v3

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 266
    sget-boolean v14, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v14, :cond_a

    .line 267
    const-string v14, "Render Roots Discovered"

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 269
    :cond_a
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_5
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_f

    .line 270
    move v14, v9

    invoke-static {v14}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v14

    move-object v10, v14

    .line 271
    .local v10, "path":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v14, v10

    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NodePath;->clear()V

    .line 272
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move v15, v9

    invoke-static {v15}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object/from16 v16, v0

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v16

    move/from16 v17, v9

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->tx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->projTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lcom/sun/javafx/sg/prism/NGNode;->getRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 186
    .end local v5    # "renderEverything":Z
    .end local v6    # "showDirtyOpts":Z
    .end local v7    # "status":I
    .end local v8    # "dirtyRegionSize":I
    .end local v9    # "i":I
    .end local v10    # "path":Lcom/sun/javafx/sg/prism/NodePath;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 190
    .restart local v5    # "renderEverything":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 223
    .restart local v6    # "showDirtyOpts":Z
    :cond_d
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    if-eqz v14, :cond_7

    .line 227
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 228
    move-object v14, v1

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    goto/16 :goto_3

    .line 257
    .restart local v7    # "status":I
    :cond_e
    const/4 v14, 0x0

    goto :goto_4

    .line 277
    .restart local v8    # "dirtyRegionSize":I
    .restart local v9    # "i":I
    :cond_f
    sget-boolean v14, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v14, :cond_10

    .line 278
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " different dirty regions to render"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 279
    const/4 v14, 0x0

    move v9, v14

    :goto_6
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_10

    .line 280
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dirty Region "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 281
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Render Root Path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v9

    invoke-static {v15}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 287
    :cond_10
    sget-boolean v14, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v14, :cond_13

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->printRenderGraph:Z

    if-eqz v14, :cond_13

    .line 288
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v14

    .line 289
    .local v9, "s":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v14

    .line 290
    .local v10, "roots":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    const/4 v14, 0x0

    move v11, v14

    .local v11, "i":I
    :goto_7
    move v14, v11

    move v15, v8

    if-ge v14, v15, :cond_12

    .line 291
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move v15, v11

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v14

    move-object v12, v14

    .line 293
    .local v12, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_11

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_11

    .line 294
    move v14, v11

    invoke-static {v14}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v14

    move-object v13, v14

    .line 295
    .local v13, "nodePath":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v14, v13

    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NodePath;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11

    .line 296
    move-object v14, v10

    move-object v15, v13

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/NodePath;->last()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 290
    .end local v13    # "nodePath":Lcom/sun/javafx/sg/prism/NodePath;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 300
    .end local v12    # "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    :cond_12
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/sg/prism/NGNode;->printDirtyOpts(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 301
    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 305
    .end local v9    # "s":Ljava/lang/StringBuilder;
    .end local v10    # "roots":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .end local v11    # "i":I
    :cond_13
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_8
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_16

    .line 306
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v14

    move-object v10, v14

    .line 309
    .local v10, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v14, v10

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_15

    move-object v14, v10

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_15

    .line 312
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v10

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 315
    move v14, v4

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_14

    .line 316
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v15, v15

    move/from16 v16, v4

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 317
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v15, v15

    move/from16 v16, v4

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 318
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v15, v15

    move/from16 v16, v4

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 319
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v15, v15

    move/from16 v16, v4

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 321
    :cond_14
    move-object v14, v3

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 322
    move-object v14, v3

    move v15, v9

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 323
    move-object v14, v1

    move-object v15, v3

    move/from16 v16, v9

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/ViewPainter;->getRootPath(I)Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/tk/quantum/ViewPainter;->doPaint(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NodePath;)V

    .line 305
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    .line 332
    .end local v9    # "i":I
    .end local v10    # "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    :cond_16
    :goto_9
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/javafx/sg/prism/NGNode;->renderForcedContent(Lcom/sun/prism/Graphics;)V

    .line 335
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->overlayRoot:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v14, :cond_17

    .line 336
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->overlayRoot:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 344
    :cond_17
    move v14, v6

    if-eqz v14, :cond_1b

    .line 345
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    if-eqz v14, :cond_18

    .line 346
    move-object v14, v3

    invoke-interface {v14}, Lcom/sun/prism/Graphics;->sync()V

    .line 347
    move-object v14, v2

    invoke-interface {v14}, Lcom/sun/prism/Graphics;->clear()V

    .line 348
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v20, v0

    .line 349
    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/RTTexture;->getContentX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/RTTexture;->getContentY()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    .line 350
    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->getContentX()I

    move-result v22

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v23, v0

    .line 351
    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/RTTexture;->getContentY()I

    move-result v23

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 348
    invoke-interface/range {v14 .. v23}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 352
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 355
    :cond_18
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->showOverdraw:Z

    if-eqz v14, :cond_1e

    .line 357
    move v14, v8

    if-lez v14, :cond_1c

    .line 360
    const/4 v14, 0x0

    move v9, v14

    .restart local v9    # "i":I
    :goto_a
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_1a

    .line 361
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object/from16 v16, v0

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v10, v14

    .line 362
    .local v10, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v2

    move v15, v9

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 363
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/tk/quantum/ViewPainter;->paintOverdraw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Rectangle;)V

    .line 364
    move-object v14, v2

    new-instance v15, Lcom/sun/prism/paint/Color;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e99999a    # 0.3f

    invoke-direct/range {v16 .. v20}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 365
    move-object v14, v2

    move-object v15, v10

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v15, v15

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-interface/range {v14 .. v18}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    .line 360
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 328
    .end local v9    # "i":I
    .end local v10    # "clip":Lcom/sun/javafx/geom/Rectangle;
    :cond_19
    move-object v14, v3

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 329
    move-object v14, v3

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 330
    move-object v14, v1

    move-object v15, v3

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/tk/quantum/ViewPainter;->doPaint(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NodePath;)V

    goto/16 :goto_9

    .line 360
    .line 390
    :cond_1a
    :goto_b
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NGNode;->clearPainted()V

    .line 392
    :cond_1b
    goto/16 :goto_0

    .line 369
    :cond_1c
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object v9, v14

    .line 370
    .local v9, "clip":Lcom/sun/javafx/geom/Rectangle;
    sget-boolean v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->$assertionsDisabled:Z

    if-nez v14, :cond_1d

    move-object v14, v2

    invoke-interface {v14}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v14

    if-eqz v14, :cond_1d

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 371
    :cond_1d
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/tk/quantum/ViewPainter;->paintOverdraw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Rectangle;)V

    .line 372
    move-object v14, v2

    new-instance v15, Lcom/sun/prism/paint/Color;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e99999a    # 0.3f

    invoke-direct/range {v16 .. v20}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 373
    move-object v14, v2

    move-object v15, v9

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v15, v15

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-interface/range {v14 .. v18}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    .line 374
    goto/16 :goto_b

    .line 377
    .end local v9    # "clip":Lcom/sun/javafx/geom/Rectangle;
    :cond_1e
    move v14, v8

    if-lez v14, :cond_20

    .line 379
    move-object v14, v2

    new-instance v15, Lcom/sun/prism/paint/Color;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e99999a    # 0.3f

    invoke-direct/range {v16 .. v20}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 380
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_c
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_1f

    .line 381
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/ViewPainter;->dirtyRegionContainer:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v14

    move-object v10, v14

    .line 382
    .local v10, "reg":Lcom/sun/javafx/geom/RectBounds;
    move-object v14, v2

    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v17

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v18

    invoke-interface/range {v14 .. v18}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 380
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .end local v10    # "reg":Lcom/sun/javafx/geom/RectBounds;
    :cond_1f
    goto/16 :goto_b

    .line 386
    .end local v9    # "i":I
    :cond_20
    move-object v14, v2

    new-instance v15, Lcom/sun/prism/paint/Color;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e99999a    # 0.3f

    invoke-direct/range {v16 .. v20}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 387
    move-object v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-interface/range {v14 .. v18}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    goto/16 :goto_b
.end method

.method protected final setOverlayRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->overlayRoot:Lcom/sun/javafx/sg/prism/NGNode;

    .line 151
    return-void
.end method

.method protected final setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/ViewPainter;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 147
    return-void
.end method

.method protected validateStageGraphics()Z
    .locals 7

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const/4 v1, 0x0

    move v0, v1

    .line 437
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    :goto_0
    return v0

    .line 434
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/ViewPainter;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/SceneState;->getWidth()I

    move-result v3

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewWidth:I

    iput v2, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->width:I

    .line 435
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/SceneState;->getHeight()I

    move-result v3

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->viewHeight:I

    iput v2, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->height:I

    .line 437
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->isWindowVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/ViewPainter;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->isWindowMinimized()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

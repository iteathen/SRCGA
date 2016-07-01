.class Lcom/sun/javafx/tk/quantum/SceneState;
.super Lcom/sun/prism/PresentableState;
.source "SceneState.java"


# instance fields
.field private camera:Lcom/sun/javafx/sg/prism/NGCamera;

.field private clearColor:Lcom/sun/prism/paint/Color;

.field private currentPaint:Lcom/sun/prism/paint/Paint;

.field final scene:Lcom/sun/javafx/tk/quantum/GlassScene;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, p1

    .local v1, "vs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/PresentableState;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 56
    return-void
.end method

.method static synthetic access$001(Lcom/sun/javafx/tk/quantum/SceneState;Lcom/sun/prism/PixelSource;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/PixelSource;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/prism/PresentableState;->uploadPixels(Lcom/sun/prism/PixelSource;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/SceneState;Lcom/sun/prism/PixelSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/SceneState;->lambda$uploadPixels$288(Lcom/sun/prism/PixelSource;)V

    return-void
.end method

.method private synthetic lambda$uploadPixels$288(Lcom/sun/prism/PixelSource;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, p1

    .local v1, "source":Lcom/sun/prism/PixelSource;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/SceneState;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/SceneState;->access$001(Lcom/sun/javafx/tk/quantum/SceneState;Lcom/sun/prism/PixelSource;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/PixelSource;->skipLatestPixels()V

    goto :goto_0
.end method


# virtual methods
.method getCamera()Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return-object v0
.end method

.method getClearColor()Lcom/sun/prism/paint/Color;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->clearColor:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return-object v0
.end method

.method getCurrentPaint()Lcom/sun/prism/paint/Paint;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->currentPaint:Lcom/sun/prism/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return-object v0
.end method

.method public getScene()Lcom/sun/javafx/tk/quantum/GlassScene;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return-object v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->isMSAA()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->getView()Lcom/sun/glass/ui/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->isViewClosed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/SceneState;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/SceneState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->getPlatformView()Lcom/sun/glass/ui/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->view:Lcom/sun/glass/ui/View;

    .line 100
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->getClearColor()Lcom/sun/prism/paint/Color;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->clearColor:Lcom/sun/prism/paint/Color;

    .line 101
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->getCurrentPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->currentPaint:Lcom/sun/prism/paint/Paint;

    .line 103
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/PresentableState;->update()V

    .line 104
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->getCamera()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/SceneState;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewWidth()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->viewWidth:I

    .line 110
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/SceneState;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewHeight()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/sun/javafx/tk/quantum/SceneState;->viewHeight:I

    .line 112
    :cond_0
    return-void
.end method

.method public uploadPixels(Lcom/sun/prism/PixelSource;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SceneState;
    move-object v1, p1

    .local v1, "source":Lcom/sun/prism/PixelSource;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/SceneState$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/SceneState;Lcom/sun/prism/PixelSource;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

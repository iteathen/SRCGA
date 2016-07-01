.class public abstract Lcom/sun/prism/PresentableState;
.super Ljava/lang/Object;
.source "PresentableState.java"


# static fields
.field protected static final hasWindowManager:Z


# instance fields
.field protected isClosed:Z

.field protected isWindowMinimized:Z

.field protected isWindowVisible:Z

.field protected nativeFrameBuffer:I

.field protected nativeView:J

.field protected nativeWindowHandle:J

.field protected outputHeight:I

.field protected outputScale:F

.field protected outputWidth:I

.field protected final pixelFormat:I

.field protected renderHeight:I

.field protected renderScale:F

.field protected renderWidth:I

.field protected screenHeight:I

.field protected screenWidth:I

.field protected view:Lcom/sun/glass/ui/View;

.field protected viewHeight:I

.field protected viewWidth:I

.field protected window:Lcom/sun/glass/ui/Window;

.field protected windowAlpha:F

.field protected windowX:I

.field protected windowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->hasWindowManager()Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/PresentableState;->hasWindowManager:Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/Pixels;->getNativeFormat()I

    move-result v2

    iput v2, v1, Lcom/sun/prism/PresentableState;->pixelFormat:I

    .line 74
    return-void
.end method

.method private scale(IFF)I
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move v1, p1

    .local v1, "dim":I
    move v2, p2

    .local v2, "fromScale":F
    move v3, p3

    .local v3, "toScale":F
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move v4, v1

    .line 305
    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0

    .line 303
    .restart local v0    # "this":Lcom/sun/prism/PresentableState;
    :cond_0
    move v4, v1

    int-to-float v4, v4

    move v5, v3

    mul-float/2addr v4, v5

    move v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->windowAlpha:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->viewHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getNativeFrameBuffer()I
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->nativeFrameBuffer:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getNativeView()J
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/PresentableState;->nativeView:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return-wide v0
.end method

.method public getNativeWindow()J
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/PresentableState;->nativeWindowHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return-wide v0
.end method

.method public getOutputHeight()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->outputHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getOutputScale()F
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->outputScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getOutputWidth()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->outputWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getPixelFormat()I
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->pixelFormat:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getRenderHeight()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->renderHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getRenderScale()F
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->renderScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getRenderWidth()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->renderWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->screenHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->screenWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getView()Lcom/sun/glass/ui/View;
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->viewWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getWindow()Lcom/sun/glass/ui/Window;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return-object v0
.end method

.method public getWindowX()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->windowX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public getWindowY()I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PresentableState;->windowY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public hasWindowManager()Z
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    sget-boolean v1, Lcom/sun/prism/PresentableState;->hasWindowManager:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public isViewClosed()Z
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/PresentableState;->isClosed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public isWindowMinimized()Z
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/PresentableState;->isWindowMinimized:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public isWindowVisible()Z
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/PresentableState;->isWindowVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PresentableState;
    return v0
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    if-eqz v1, :cond_0

    .line 272
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v1}, Lcom/sun/glass/ui/View;->lock()V

    .line 273
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v2}, Lcom/sun/glass/ui/View;->getNativeFrameBuffer()I

    move-result v2

    iput v2, v1, Lcom/sun/prism/PresentableState;->nativeFrameBuffer:I

    .line 275
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v1}, Lcom/sun/glass/ui/View;->unlock()V

    .line 284
    :cond_0
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 337
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/PresentableState;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    if-eqz v3, :cond_1

    .line 338
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->viewWidth:I

    .line 339
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->viewHeight:I

    .line 340
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    .line 345
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    if-eqz v3, :cond_2

    .line 346
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->windowX:I

    .line 347
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->windowY:I

    .line 348
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getAlpha()F

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->windowAlpha:F

    .line 349
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getNativeView()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/prism/PresentableState;->nativeView:J

    .line 350
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/prism/PresentableState;->nativeWindowHandle:J

    .line 351
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->isClosed()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/prism/PresentableState;->isClosed:Z

    .line 352
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/prism/PresentableState;->isWindowVisible:Z

    .line 353
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->isMinimized()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/prism/PresentableState;->isWindowMinimized:Z

    .line 354
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    .line 355
    invoke-virtual {v5}, Lcom/sun/glass/ui/Window;->getRenderScale()F

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    .line 356
    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getOutputScale()F

    move-result v6

    .line 354
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/PresentableState;->update(FFF)V

    .line 357
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v3

    move-object v2, v3

    .line 358
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 362
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->screenHeight:I

    .line 363
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/sun/prism/PresentableState;->screenWidth:I

    .line 365
    .line 371
    .end local v2    # "screen":Lcom/sun/glass/ui/Screen;
    :cond_0
    :goto_1
    return-void

    .line 342
    :cond_1
    move-object v3, v1

    move-object v4, v1

    const/4 v5, -0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/prism/PresentableState;->viewHeight:I

    iput v4, v3, Lcom/sun/prism/PresentableState;->viewWidth:I

    .line 343
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/PresentableState;->window:Lcom/sun/glass/ui/Window;

    goto/16 :goto_0

    .line 367
    :cond_2
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/prism/PresentableState;->nativeView:J

    .line 368
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/prism/PresentableState;->nativeWindowHandle:J

    .line 369
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/prism/PresentableState;->isClosed:Z

    goto :goto_1
.end method

.method protected update(FFF)V
    .locals 9

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move v1, p1

    .local v1, "viewScale":F
    move v2, p2

    .local v2, "renderScale":F
    move v3, p3

    .local v3, "outputScale":F
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/prism/PresentableState;->renderScale:F

    .line 310
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputScale:F

    .line 311
    move v4, v2

    move v5, v1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 312
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->viewWidth:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->renderWidth:I

    .line 313
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->viewHeight:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->renderHeight:I

    .line 318
    :goto_0
    move v4, v3

    move v5, v1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 319
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->viewWidth:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputWidth:I

    .line 320
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->viewHeight:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputHeight:I

    .line 328
    :goto_1
    return-void

    .line 315
    :cond_0
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/PresentableState;->viewWidth:I

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/PresentableState;->scale(IFF)I

    move-result v5

    iput v5, v4, Lcom/sun/prism/PresentableState;->renderWidth:I

    .line 316
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/PresentableState;->viewHeight:I

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/PresentableState;->scale(IFF)I

    move-result v5

    iput v5, v4, Lcom/sun/prism/PresentableState;->renderHeight:I

    goto :goto_0

    .line 321
    :cond_1
    move v4, v3

    move v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 322
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->renderWidth:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputWidth:I

    .line 323
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/PresentableState;->renderHeight:I

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputHeight:I

    goto :goto_1

    .line 325
    :cond_2
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/PresentableState;->viewWidth:I

    move v7, v1

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/PresentableState;->scale(IFF)I

    move-result v5

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputWidth:I

    .line 326
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/PresentableState;->viewHeight:I

    move v7, v1

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/PresentableState;->scale(IFF)I

    move-result v5

    iput v5, v4, Lcom/sun/prism/PresentableState;->outputHeight:I

    goto :goto_1
.end method

.method public uploadPixels(Lcom/sun/prism/PixelSource;)V
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PresentableState;
    move-object v1, p1

    .local v1, "source":Lcom/sun/prism/PixelSource;
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/PixelSource;->getLatestPixels()Lcom/sun/glass/ui/Pixels;

    move-result-object v4

    move-object v2, v4

    .line 293
    .local v2, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/prism/PresentableState;->view:Lcom/sun/glass/ui/View;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/View;->uploadPixels(Lcom/sun/glass/ui/Pixels;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/PixelSource;->doneWithPixels(Lcom/sun/glass/ui/Pixels;)V

    .line 298
    .line 300
    :cond_0
    return-void

    .line 297
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/PixelSource;->doneWithPixels(Lcom/sun/glass/ui/Pixels;)V

    move-object v4, v3

    throw v4
.end method

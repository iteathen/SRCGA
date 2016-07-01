.class Lcom/sun/prism/es2/ES2SwapChain;
.super Ljava/lang/Object;
.source "ES2SwapChain.java"

# interfaces
.implements Lcom/sun/prism/es2/ES2RenderTarget;
.implements Lcom/sun/prism/Presentable;
.implements Lcom/sun/prism/GraphicsResource;


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private copyFullBuffer:Z

.field private drawable:Lcom/sun/prism/es2/GLDrawable;

.field private h:I

.field private final msaa:Z

.field nativeDestHandle:I

.field private needsResize:Z

.field private opaque:Z

.field private final pState:Lcom/sun/prism/PresentableState;

.field private pixelScaleFactor:F

.field private stableBackbuffer:Lcom/sun/prism/RTTexture;

.field private w:I


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/PresentableState;)V
    .locals 11

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v2, p1

    .local v2, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v3, p2

    .local v3, "pState":Lcom/sun/prism/PresentableState;
    move-object v6, v1

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->opaque:Z

    .line 52
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->nativeDestHandle:I

    .line 88
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    .line 89
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    .line 90
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/prism/PresentableState;->getRenderScale()F

    move-result v7

    iput v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->pixelScaleFactor:F

    .line 91
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/prism/PresentableState;->isMSAA()Z

    move-result v7

    iput-boolean v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->msaa:Z

    .line 92
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/prism/PresentableState;->getNativeWindow()J

    move-result-wide v6

    move-wide v4, v6

    .line 93
    .local v4, "nativeWindow":J
    move-object v6, v1

    sget-object v7, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move-wide v8, v4

    move-object v10, v2

    .line 94
    invoke-virtual {v10}, Lcom/sun/prism/es2/ES2Context;->getPixelFormat()Lcom/sun/prism/es2/GLPixelFormat;

    move-result-object v10

    .line 93
    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/prism/es2/GLFactory;->createGLDrawable(JLcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/prism/es2/ES2SwapChain;->drawable:Lcom/sun/prism/es2/GLDrawable;

    .line 95
    return-void
.end method

.method private drawTexture(Lcom/sun/prism/es2/ES2Graphics;Lcom/sun/prism/RTTexture;FFFFFFFF)V
    .locals 22

    .prologue
    .line 159
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/es2/ES2Graphics;
    move-object/from16 v2, p2

    .local v2, "src":Lcom/sun/prism/RTTexture;
    move/from16 v3, p3

    .local v3, "dx1":F
    move/from16 v4, p4

    .local v4, "dy1":F
    move/from16 v5, p5

    .local v5, "dx2":F
    move/from16 v6, p6

    .local v6, "dy2":F
    move/from16 v7, p7

    .local v7, "sx1":F
    move/from16 v8, p8

    .local v8, "sy1":F
    move/from16 v9, p9

    .local v9, "sx2":F
    move/from16 v10, p10

    .local v10, "sy2":F
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2Graphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v12

    move-object v11, v12

    .line 160
    .local v11, "savedMode":Lcom/sun/prism/CompositeMode;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v12}, Lcom/sun/prism/PresentableState;->hasWindowManager()Z

    move-result v12

    if-nez v12, :cond_0

    .line 163
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v13}, Lcom/sun/prism/PresentableState;->getAlpha()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sun/prism/es2/ES2Graphics;->setExtraAlpha(F)V

    .line 164
    move-object v12, v1

    sget-object v13, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-virtual {v12, v13}, Lcom/sun/prism/es2/ES2Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 169
    :goto_0
    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v12 .. v21}, Lcom/sun/prism/es2/ES2Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 170
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 172
    move-object v12, v1

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/sun/prism/es2/ES2Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 173
    return-void

    .line 167
    :cond_0
    move-object v12, v1

    sget-object v13, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-virtual {v12, v13}, Lcom/sun/prism/es2/ES2Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createGraphics()Lcom/sun/prism/Graphics;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2SwapChain;->createGraphics()Lcom/sun/prism/es2/ES2Graphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return-object v0
.end method

.method public createGraphics()Lcom/sun/prism/es2/ES2Graphics;
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->drawable:Lcom/sun/prism/es2/GLDrawable;

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Context;->makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V

    .line 184
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v3}, Lcom/sun/prism/PresentableState;->getNativeFrameBuffer()I

    move-result v3

    iput v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->nativeDestHandle:I

    .line 185
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->nativeDestHandle:I

    if-nez v2, :cond_0

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v2

    move-object v1, v2

    .line 187
    .local v1, "glContext":Lcom/sun/prism/es2/GLContext;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLContext;->getBoundFBO()I

    move-result v3

    iput v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->nativeDestHandle:I

    .line 190
    .end local v1    # "glContext":Lcom/sun/prism/es2/GLContext;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v4}, Lcom/sun/prism/PresentableState;->getRenderWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v4}, Lcom/sun/prism/PresentableState;->getRenderHeight()I

    move-result v4

    if-eq v3, v4, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    .line 192
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    if-eqz v2, :cond_4

    .line 196
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_6

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 198
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    .line 207
    :goto_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v3}, Lcom/sun/prism/PresentableState;->getRenderWidth()I

    move-result v3

    iput v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    .line 208
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v3}, Lcom/sun/prism/PresentableState;->getRenderHeight()I

    move-result v3

    iput v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Context;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    move-object v1, v2

    .line 210
    .local v1, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/prism/es2/ES2SwapChain;->msaa:Z

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    .line 213
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-eqz v2, :cond_3

    .line 214
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 216
    :cond_3
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->copyFullBuffer:Z

    .line 218
    .end local v1    # "factory":Lcom/sun/prism/ResourceFactory;
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2Graphics;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/es2/ES2Graphics;

    move-result-object v2

    move-object v1, v2

    .line 219
    .local v1, "g":Lcom/sun/prism/es2/ES2Graphics;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->pixelScaleFactor:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/es2/ES2SwapChain;->pixelScaleFactor:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/ES2Graphics;->scale(FF)V

    .line 220
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return-object v0

    .line 190
    .end local v1    # "g":Lcom/sun/prism/es2/ES2Graphics;
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 205
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2Graphics;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/es2/ES2Graphics;

    move-result-object v2

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 275
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 276
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    .line 278
    :cond_0
    return-void
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return-object v0
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getOutputHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getOutputWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public getContentX()I
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->useEGL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getWindowX()I

    move-result v1

    move v0, v1

    .line 245
    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getContentY()I
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->useEGL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getScreenHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    .line 254
    invoke-virtual {v2}, Lcom/sun/prism/PresentableState;->getOutputHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v2}, Lcom/sun/prism/PresentableState;->getWindowY()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .line 256
    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getFboID()I
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->nativeDestHandle:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getOutputHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v1}, Lcom/sun/prism/PresentableState;->getOutputWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public getPixelScaleFactor()F
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->pixelScaleFactor:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->isMSAA()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->msaa:Z

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 73
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->isOpaque()Z

    move-result v1

    move v0, v1

    .line 75
    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2SwapChain;->opaque:Z

    move v0, v1

    goto :goto_0
.end method

.method public lockResources(Lcom/sun/prism/PresentableState;)Z
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v1, p1

    .local v1, "pState":Lcom/sun/prism/PresentableState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->pixelScaleFactor:F

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/PresentableState;->getRenderScale()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 115
    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :goto_0
    return v0

    .line 101
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/PresentableState;->getRenderWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/PresentableState;->getRenderHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    if-nez v2, :cond_4

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->lock()V

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    .line 112
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 101
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 115
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public prepare(Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 19

    .prologue
    .line 120
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object/from16 v2, p1

    .local v2, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/sun/prism/es2/ES2Graphics;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/es2/ES2Graphics;

    move-result-object v8

    move-object v3, v8

    .line 121
    .local v3, "g":Lcom/sun/prism/es2/ES2Graphics;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v8, :cond_1

    .line 122
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    if-eqz v8, :cond_0

    .line 123
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Graphics;->forceRenderTarget()V

    .line 124
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/prism/es2/ES2SwapChain;->needsResize:Z

    .line 128
    :cond_0
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v9}, Lcom/sun/prism/PresentableState;->getRenderWidth()I

    move-result v9

    iput v9, v8, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    .line 129
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v9}, Lcom/sun/prism/PresentableState;->getRenderHeight()I

    move-result v9

    iput v9, v8, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    .line 130
    move-object v8, v1

    iget v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->w:I

    move v4, v8

    .line 131
    .local v4, "sw":I
    move-object v8, v1

    iget v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->h:I

    move v5, v8

    .line 132
    .local v5, "sh":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v8}, Lcom/sun/prism/PresentableState;->getOutputWidth()I

    move-result v8

    move v6, v8

    .line 133
    .local v6, "dw":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->pState:Lcom/sun/prism/PresentableState;

    invoke-virtual {v8}, Lcom/sun/prism/PresentableState;->getOutputHeight()I

    move-result v8

    move v7, v8

    .line 134
    .local v7, "dh":I
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/prism/es2/ES2SwapChain;->copyFullBuffer:Z

    .line 135
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2SwapChain;->isMSAA()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 138
    move-object v8, v3

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v4

    move v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v8 .. v18}, Lcom/sun/prism/es2/ES2Graphics;->blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 144
    :goto_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v8}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 146
    .end local v4    # "sw":I
    .end local v5    # "sh":I
    .end local v6    # "dw":I
    .end local v7    # "dh":I
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2SwapChain;->drawable:Lcom/sun/prism/es2/GLDrawable;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    move v1, v8

    .line 151
    .end local v1    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    .end local v3    # "g":Lcom/sun/prism/es2/ES2Graphics;
    :goto_2
    return v1

    .line 141
    .restart local v1    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    .restart local v3    # "g":Lcom/sun/prism/es2/ES2Graphics;
    .restart local v4    # "sw":I
    .restart local v5    # "sh":I
    .restart local v6    # "dw":I
    .restart local v7    # "dh":I
    :cond_2
    move-object v8, v1

    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v6

    int-to-float v13, v13

    move v14, v7

    int-to-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v8 .. v18}, Lcom/sun/prism/es2/ES2SwapChain;->drawTexture(Lcom/sun/prism/es2/ES2Graphics;Lcom/sun/prism/RTTexture;FFFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v3    # "g":Lcom/sun/prism/es2/ES2Graphics;
    .end local v4    # "sw":I
    .end local v5    # "sh":I
    .end local v6    # "dw":I
    .end local v7    # "dh":I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 148
    .local v3, "th":Ljava/lang/Throwable;
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v8, :cond_3

    .line 149
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    :cond_3
    const/4 v8, 0x0

    move v1, v8

    goto :goto_2

    .line 146
    .local v3, "g":Lcom/sun/prism/es2/ES2Graphics;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public present()Z
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->drawable:Lcom/sun/prism/es2/GLDrawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLDrawable;->swapBuffers(Lcom/sun/prism/es2/GLContext;)Z

    move-result v2

    move v1, v2

    .line 177
    .local v1, "presented":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->context:Lcom/sun/prism/es2/ES2Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Context;->makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V

    .line 178
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2SwapChain;
    return v0
.end method

.method public setOpaque(Z)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2SwapChain;
    move v1, p1

    .local v1, "isOpaque":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_0

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2SwapChain;->stableBackbuffer:Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setOpaque(Z)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2SwapChain;->opaque:Z

    goto :goto_0
.end method

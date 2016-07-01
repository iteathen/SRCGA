.class public Lcom/sun/prism/es2/ES2Graphics;
.super Lcom/sun/prism/impl/ps/BaseShaderGraphics;
.source "ES2Graphics.java"


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;


# direct methods
.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v2, p2

    .local v2, "target":Lcom/sun/prism/RenderTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;-><init>(Lcom/sun/prism/impl/ps/BaseShaderContext;Lcom/sun/prism/RenderTarget;)V

    .line 43
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    .line 44
    return-void
.end method

.method static clearBuffers(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/paint/Color;ZZZ)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "color":Lcom/sun/prism/paint/Color;
    move v2, p2

    .local v2, "clearColor":Z
    move v3, p3

    .local v3, "clearDepth":Z
    move v4, p4

    .local v4, "ignoreScissor":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->clearBuffers(Lcom/sun/prism/paint/Color;ZZZ)V

    .line 58
    return-void
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/es2/ES2Graphics;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "target":Lcom/sun/prism/RenderTarget;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 48
    const/4 v2, 0x0

    move-object v0, v2

    .line 50
    .end local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    :cond_0
    new-instance v2, Lcom/sun/prism/es2/ES2Graphics;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/es2/ES2Graphics;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public clear(Lcom/sun/prism/paint/Color;)V
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, p1

    .local v1, "color":Lcom/sun/prism/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Context;->validateClearOp(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 79
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/paint/Color;->isOpaque()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sun/prism/RenderTarget;->setOpaque(Z)V

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Graphics;->isDepthBuffer()Z

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sun/prism/es2/ES2Graphics;->clearBuffers(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/paint/Color;ZZZ)V

    .line 82
    return-void
.end method

.method public clearQuad(FFFF)V
    .locals 12

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2Context;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 64
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 65
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Graphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v7

    move-object v5, v7

    .line 67
    .local v5, "mode":Lcom/sun/prism/CompositeMode;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    sget-object v8, Lcom/sun/prism/CompositeMode;->CLEAR:Lcom/sun/prism/CompositeMode;

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2Context;->updateCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 68
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Graphics;->getPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v7

    move-object v6, v7

    .line 69
    .local v6, "oldPaint":Lcom/sun/prism/paint/Paint;
    move-object v7, v0

    sget-object v8, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 70
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/prism/es2/ES2Graphics;->fillQuad(FFFF)V

    .line 71
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 72
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 74
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2Context;->updateCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 75
    return-void
.end method

.method forceRenderTarget()V
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/ES2Context;->forceRenderTarget(Lcom/sun/prism/es2/ES2Graphics;)V

    .line 96
    return-void
.end method

.method public scale(FFF)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move v1, p1

    .local v1, "sx":F
    move v2, p2

    .local v2, "sy":F
    move v3, p3

    .local v3, "sz":F
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/prism/GraphicsPipeline;->is3DSupported()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 124
    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scale(FFF)V

    .line 127
    goto :goto_0
.end method

.method public setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, p1

    .local v1, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline;->is3DSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 135
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 86
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Graphics;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->finish()V

    .line 87
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline;->is3DSupported()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 103
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 107
    goto :goto_0
.end method

.method public translate(FFF)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Graphics;
    move v1, p1

    .local v1, "tx":F
    move v2, p2

    .local v2, "ty":F
    move v3, p3

    .local v3, "tz":F
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/prism/GraphicsPipeline;->is3DSupported()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 114
    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->translate(FFF)V

    .line 117
    goto :goto_0
.end method

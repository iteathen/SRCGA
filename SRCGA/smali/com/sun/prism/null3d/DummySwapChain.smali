.class Lcom/sun/prism/null3d/DummySwapChain;
.super Lcom/sun/prism/null3d/DummyResource;
.source "DummySwapChain.java"

# interfaces
.implements Lcom/sun/prism/Presentable;


# instance fields
.field private h:I

.field private opaque:Z

.field private final pState:Lcom/sun/prism/PresentableState;

.field private final texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

.field private w:I


# direct methods
.method constructor <init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PresentableState;Lcom/sun/prism/null3d/DummyRTTexture;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "pState":Lcom/sun/prism/PresentableState;
    move-object v3, p3

    .local v3, "rtt":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/prism/null3d/DummyResource;-><init>(Lcom/sun/prism/null3d/DummyContext;)V

    .line 43
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/null3d/DummySwapChain;->pState:Lcom/sun/prism/PresentableState;

    .line 44
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/PresentableState;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/sun/prism/null3d/DummySwapChain;->w:I

    .line 45
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/PresentableState;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/sun/prism/null3d/DummySwapChain;->h:I

    .line 46
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/null3d/DummySwapChain;->texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

    .line 47
    return-void
.end method


# virtual methods
.method public createGraphics()Lcom/sun/prism/Graphics;
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/null3d/DummySwapChain;->context:Lcom/sun/prism/null3d/DummyContext;

    invoke-static {v1, v2}, Lcom/sun/prism/null3d/DummyGraphics;->create(Lcom/sun/prism/RenderTarget;Lcom/sun/prism/null3d/DummyContext;)Lcom/sun/prism/Graphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummyRTTexture;->dispose()V

    .line 52
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/null3d/DummyResource;->dispose()V

    .line 53
    return-void
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->context:Lcom/sun/prism/null3d/DummyContext;

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummyContext;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return-object v0
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummySwapChain;->getPhysicalHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummySwapChain;->getPhysicalWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getContentX()I
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getContentY()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->h:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->w:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public getPixelScaleFactor()F
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/null3d/DummySwapChain;->opaque:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public lockResources(Lcom/sun/prism/PresentableState;)Z
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, p1

    .local v1, "pState":Lcom/sun/prism/PresentableState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/null3d/DummySwapChain;->texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

    invoke-virtual {v2}, Lcom/sun/prism/null3d/DummyRTTexture;->lock()V

    .line 57
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public prepare(Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move-object v1, p1

    .local v1, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/null3d/DummySwapChain;->texBackBuffer:Lcom/sun/prism/null3d/DummyRTTexture;

    invoke-virtual {v2}, Lcom/sun/prism/null3d/DummyRTTexture;->unlock()V

    .line 62
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public present()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummySwapChain;
    return v0
.end method

.method public setOpaque(Z)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummySwapChain;
    move v1, p1

    .local v1, "opaque":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/null3d/DummySwapChain;->opaque:Z

    .line 111
    return-void
.end method

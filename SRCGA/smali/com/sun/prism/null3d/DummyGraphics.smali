.class Lcom/sun/prism/null3d/DummyGraphics;
.super Lcom/sun/prism/impl/ps/BaseShaderGraphics;
.source "DummyGraphics.java"


# direct methods
.method private constructor <init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/RenderTarget;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyGraphics;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "target":Lcom/sun/prism/RenderTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;-><init>(Lcom/sun/prism/impl/ps/BaseShaderContext;Lcom/sun/prism/RenderTarget;)V

    .line 37
    return-void
.end method

.method static create(Lcom/sun/prism/RenderTarget;Lcom/sun/prism/null3d/DummyContext;)Lcom/sun/prism/Graphics;
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "target":Lcom/sun/prism/RenderTarget;
    move-object v1, p1

    .local v1, "ctx":Lcom/sun/prism/null3d/DummyContext;
    new-instance v2, Lcom/sun/prism/null3d/DummyGraphics;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/null3d/DummyGraphics;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/RenderTarget;)V

    move-object v0, v2

    .end local v0    # "target":Lcom/sun/prism/RenderTarget;
    return-object v0
.end method


# virtual methods
.method public clear(Lcom/sun/prism/paint/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/sun/prism/paint/Color;

    .prologue
    .line 47
    return-void
.end method

.method public clearQuad(FFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 44
    return-void
.end method

.method public isState3D()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyGraphics;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyGraphics;
    return v0
.end method

.method public setState3D(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public setup3DRendering()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public sync()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

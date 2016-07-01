.class Lcom/sun/prism/null3d/DummyRTTexture;
.super Lcom/sun/prism/null3d/DummyTexture;
.source "DummyRTTexture.java"

# interfaces
.implements Lcom/sun/prism/RTTexture;


# instance fields
.field private opaque:Z


# direct methods
.method constructor <init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/Texture$WrapMode;II)V
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move v3, p3

    .local v3, "contentWidth":I
    move/from16 v4, p4

    .local v4, "contentHeight":I
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v8, v2

    move v9, v3

    move v10, v4

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/sun/prism/null3d/DummyTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)V

    .line 45
    return-void
.end method


# virtual methods
.method public createGraphics()Lcom/sun/prism/Graphics;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/null3d/DummyRTTexture;->getContext()Lcom/sun/prism/null3d/DummyContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/prism/null3d/DummyGraphics;->create(Lcom/sun/prism/RenderTarget;Lcom/sun/prism/null3d/DummyContext;)Lcom/sun/prism/Graphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return-object v0
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummyRTTexture;->getContext()Lcom/sun/prism/null3d/DummyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/null3d/DummyContext;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return-object v0
.end method

.method public getPixels()[I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return-object v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/null3d/DummyRTTexture;->opaque:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return v0
.end method

.method public isVolatile()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return v0
.end method

.method public readPixels(Ljava/nio/Buffer;)Z
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, p1

    .local v1, "pixels":Ljava/nio/Buffer;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return v0
.end method

.method public readPixels(Ljava/nio/Buffer;IIII)Z
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move-object v1, p1

    .local v1, "pixels":Ljava/nio/Buffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "width":I
    move v5, p5

    .local v5, "height":I
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyRTTexture;
    return v0
.end method

.method public setOpaque(Z)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyRTTexture;
    move v1, p1

    .local v1, "opaque":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/null3d/DummyRTTexture;->opaque:Z

    .line 100
    return-void
.end method

.method public update(Lcom/sun/prism/Image;)V
    .locals 0
    .param p1, "img"    # Lcom/sun/prism/Image;

    .prologue
    .line 69
    return-void
.end method

.method public update(Lcom/sun/prism/Image;II)V
    .locals 0
    .param p1, "img"    # Lcom/sun/prism/Image;
    .param p2, "dstx"    # I
    .param p3, "dsty"    # I

    .prologue
    .line 73
    return-void
.end method

.method public update(Lcom/sun/prism/Image;IIII)V
    .locals 0
    .param p1, "img"    # Lcom/sun/prism/Image;
    .param p2, "dstx"    # I
    .param p3, "dsty"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 77
    return-void
.end method

.method public update(Lcom/sun/prism/Image;IIIIZ)V
    .locals 0
    .param p1, "img"    # Lcom/sun/prism/Image;
    .param p2, "dstx"    # I
    .param p3, "dsty"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "skipFlush"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public update(Lcom/sun/prism/MediaFrame;Z)V
    .locals 0
    .param p1, "frame"    # Lcom/sun/prism/MediaFrame;
    .param p2, "skipFlush"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    .locals 0
    .param p1, "pixels"    # Ljava/nio/Buffer;
    .param p2, "format"    # Lcom/sun/prism/PixelFormat;
    .param p3, "dstx"    # I
    .param p4, "dsty"    # I
    .param p5, "srcx"    # I
    .param p6, "srcy"    # I
    .param p7, "srcw"    # I
    .param p8, "srch"    # I
    .param p9, "srcscan"    # I
    .param p10, "skipFlush"    # Z

    .prologue
    .line 89
    return-void
.end method

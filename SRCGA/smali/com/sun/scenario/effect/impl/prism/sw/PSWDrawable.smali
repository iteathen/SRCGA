.class public Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
.super Lcom/sun/scenario/effect/impl/prism/PrDrawable;
.source "PSWDrawable.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/HeapImage;


# instance fields
.field private heapDirty:Z

.field private image:Lcom/sun/prism/Image;

.field private rtt:Lcom/sun/prism/RTTexture;

.field private vramDirty:Z


# direct methods
.method private constructor <init>(Lcom/sun/prism/RTTexture;Z)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move v2, p2

    .local v2, "isDirty":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;-><init>(Lcom/sun/prism/RTTexture;)V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    .line 52
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->vramDirty:Z

    .line 53
    return-void
.end method

.method static create(Lcom/sun/glass/ui/Screen;II)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    .locals 10

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v5

    move-object v3, v5

    .line 76
    .local v3, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v5, v3

    move v6, v1

    move v7, v2

    sget-object v8, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    .line 77
    invoke-interface {v5, v6, v7, v8}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v5

    move-object v4, v5

    .line 78
    .local v4, "rtt":Lcom/sun/prism/RTTexture;
    new-instance v5, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;-><init>(Lcom/sun/prism/RTTexture;Z)V

    move-object v0, v5

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    return-object v0
.end method

.method public static create(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "rtt":Lcom/sun/prism/RTTexture;
    new-instance v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;-><init>(Lcom/sun/prism/RTTexture;Z)V

    move-object v0, v1

    .end local v0    # "rtt":Lcom/sun/prism/RTTexture;
    return-object v0
.end method

.method static getCompatibleHeight(Lcom/sun/glass/ui/Screen;I)I
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    move v1, p1

    .local v1, "h":I
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v3

    move-object v2, v3

    .line 68
    .local v2, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v3, v2

    move v4, v1

    sget-object v5, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v3, v4, v5}, Lcom/sun/prism/ResourceFactory;->getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v3

    move v0, v3

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method static getCompatibleWidth(Lcom/sun/glass/ui/Screen;I)I
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    move v1, p1

    .local v1, "w":I
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v3

    move-object v2, v3

    .line 62
    .local v2, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v3, v2

    move v4, v1

    sget-object v5, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v3, v4, v5}, Lcom/sun/prism/ResourceFactory;->getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v3

    move v0, v3

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v3

    move-object v1, v3

    .line 188
    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->clear()V

    .line 189
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    if-eqz v3, :cond_0

    .line 190
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    invoke-virtual {v3}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object v2, v3

    .line 191
    .local v2, "buf":Ljava/nio/IntBuffer;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 193
    .end local v2    # "buf":Ljava/nio/IntBuffer;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->heapDirty:Z

    .line 194
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->vramDirty:Z

    .line 195
    return-void
.end method

.method public createGraphics()Lcom/sun/prism/Graphics;
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->vramDirty:Z

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 87
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    .line 91
    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getPixelArray()[I
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->getPixels()[I

    move-result-object v4

    move-object v1, v4

    .line 139
    .local v1, "pixels":[I
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 140
    move-object v4, v1

    move-object v0, v4

    .line 155
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    :goto_0
    return-object v0

    .line 142
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    if-nez v4, :cond_1

    .line 143
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v4

    move v2, v4

    .line 144
    .local v2, "width":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v4

    move v3, v4

    .line 145
    .local v3, "height":I
    move v4, v2

    move v5, v3

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    move-object v1, v4

    .line 146
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Lcom/sun/prism/Image;->fromIntArgbPreData([III)Lcom/sun/prism/Image;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    .line 148
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    invoke-virtual {v4}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/IntBuffer;

    move-object v2, v4

    .line 149
    .local v2, "buf":Ljava/nio/IntBuffer;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->vramDirty:Z

    if-eqz v4, :cond_2

    .line 151
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/prism/RTTexture;->readPixels(Ljava/nio/Buffer;)Z

    move-result v4

    .line 152
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->vramDirty:Z

    .line 154
    :cond_2
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->heapDirty:Z

    .line 155
    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getScanlineStride()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0
.end method

.method public getTextureObject()Lcom/sun/prism/RTTexture;
    .locals 13

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->heapDirty:Z

    if-eqz v7, :cond_0

    .line 164
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v7}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v7

    move v1, v7

    .line 165
    .local v1, "width":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v7}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v7

    move v2, v7

    .line 166
    .local v2, "height":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v7}, Lcom/sun/prism/RTTexture;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v7

    move-object v3, v7

    .line 168
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/prism/GraphicsPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v7

    move-object v4, v7

    .line 169
    .local v4, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->image:Lcom/sun/prism/Image;

    sget-object v9, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v10, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 170
    invoke-interface {v7, v8, v9, v10}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v7

    move-object v5, v7

    .line 171
    .local v5, "tex":Lcom/sun/prism/Texture;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v7

    move-object v6, v7

    .line 172
    .local v6, "g":Lcom/sun/prism/Graphics;
    move-object v7, v6

    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v1

    int-to-float v11, v11

    move v12, v2

    int-to-float v12, v12

    invoke-interface/range {v7 .. v12}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 173
    move-object v7, v6

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->sync()V

    .line 174
    move-object v7, v5

    invoke-interface {v7}, Lcom/sun/prism/Texture;->dispose()V

    .line 175
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->heapDirty:Z

    .line 177
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v4    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v5    # "tex":Lcom/sun/prism/Texture;
    .end local v6    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return-object v0
.end method

.method public bridge synthetic getTextureObject()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->getTextureObject()Lcom/sun/prism/RTTexture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return-object v0
.end method

.method public isLost()Z
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move v1, p1

    .local v1, "contentH":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentHeight(I)V

    .line 119
    return-void
.end method

.method public setContentWidth(I)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;
    move v1, p1

    .local v1, "contentW":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/sw/PSWDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentWidth(I)V

    .line 115
    return-void
.end method

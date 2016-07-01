.class public Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
.super Lcom/sun/scenario/effect/impl/prism/PrDrawable;
.source "PPSDrawable.java"


# instance fields
.field private rtt:Lcom/sun/prism/RTTexture;


# direct methods
.method private constructor <init>(Lcom/sun/prism/RTTexture;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;-><init>(Lcom/sun/prism/RTTexture;)V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    .line 41
    return-void
.end method

.method static create(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "rtt":Lcom/sun/prism/RTTexture;
    new-instance v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;-><init>(Lcom/sun/prism/RTTexture;)V

    move-object v0, v1

    .end local v0    # "rtt":Lcom/sun/prism/RTTexture;
    return-object v0
.end method

.method static create(Lcom/sun/prism/ResourceFactory;II)Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "factory":Lcom/sun/prism/ResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    sget-object v7, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    .line 59
    invoke-interface {v4, v5, v6, v7}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v4

    move-object v3, v4

    .line 60
    .local v3, "rtt":Lcom/sun/prism/RTTexture;
    new-instance v4, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;-><init>(Lcom/sun/prism/RTTexture;)V

    move-object v0, v4

    .end local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    return-object v0
.end method

.method static getCompatibleHeight(Lcom/sun/prism/ResourceFactory;I)I
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "factory":Lcom/sun/prism/ResourceFactory;
    move v1, p1

    .local v1, "h":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ResourceFactory;->getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v2

    move v0, v2

    .end local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    return v0
.end method

.method static getCompatibleWidth(Lcom/sun/prism/ResourceFactory;I)I
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "factory":Lcom/sun/prism/ResourceFactory;
    move v1, p1

    .local v1, "w":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v2, v3, v4}, Lcom/sun/prism/ResourceFactory;->getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I

    move-result v2

    move v0, v2

    .end local v0    # "factory":Lcom/sun/prism/ResourceFactory;
    return v0
.end method


# virtual methods
.method public bridge synthetic createGraphics()Lcom/sun/prism/Graphics;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->createGraphics()Lcom/sun/prism/ps/ShaderGraphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return-object v0
.end method

.method public createGraphics()Lcom/sun/prism/ps/ShaderGraphics;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/ps/ShaderGraphics;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    .line 72
    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0
.end method

.method public isLost()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move v1, p1

    .local v1, "contentH":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentHeight(I)V

    .line 100
    return-void
.end method

.method public setContentWidth(I)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;
    move v1, p1

    .local v1, "contentW":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/prism/ps/PPSDrawable;->rtt:Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentWidth(I)V

    .line 96
    return-void
.end method

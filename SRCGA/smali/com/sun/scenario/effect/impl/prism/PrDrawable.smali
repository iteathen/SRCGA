.class public abstract Lcom/sun/scenario/effect/impl/prism/PrDrawable;
.super Lcom/sun/scenario/effect/impl/prism/PrTexture;
.source "PrDrawable.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/PoolFilterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/impl/prism/PrTexture",
        "<",
        "Lcom/sun/prism/RTTexture;",
        ">;",
        "Lcom/sun/scenario/effect/impl/PoolFilterable;"
    }
.end annotation


# instance fields
.field private pool:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/scenario/effect/impl/ImagePool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/prism/RTTexture;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/impl/prism/PrTexture;-><init>(Lcom/sun/prism/Texture;)V

    .line 45
    return-void
.end method

.method public static create(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "rtt":Lcom/sun/prism/RTTexture;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/impl/prism/PrRenderer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/prism/PrRenderer;->createDrawable(Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v2

    move-object v1, v2

    .line 81
    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->clear()V

    .line 82
    return-void
.end method

.method public abstract createGraphics()Lcom/sun/prism/Graphics;
.end method

.method public getImagePool()Lcom/sun/scenario/effect/impl/ImagePool;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->pool:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->pool:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/ImagePool;

    goto :goto_0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->getMaxContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    return v0
.end method

.method public getPixelScale()F
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    return v0
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move v1, p1

    .local v1, "contentH":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentHeight(I)V

    .line 75
    return-void
.end method

.method public setContentWidth(I)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move v1, p1

    .local v1, "contentW":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/RTTexture;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/RTTexture;->setContentWidth(I)V

    .line 71
    return-void
.end method

.method public setImagePool(Lcom/sun/scenario/effect/impl/ImagePool;)V
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v1, p1

    .local v1, "pool":Lcom/sun/scenario/effect/impl/ImagePool;
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->pool:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

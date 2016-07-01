.class public Lcom/sun/scenario/effect/impl/state/BoxBlurState;
.super Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
.source "BoxBlurState.java"


# instance fields
.field private blurPasses:I

.field private hsize:I

.field private vsize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurPasses()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->blurPasses:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0
.end method

.method public getHsize()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->hsize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0
.end method

.method public getKernelSize(I)I
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move v1, p1

    .local v1, "pass":I
    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->hsize:I

    :goto_0
    move v2, v3

    .line 95
    .local v2, "ksize":I
    move v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .line 96
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->blurPasses:I

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 97
    move v3, v2

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 98
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0

    .line 94
    .end local v2    # "ksize":I
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->vsize:I

    goto :goto_0
.end method

.method public getRenderState(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    .locals 12

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, p1

    .local v1, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/scenario/effect/impl/state/BoxRenderState;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->hsize:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->vsize:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->blurPasses:I

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getSpread()F

    move-result v7

    move-object v8, v0

    .line 84
    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->isShadow()Z

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v9

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;-><init>(FFIFZLcom/sun/scenario/effect/Color4f;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return-object v0
.end method

.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0
.end method

.method public getVsize()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->vsize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0
.end method

.method public isNop()Z
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->blurPasses:I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->hsize:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->vsize:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBlurPasses(I)V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move v1, p1

    .local v1, "blurPasses":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Number of passes must be in the range [0,3]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->blurPasses:I

    .line 71
    return-void
.end method

.method public setHsize(I)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move v1, p1

    .local v1, "hsize":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Blur size must be in the range [0,255]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->hsize:I

    .line 49
    return-void
.end method

.method public setVsize(I)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxBlurState;
    move v1, p1

    .local v1, "vsize":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Blur size must be in the range [0,255]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/BoxBlurState;->vsize:I

    .line 60
    return-void
.end method

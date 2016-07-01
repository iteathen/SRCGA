.class public Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
.super Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
.source "GaussianBlurState.java"


# instance fields
.field private hradius:F

.field private vradius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;-><init>()V

    return-void
.end method


# virtual methods
.method checkRadius(F)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x427c0000    # 63.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Radius must be in the range [1,63]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    return-void
.end method

.method public getHRadius()F
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method public getKernelSize(I)I
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "pass":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getPad(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method public getPad(I)I
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "pass":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getRadius(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method getRadius(I)F
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "pass":I
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    goto :goto_0
.end method

.method public getRenderState(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    .locals 11

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, p1

    .local v1, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getSpread()F

    move-result v6

    move-object v7, v0

    instance-of v7, v7, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;

    move-object v8, v0

    .line 102
    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->getShadowColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v8

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;-><init>(FFFZLcom/sun/scenario/effect/Color4f;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return-object v0
.end method

.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method public getVRadius()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0
.end method

.method public isNop()Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHRadius(F)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "hradius":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->checkRadius(F)V

    .line 61
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    .line 62
    return-void
.end method

.method public setRadius(F)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->checkRadius(F)V

    .line 51
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->hradius:F

    .line 52
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    .line 53
    return-void
.end method

.method public setVRadius(F)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
    move v1, p1

    .local v1, "vradius":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->checkRadius(F)V

    .line 70
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;->vradius:F

    .line 71
    return-void
.end method

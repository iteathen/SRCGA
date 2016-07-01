.class public Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
.super Lcom/sun/scenario/effect/impl/state/GaussianBlurState;
.source "GaussianShadowState.java"


# instance fields
.field private shadowColor:Lcom/sun/scenario/effect/Color4f;

.field private spread:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/GaussianBlurState;-><init>()V

    return-void
.end method


# virtual methods
.method checkRadius(F)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x42fe0000    # 127.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Radius must be in the range [1,127]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    return-void
.end method

.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->spread:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    return v0
.end method

.method public isNop()Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    return v0
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    return v0
.end method

.method public setShadowColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move-object v1, p1

    .local v1, "shadowColor":Lcom/sun/scenario/effect/Color4f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Color must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 58
    return-void
.end method

.method public setSpread(F)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianShadowState;
    move v1, p1

    .local v1, "spread":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Spread must be in the range [0,1]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/GaussianShadowState;->spread:F

    .line 70
    return-void
.end method

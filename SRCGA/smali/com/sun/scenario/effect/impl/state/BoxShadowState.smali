.class public Lcom/sun/scenario/effect/impl/state/BoxShadowState;
.super Lcom/sun/scenario/effect/impl/state/BoxBlurState;
.source "BoxShadowState.java"


# instance fields
.field private shadowColor:Lcom/sun/scenario/effect/Color4f;

.field private spread:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/BoxBlurState;-><init>()V

    return-void
.end method


# virtual methods
.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->spread:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    return v0
.end method

.method public isNop()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    return v0
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    return v0
.end method

.method public setShadowColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
    move-object v1, p1

    .local v1, "shadowColor":Lcom/sun/scenario/effect/Color4f;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Color must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 51
    return-void
.end method

.method public setSpread(F)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxShadowState;
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

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Spread must be in the range [0,1]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/BoxShadowState;->spread:F

    .line 63
    return-void
.end method

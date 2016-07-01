.class public Lcom/sun/scenario/effect/GeneralShadow;
.super Lcom/sun/scenario/effect/DelegateEffect;
.source "GeneralShadow.java"


# instance fields
.field private shadow:Lcom/sun/scenario/effect/AbstractShadow;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/GeneralShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/GeneralShadow;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/DelegateEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 62
    move-object v2, v0

    new-instance v3, Lcom/sun/scenario/effect/GaussianShadow;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/high16 v5, 0x41200000    # 10.0f

    sget-object v6, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(FLcom/sun/scenario/effect/Color4f;Lcom/sun/scenario/effect/Effect;)V

    iput-object v3, v2, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 63
    return-void
.end method


# virtual methods
.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return-object v0
.end method

.method protected getDelegate()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return-object v0
.end method

.method public getGaussianHeight()F
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return v0
.end method

.method public getGaussianRadius()F
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return v0
.end method

.method public getGaussianWidth()F
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return-object v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return v0
.end method

.method public getShadowMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/GeneralShadow;
    return v0
.end method

.method public setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v3

    move-object v2, v3

    .line 209
    .local v2, "old":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 210
    return-void
.end method

.method public setGaussianHeight(F)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move v1, p1

    .local v1, "h":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v3

    move v2, v3

    .line 147
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianHeight(F)V

    .line 148
    return-void
.end method

.method public setGaussianRadius(F)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move v1, p1

    .local v1, "r":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/GeneralShadow;->setRadius(F)V

    .line 138
    return-void
.end method

.method public setGaussianWidth(F)V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move v1, p1

    .local v1, "w":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v3

    move v2, v3

    .line 142
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianWidth(F)V

    .line 143
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/AbstractShadow;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 95
    return-void
.end method

.method public setRadius(F)V
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v3

    move v2, v3

    .line 121
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianRadius(F)V

    .line 122
    return-void
.end method

.method public setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v3

    move-object v2, v3

    .line 71
    .local v2, "old":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/AbstractShadow;->implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 72
    return-void
.end method

.method public setSpread(F)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/GeneralShadow;
    move v1, p1

    .local v1, "spread":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v3

    move v2, v3

    .line 183
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/GeneralShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setSpread(F)V

    .line 184
    return-void
.end method

.class public Lcom/sun/scenario/effect/DropShadow;
.super Lcom/sun/scenario/effect/DelegateEffect;
.source "DropShadow.java"


# instance fields
.field private final merge:Lcom/sun/scenario/effect/Merge;

.field private final offset:Lcom/sun/scenario/effect/Offset;

.field private shadow:Lcom/sun/scenario/effect/AbstractShadow;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/DropShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    sget-object v3, Lcom/sun/scenario/effect/DropShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/DropShadow;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/DropShadow;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "shadowSourceInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/DelegateEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 93
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/GaussianShadow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/high16 v6, 0x41200000    # 10.0f

    sget-object v7, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(FLcom/sun/scenario/effect/Color4f;Lcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 94
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/Offset;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/Offset;-><init>(IILcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    .line 95
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/Merge;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/Merge;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/DropShadow;->merge:Lcom/sun/scenario/effect/Merge;

    .line 96
    return-void
.end method


# virtual methods
.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/AbstractShadow;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method public final getContentInput()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->merge:Lcom/sun/scenario/effect/Merge;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Merge;->getTopInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method protected getDelegate()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->merge:Lcom/sun/scenario/effect/Merge;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method public getGaussianHeight()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getGaussianRadius()F
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getGaussianWidth()F
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getOffsetX()I
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getOffsetY()I
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Offset;->getY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public getShadowMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method public final getShadowSourceInput()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/DropShadow;
    return v0
.end method

.method public setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v3

    move-object v2, v3

    .line 265
    .local v2, "old":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 266
    return-void
.end method

.method public setContentInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/DropShadow;->merge:Lcom/sun/scenario/effect/Merge;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Merge;->setTopInput(Lcom/sun/scenario/effect/Effect;)V

    .line 151
    return-void
.end method

.method public setGaussianHeight(F)V
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "h":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v3

    move v2, v3

    .line 203
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianHeight(F)V

    .line 204
    return-void
.end method

.method public setGaussianRadius(F)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "r":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/DropShadow;->setRadius(F)V

    .line 194
    return-void
.end method

.method public setGaussianWidth(F)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "w":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v3

    move v2, v3

    .line 198
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianWidth(F)V

    .line 199
    return-void
.end method

.method public setOffsetX(I)V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "xoff":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Offset;->getX()I

    move-result v3

    move v2, v3

    .line 290
    .local v2, "old":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Offset;->setX(I)V

    .line 291
    return-void
.end method

.method public setOffsetY(I)V
    .locals 5

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "yoff":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Offset;->getY()I

    move-result v3

    move v2, v3

    .line 315
    .local v2, "old":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Offset;->setY(I)V

    .line 316
    return-void
.end method

.method public setRadius(F)V
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v3

    move v2, v3

    .line 177
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianRadius(F)V

    .line 178
    return-void
.end method

.method public setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v4}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v4

    move-object v2, v4

    .line 104
    .local v2, "old":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/AbstractShadow;->implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;

    move-result-object v4

    move-object v3, v4

    .line 105
    .local v3, "s":Lcom/sun/scenario/effect/AbstractShadow;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    if-eq v4, v5, :cond_0

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/DropShadow;->offset:Lcom/sun/scenario/effect/Offset;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/Offset;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 108
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 109
    return-void
.end method

.method public setShadowSourceInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move-object v1, p1

    .local v1, "shadowSourceInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/AbstractShadow;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 132
    return-void
.end method

.method public setSpread(F)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/DropShadow;
    move v1, p1

    .local v1, "spread":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v3

    move v2, v3

    .line 239
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/DropShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setSpread(F)V

    .line 240
    return-void
.end method

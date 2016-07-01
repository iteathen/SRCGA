.class public Lcom/sun/scenario/effect/InnerShadow;
.super Lcom/sun/scenario/effect/DelegateEffect;
.source "InnerShadow.java"


# instance fields
.field private final blend:Lcom/sun/scenario/effect/Blend;

.field private final invert:Lcom/sun/scenario/effect/InvertMask;

.field private shadow:Lcom/sun/scenario/effect/AbstractShadow;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/InnerShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    sget-object v3, Lcom/sun/scenario/effect/InnerShadow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/InnerShadow;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/InnerShadow;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 10

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "shadowSourceInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/DelegateEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 97
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/InvertMask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0xa

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/InvertMask;-><init>(ILcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    .line 98
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/GaussianShadow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/high16 v6, 0x41200000    # 10.0f

    sget-object v7, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/GaussianShadow;-><init>(FLcom/sun/scenario/effect/Color4f;Lcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 99
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/Blend;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lcom/sun/scenario/effect/Blend$Mode;->SRC_ATOP:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/InnerShadow;->blend:Lcom/sun/scenario/effect/Blend;

    .line 100
    return-void
.end method


# virtual methods
.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/InnerShadow;->getContentInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/scenario/effect/InnerShadow;->getDefaultedInput(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    move-object v3, v4

    .line 124
    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public getChoke()F
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public final getContentInput()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->blend:Lcom/sun/scenario/effect/Blend;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getBottomInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method protected getDelegate()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->blend:Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public getGaussianHeight()F
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getGaussianRadius()F
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getGaussianWidth()F
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getOffsetX()I
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/InvertMask;->getOffsetX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getOffsetY()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/InvertMask;->getOffsetY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return v0
.end method

.method public getShadowMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public final getShadowSourceInput()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/InvertMask;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public setChoke(F)V
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v1, p1

    .local v1, "choke":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getSpread()F

    move-result v3

    move v2, v3

    .line 258
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setSpread(F)V

    .line 259
    return-void
.end method

.method public setColor(Lcom/sun/scenario/effect/Color4f;)V
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v3

    move-object v2, v3

    .line 284
    .local v2, "old":Lcom/sun/scenario/effect/Color4f;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 285
    return-void
.end method

.method public setContentInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "contentInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/InnerShadow;->blend:Lcom/sun/scenario/effect/Blend;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Blend;->setBottomInput(Lcom/sun/scenario/effect/Effect;)V

    .line 165
    return-void
.end method

.method public setGaussianHeight(F)V
    .locals 8

    .prologue
    .line 219
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v2, p1

    .local v2, "h":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v5}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v5

    move v3, v5

    .line 220
    .local v3, "old":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v5}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v5

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v4, v5

    .line 221
    .local v4, "maxr":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/InvertMask;->setPad(I)V

    .line 222
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianHeight(F)V

    .line 223
    return-void
.end method

.method public setGaussianRadius(F)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v1, p1

    .local v1, "r":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/InnerShadow;->setRadius(F)V

    .line 209
    return-void
.end method

.method public setGaussianWidth(F)V
    .locals 8

    .prologue
    .line 212
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v2, p1

    .local v2, "w":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v5}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianWidth()F

    move-result v5

    move v3, v5

    .line 213
    .local v3, "old":F
    move v5, v2

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v6}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v4, v5

    .line 214
    .local v4, "maxr":F
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/InvertMask;->setPad(I)V

    .line 215
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianWidth(F)V

    .line 216
    return-void
.end method

.method public setOffsetX(I)V
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v1, p1

    .local v1, "xoff":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/InvertMask;->getOffsetX()I

    move-result v3

    move v2, v3

    .line 309
    .local v2, "old":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InvertMask;->setOffsetX(I)V

    .line 310
    return-void
.end method

.method public setOffsetY(I)V
    .locals 5

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v1, p1

    .local v1, "yoff":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/InvertMask;->getOffsetY()I

    move-result v3

    move v2, v3

    .line 334
    .local v2, "old":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InvertMask;->setOffsetY(I)V

    .line 335
    return-void
.end method

.method public setRadius(F)V
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move v1, p1

    .local v1, "radius":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/AbstractShadow;->getGaussianRadius()F

    move-result v3

    move v2, v3

    .line 191
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InvertMask;->setPad(I)V

    .line 192
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/AbstractShadow;->setGaussianRadius(F)V

    .line 193
    return-void
.end method

.method public setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    invoke-virtual {v4}, Lcom/sun/scenario/effect/AbstractShadow;->getMode()Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v4

    move-object v2, v4

    .line 108
    .local v2, "old":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/AbstractShadow;->implFor(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)Lcom/sun/scenario/effect/AbstractShadow;

    move-result-object v4

    move-object v3, v4

    .line 109
    .local v3, "s":Lcom/sun/scenario/effect/AbstractShadow;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    if-eq v4, v5, :cond_0

    .line 110
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/InnerShadow;->blend:Lcom/sun/scenario/effect/Blend;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/Blend;->setTopInput(Lcom/sun/scenario/effect/Effect;)V

    .line 112
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/scenario/effect/InnerShadow;->shadow:Lcom/sun/scenario/effect/AbstractShadow;

    .line 113
    return-void
.end method

.method public setShadowSourceInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "shadowSourceInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/InnerShadow;->invert:Lcom/sun/scenario/effect/InvertMask;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/InvertMask;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 145
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/InnerShadow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InnerShadow;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/InnerShadow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/InnerShadow;
    return-object v0
.end method

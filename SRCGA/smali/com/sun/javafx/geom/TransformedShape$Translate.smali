.class final Lcom/sun/javafx/geom/TransformedShape$Translate;
.super Lcom/sun/javafx/geom/TransformedShape;
.source "TransformedShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/TransformedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Translate"
.end annotation


# instance fields
.field private cachedTx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private final tx:F

.field private final ty:F


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Shape;FF)V
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move-object v1, p1

    .local v1, "delegate":Lcom/sun/javafx/geom/Shape;
    move v2, p2

    .local v2, "tx":F
    move v3, p3

    .local v3, "ty":F
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/TransformedShape;-><init>(Lcom/sun/javafx/geom/Shape;)V

    .line 209
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    .line 210
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    .line 211
    return-void
.end method


# virtual methods
.method public adjust(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    float-to-double v2, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    .line 225
    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    float-to-double v3, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    float-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 7

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/TransformedShape$Translate;->delegate:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    sub-float/2addr v4, v5

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    return v0
.end method

.method public contains(FFFF)Z
    .locals 10

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/TransformedShape$Translate;->delegate:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    sub-float/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    sub-float/2addr v7, v8

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    return v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/TransformedShape$Translate;->delegate:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v1, v2

    .line 232
    .local v1, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    add-float/2addr v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    add-float/2addr v4, v5

    move-object v5, v1

    .line 233
    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    add-float/2addr v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    add-float/2addr v6, v7

    .line 232
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 235
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    return-object v0
.end method

.method public getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape$Translate;->cachedTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-nez v1, :cond_0

    .line 216
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    float-to-double v2, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/geom/TransformedShape$Translate;->cachedTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 218
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape$Translate;->cachedTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    return-object v0
.end method

.method public intersects(FFFF)Z
    .locals 10

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/TransformedShape$Translate;->delegate:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/TransformedShape$Translate;->tx:F

    sub-float/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/TransformedShape$Translate;->ty:F

    sub-float/2addr v7, v8

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$Translate;
    return v0
.end method

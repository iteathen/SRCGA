.class public abstract Lcom/sun/javafx/geom/TransformedShape;
.super Lcom/sun/javafx/geom/Shape;
.source "TransformedShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/TransformedShape$Translate;,
        Lcom/sun/javafx/geom/TransformedShape$General;
    }
.end annotation


# instance fields
.field private cachedTransformedShape:Lcom/sun/javafx/geom/Shape;

.field protected final delegate:Lcom/sun/javafx/geom/Shape;


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/geom/Shape;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, p1

    .local v1, "delegate":Lcom/sun/javafx/geom/Shape;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 88
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    .line 89
    return-void
.end method

.method private getCachedTransformedShape()Lcom/sun/javafx/geom/Shape;
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape;->cachedTransformedShape:Lcom/sun/javafx/geom/Shape;

    if-nez v1, :cond_0

    .line 148
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/TransformedShape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/geom/TransformedShape;->cachedTransformedShape:Lcom/sun/javafx/geom/Shape;

    .line 150
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape;->cachedTransformedShape:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public static transformedShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/TransformedShape;
    .locals 9

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "original":Lcom/sun/javafx/geom/Shape;
    move-object v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/TransformedShape;->translatedShape(Lcom/sun/javafx/geom/Shape;DD)Lcom/sun/javafx/geom/TransformedShape;

    move-result-object v3

    move-object v1, v3

    .line 64
    .end local v1    # "original":Lcom/sun/javafx/geom/Shape;
    :goto_0
    return-object v1

    .restart local v1    # "original":Lcom/sun/javafx/geom/Shape;
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/TransformedShape$General;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/TransformedShape$General;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static translatedShape(Lcom/sun/javafx/geom/Shape;DD)Lcom/sun/javafx/geom/TransformedShape;
    .locals 13

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "original":Lcom/sun/javafx/geom/Shape;
    move-wide v2, p1

    .local v2, "tx":D
    move-wide/from16 v4, p3

    .local v4, "ty":D
    new-instance v6, Lcom/sun/javafx/geom/TransformedShape$Translate;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-wide v9, v2

    double-to-float v9, v9

    move-wide v10, v4

    double-to-float v10, v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/geom/TransformedShape$Translate;-><init>(Lcom/sun/javafx/geom/Shape;FF)V

    move-object v1, v6

    .end local v1    # "original":Lcom/sun/javafx/geom/Shape;
    return-object v1
.end method


# virtual methods
.method public abstract adjust(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public contains(FF)Z
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/TransformedShape;->untransform(FF)Lcom/sun/javafx/geom/Point2D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Shape;->contains(Lcom/sun/javafx/geom/Point2D;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return v0
.end method

.method public contains(FFFF)Z
    .locals 10

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/TransformedShape;->getCachedTransformedShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/Shape;
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/TransformedShape;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object v1, v2

    .line 128
    .local v1, "box":[F
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/TransformedShape;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 129
    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public getDelegateNoClone()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/TransformedShape;->adjust(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/TransformedShape;->delegate:Lcom/sun/javafx/geom/Shape;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/TransformedShape;->adjust(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0
.end method

.method public abstract getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public intersects(FFFF)Z
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/TransformedShape;->getCachedTransformedShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return v0
.end method

.method protected untransform(FF)Lcom/sun/javafx/geom/Point2D;
    .locals 10

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    new-instance v5, Lcom/sun/javafx/geom/Point2D;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v3, v5

    .line 108
    .local v3, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lcom/sun/javafx/geom/TransformedShape;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    move-object v6, v3

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 112
    .line 113
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    return-object v0

    .line 109
    .restart local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method

.method protected untransformedBounds(FFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 15

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    new-instance v7, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v3

    add-float/2addr v11, v12

    move v12, v2

    move v13, v4

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v5, v7

    .line 119
    .local v5, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lcom/sun/javafx/geom/TransformedShape;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v7

    move-object v8, v5

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    .line 121
    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    :goto_0
    return-object v0

    .line 120
    .restart local v0    # "this":Lcom/sun/javafx/geom/TransformedShape;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 121
    .local v6, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

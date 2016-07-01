.class public Lcom/sun/javafx/geom/GeneralShapePair;
.super Lcom/sun/javafx/geom/ShapePair;
.source "GeneralShapePair.java"


# instance fields
.field private final combinationType:I

.field private final inner:Lcom/sun/javafx/geom/Shape;

.field private final outer:Lcom/sun/javafx/geom/Shape;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/Shape;
    move v3, p3

    .local v3, "combinationType":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/ShapePair;-><init>()V

    .line 46
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    .line 47
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    .line 48
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    .line 49
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 76
    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :goto_1
    return v0

    .line 74
    .restart local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public contains(FFFF)Z
    .locals 10

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 92
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 94
    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :goto_1
    return v0

    .line 92
    .restart local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 94
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public copy()Lcom/sun/javafx/geom/Shape;
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    new-instance v1, Lcom/sun/javafx/geom/GeneralShapePair;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Shape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Shape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/geom/GeneralShapePair;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return-object v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v1, v2

    .line 101
    .local v1, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 102
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 104
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return-object v0
.end method

.method public final getCombinationType()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return v0
.end method

.method public final getInnerShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return-object v0
.end method

.method public final getOuterShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/FlatteningPathIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/GeneralShapePair;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    return-object v0
.end method

.method public intersects(FFFF)Z
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/GeneralShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->combinationType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 83
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 85
    .end local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :goto_1
    return v0

    .line 83
    .restart local v0    # "this":Lcom/sun/javafx/geom/GeneralShapePair;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 85
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/GeneralShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

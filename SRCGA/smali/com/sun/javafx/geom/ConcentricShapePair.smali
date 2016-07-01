.class public final Lcom/sun/javafx/geom/ConcentricShapePair;
.super Lcom/sun/javafx/geom/ShapePair;
.source "ConcentricShapePair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    }
.end annotation


# instance fields
.field private final inner:Lcom/sun/javafx/geom/Shape;

.field private final outer:Lcom/sun/javafx/geom/Shape;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/Shape;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/geom/ShapePair;-><init>()V

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    .line 47
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    .line 48
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public contains(FFFF)Z
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/sun/javafx/geom/Shape;
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    new-instance v1, Lcom/sun/javafx/geom/ConcentricShapePair;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Shape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Shape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/geom/ConcentricShapePair;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public getCombinationType()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return v0
.end method

.method public getInnerShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public getOuterShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move-object v6, v1

    .line 93
    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathIterator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move-object v7, v1

    move v8, v2

    .line 99
    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathIterator;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return-object v0
.end method

.method public intersects(FFFF)Z
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->outer:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/ConcentricShapePair;->inner:Lcom/sun/javafx/geom/Shape;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->contains(FFFF)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

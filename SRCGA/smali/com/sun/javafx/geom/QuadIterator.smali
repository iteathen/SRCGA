.class Lcom/sun/javafx/geom/QuadIterator;
.super Ljava/lang/Object;
.source "QuadIterator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# instance fields
.field index:I

.field quad:Lcom/sun/javafx/geom/QuadCurve2D;

.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/QuadCurve2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadIterator;
    move-object v1, p1

    .local v1, "q":Lcom/sun/javafx/geom/QuadCurve2D;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    .line 45
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/QuadIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 46
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 10

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/QuadIterator;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "quad iterator iterator out of bounds"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/QuadIterator;->index:I

    if-nez v3, :cond_2

    .line 99
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    aput v5, v3, v4

    .line 100
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    aput v5, v3, v4

    .line 101
    const/4 v3, 0x0

    move v2, v3

    .line 109
    .local v2, "type":I
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/QuadIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v3, :cond_1

    .line 110
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/QuadIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/QuadIterator;->index:I

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual/range {v3 .. v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 112
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadIterator;
    return v0

    .line 103
    .end local v2    # "type":I
    .restart local v0    # "this":Lcom/sun/javafx/geom/QuadIterator;
    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    aput v5, v3, v4

    .line 104
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    aput v5, v3, v4

    .line 105
    move-object v3, v1

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    aput v5, v3, v4

    .line 106
    move-object v3, v1

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/QuadIterator;->quad:Lcom/sun/javafx/geom/QuadCurve2D;

    iget v5, v5, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    aput v5, v3, v4

    .line 107
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "type":I
    goto :goto_0

    .line 110
    :cond_3
    const/4 v8, 0x2

    goto :goto_1
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadIterator;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadIterator;
    return v0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/QuadIterator;->index:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/QuadIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/QuadIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/QuadIterator;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/geom/QuadIterator;->index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/geom/QuadIterator;->index:I

    .line 73
    return-void
.end method

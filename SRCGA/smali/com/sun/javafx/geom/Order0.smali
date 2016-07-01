.class final Lcom/sun/javafx/geom/Order0;
.super Lcom/sun/javafx/geom/Curve;
.source "Order0.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    .line 34
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/geom/Order0;->x:D

    .line 35
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/Order0;->y:D

    .line 36
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 7

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "y":D
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v1
.end method

.method public XforT(D)D
    .locals 7

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v1
.end method

.method public XforY(D)D
    .locals 7

    .prologue
    .line 83
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "y":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v1
.end method

.method public YforT(D)D
    .locals 7

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "t":D
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order0;->y:D

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v1
.end method

.method public accumulateCrossings(Lcom/sun/javafx/geom/Crossings;)Z
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/Crossings;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order0;->x:D

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Crossings;->getXLo()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order0;->x:D

    move-object v4, v1

    .line 118
    invoke-virtual {v4}, Lcom/sun/javafx/geom/Crossings;->getXHi()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order0;->y:D

    move-object v4, v1

    .line 119
    invoke-virtual {v4}, Lcom/sun/javafx/geom/Crossings;->getYLo()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Order0;->y:D

    move-object v4, v1

    .line 120
    invoke-virtual {v4}, Lcom/sun/javafx/geom/Crossings;->getYHi()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Order0;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public crossingsFor(DD)I
    .locals 7

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return v1
.end method

.method public dXforT(DI)D
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public dYforT(DI)D
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v1, p1

    .local v1, "t":D
    move v3, p3

    .local v3, "deriv":I
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/Order0;->x:D

    double-to-float v3, v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order0;->y:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 125
    return-void
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return v0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-object v0
.end method

.method public getSegment([F)I
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order0;->x:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 137
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Order0;->y:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 138
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return v0
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 9

    .prologue
    .line 128
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "ystart":D
    move-wide v4, p3

    .local v4, "yend":D
    move v6, p5

    .local v6, "dir":I
    move-object v7, v1

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-object v1
.end method

.method public getX0()D
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getX1()D
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getXBot()D
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getXMax()D
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getXMin()D
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getXTop()D
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getY0()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getY1()D
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getYBot()D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public getYTop()D
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Order0;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Order0;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 9

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Order0;
    move-wide v2, p1

    .local v2, "t0":D
    move-wide v4, p3

    .local v4, "t1":D
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Order0;
    return-wide v1
.end method

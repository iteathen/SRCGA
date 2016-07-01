.class Lcom/sun/javafx/geom/AreaIterator;
.super Ljava/lang/Object;
.source "Area.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# instance fields
.field private curves:Ljava/util/Vector;

.field private index:I

.field private prevcurve:Lcom/sun/javafx/geom/Curve;

.field private thiscurve:Lcom/sun/javafx/geom/Curve;

.field private transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaIterator;
    move-object v1, p1

    .local v1, "curves":Ljava/util/Vector;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 615
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/AreaIterator;->curves:Ljava/util/Vector;

    .line 616
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/AreaIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 617
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 618
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Curve;

    iput-object v4, v3, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 11

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    if-eqz v4, :cond_4

    .line 658
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v4

    if-nez v4, :cond_1

    .line 659
    :cond_0
    const/4 v4, 0x4

    move v0, v4

    .line 677
    .end local v0    # "this":Lcom/sun/javafx/geom/AreaIterator;
    :goto_0
    return v0

    .line 661
    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaIterator;
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getX0()D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 662
    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getY0()D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 663
    const/4 v4, 0x1

    move v2, v4

    .line 664
    .local v2, "segtype":I
    const/4 v4, 0x1

    move v3, v4

    .line 674
    .local v3, "numpoints":I
    :cond_2
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v4, :cond_3

    .line 675
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 677
    :cond_3
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 665
    .end local v2    # "segtype":I
    .end local v3    # "numpoints":I
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    if-nez v4, :cond_5

    .line 666
    new-instance v4, Ljava/util/NoSuchElementException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "area iterator out of bounds"

    invoke-direct {v5, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Curve;->getSegment([F)I

    move-result v4

    move v2, v4

    .line 669
    .restart local v2    # "segtype":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v4

    move v3, v4

    .line 670
    .restart local v3    # "numpoints":I
    move v4, v3

    if-nez v4, :cond_2

    .line 671
    const/4 v4, 0x1

    move v3, v4

    goto :goto_1
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaIterator;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaIterator;
    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 7

    .prologue
    .line 634
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/AreaIterator;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    if-eqz v2, :cond_1

    .line 635
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    iput-object v3, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    .line 638
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/AreaIterator;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/AreaIterator;->index:I

    .line 639
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/AreaIterator;->index:I

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/AreaIterator;->curves:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 640
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/AreaIterator;->curves:Ljava/util/Vector;

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/AreaIterator;->index:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/geom/Curve;

    iput-object v3, v2, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    .line 641
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    .line 642
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getX1()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getX0()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    .line 643
    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getY1()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getY0()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 645
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/geom/AreaIterator;->prevcurve:Lcom/sun/javafx/geom/Curve;

    goto :goto_0

    .line 648
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/geom/AreaIterator;->thiscurve:Lcom/sun/javafx/geom/Curve;

    goto :goto_0
.end method

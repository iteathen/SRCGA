.class Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
.super Ljava/lang/Object;
.source "ShapeEvaluator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/ShapeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iterator"
.end annotation


# instance fields
.field at:Lcom/sun/javafx/geom/transform/BaseTransform;

.field cindex:I

.field g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field g1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field t:F


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;F)V
    .locals 7

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    move-object v1, p1

    .local v1, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "g0":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v3, p3

    .local v3, "g1":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move v4, p4

    .local v4, "t":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 624
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->at:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 625
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 626
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 627
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->t:F

    .line 628
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 12

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    if-nez v5, :cond_0

    .line 662
    const/4 v5, 0x0

    move v2, v5

    .line 663
    .local v2, "type":I
    const/4 v5, 0x2

    move v3, v5

    .line 671
    .local v3, "n":I
    :goto_0
    move v5, v3

    if-lez v5, :cond_3

    .line 672
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 673
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    move v10, v4

    add-int/2addr v9, v10

    .line 674
    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->t:F

    .line 673
    invoke-static {v7, v8, v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v7

    aput v7, v5, v6

    .line 672
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 664
    .end local v2    # "type":I
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getNumCoords()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 665
    const/4 v5, 0x4

    move v2, v5

    .line 666
    .restart local v2    # "type":I
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "n":I
    goto :goto_0

    .line 668
    .end local v2    # "type":I
    .end local v3    # "n":I
    :cond_1
    const/4 v5, 0x3

    move v2, v5

    .line 669
    .restart local v2    # "type":I
    const/4 v5, 0x6

    move v3, v5

    .restart local v3    # "n":I
    goto :goto_0

    .line 677
    .restart local v4    # "i":I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->at:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v5, :cond_3

    .line 678
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->at:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 681
    .end local v4    # "i":I
    :cond_3
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    return v0
.end method

.method public getWindingRule()I
    .locals 6

    .prologue
    .line 634
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->t:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getWindingRule()I

    move-result v2

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getWindingRule()I

    move-result v2

    goto :goto_0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->g0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getNumCoords()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    if-nez v1, :cond_0

    .line 649
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    const/4 v3, 0x6

    add-int/lit8 v2, v2, 0x6

    iput v2, v1, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;->cindex:I

    goto :goto_0
.end method

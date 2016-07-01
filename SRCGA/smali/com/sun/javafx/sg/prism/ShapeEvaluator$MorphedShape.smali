.class Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
.super Lcom/sun/javafx/geom/Shape;
.source "ShapeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/ShapeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MorphedShape"
.end annotation


# instance fields
.field geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field t:F


# direct methods
.method constructor <init>(Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;F)V
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move-object v1, p1

    .local v1, "geom0":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v2, p2

    .local v2, "geom1":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move v3, p3

    .local v3, "t":F
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 556
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 557
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 558
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    .line 559
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 6

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->contains(Lcom/sun/javafx/geom/PathIterator;FF)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return v0
.end method

.method public contains(FFFF)Z
    .locals 10

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "width":F
    move v4, p4

    .local v4, "height":F
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Path2D;->contains(Lcom/sun/javafx/geom/PathIterator;FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/Shape;
    .locals 5

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    new-instance v1, Lcom/sun/javafx/geom/Path2D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return-object v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 16

    .prologue
    .line 566
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getNumCoords()I

    move-result v9

    move v1, v9

    .line 568
    .local v1, "n":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v4, v10

    .local v4, "xmax":F
    move v2, v9

    .line 569
    .local v2, "xmin":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v5, v10

    .local v5, "ymax":F
    move v3, v9

    .line 570
    .local v3, "ymin":F
    const/4 v9, 0x2

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v1

    if-ge v9, v10, :cond_4

    .line 571
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move v11, v6

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v7, v9

    .line 572
    .local v7, "x":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getCoord(I)F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->access$000(FFF)F

    move-result v9

    move v8, v9

    .line 573
    .local v8, "y":F
    move v9, v2

    move v10, v7

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 574
    move v9, v7

    move v2, v9

    .line 576
    :cond_0
    move v9, v3

    move v10, v8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 577
    move v9, v8

    move v3, v9

    .line 579
    :cond_1
    move v9, v4

    move v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 580
    move v9, v7

    move v4, v9

    .line 582
    :cond_2
    move v9, v5

    move v10, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 583
    move v9, v8

    move v5, v9

    .line 570
    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 586
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    new-instance v9, Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 9

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move-object v1, p1

    .local v1, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->t:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;F)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move-object v1, p1

    .local v1, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/FlatteningPathIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return-object v0
.end method

.method public getRectangle()Lcom/sun/javafx/geom/Rectangle;
    .locals 5

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    new-instance v1, Lcom/sun/javafx/geom/Rectangle;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return-object v0
.end method

.method public intersects(FFFF)Z
    .locals 10

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Path2D;->intersects(Lcom/sun/javafx/geom/PathIterator;FFFF)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;
    return v0
.end method

.class Lcom/sun/javafx/geom/Path2D$CopyIterator;
.super Lcom/sun/javafx/geom/Path2D$Iterator;
.source "Path2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyIterator"
.end annotation


# instance fields
.field floatCoords:[F


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Path2D;)V
    .locals 4

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$CopyIterator;
    move-object v1, p1

    .local v1, "p2df":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Path2D$Iterator;-><init>(Lcom/sun/javafx/geom/Path2D;)V

    .line 1487
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    iput-object v3, v2, Lcom/sun/javafx/geom/Path2D$CopyIterator;->floatCoords:[F

    .line 1488
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 11

    .prologue
    .line 1501
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Path2D$CopyIterator;
    move-object v2, p1

    .local v2, "coords":[D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/Path2D$CopyIterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget-object v6, v6, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Path2D$CopyIterator;->typeIdx:I

    aget-byte v6, v6, v7

    move v3, v6

    .line 1502
    .local v3, "type":I
    sget-object v6, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 1503
    .local v4, "numCoords":I
    move v6, v4

    if-lez v6, :cond_0

    .line 1504
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 1505
    move-object v6, v2

    move v7, v5

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/Path2D$CopyIterator;->floatCoords:[F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Path2D$CopyIterator;->pointIdx:I

    move v10, v5

    add-int/2addr v9, v10

    aget v8, v8, v9

    float-to-double v8, v8

    aput-wide v8, v6, v7

    .line 1504
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1508
    .end local v5    # "i":I
    :cond_0
    move v6, v3

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Path2D$CopyIterator;
    return v1
.end method

.method public currentSegment([F)I
    .locals 9

    .prologue
    .line 1491
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$CopyIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$CopyIterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$CopyIterator;->typeIdx:I

    aget-byte v4, v4, v5

    move v2, v4

    .line 1492
    .local v2, "type":I
    sget-object v4, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 1493
    .local v3, "numCoords":I
    move v4, v3

    if-lez v4, :cond_0

    .line 1494
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$CopyIterator;->floatCoords:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$CopyIterator;->pointIdx:I

    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$CopyIterator;
    return v0
.end method

.class Lcom/sun/javafx/geom/Path2D$TxIterator;
.super Lcom/sun/javafx/geom/Path2D$Iterator;
.source "Path2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TxIterator"
.end annotation


# instance fields
.field floatCoords:[F

.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Path2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 5

    .prologue
    .line 1517
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$TxIterator;
    move-object v1, p1

    .local v1, "p2df":Lcom/sun/javafx/geom/Path2D;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/Path2D$Iterator;-><init>(Lcom/sun/javafx/geom/Path2D;)V

    .line 1518
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->floatCoords:[F

    iput-object v4, v3, Lcom/sun/javafx/geom/Path2D$TxIterator;->floatCoords:[F

    .line 1519
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/Path2D$TxIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 1520
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 11

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$TxIterator;
    move-object v1, p1

    .local v1, "coords":[D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$TxIterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$TxIterator;->typeIdx:I

    aget-byte v4, v4, v5

    move v2, v4

    .line 1534
    .local v2, "type":I
    sget-object v4, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 1535
    .local v3, "numCoords":I
    move v4, v3

    if-lez v4, :cond_0

    .line 1536
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$TxIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D$TxIterator;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D$TxIterator;->pointIdx:I

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[DII)V

    .line 1539
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$TxIterator;
    return v0
.end method

.method public currentSegment([F)I
    .locals 11

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$TxIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$TxIterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$TxIterator;->typeIdx:I

    aget-byte v4, v4, v5

    move v2, v4

    .line 1524
    .local v2, "type":I
    sget-object v4, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 1525
    .local v3, "numCoords":I
    move v4, v3

    if-lez v4, :cond_0

    .line 1526
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$TxIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D$TxIterator;->floatCoords:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Path2D$TxIterator;->pointIdx:I

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 1529
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$TxIterator;
    return v0
.end method

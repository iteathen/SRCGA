.class public Lcom/sun/javafx/sg/prism/NGPolygon;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGPolygon.java"


# instance fields
.field private path:Lcom/sun/javafx/geom/Path2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPolygon;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 36
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    return-void
.end method


# virtual methods
.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPolygon;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPolygon;
    return-object v0
.end method

.method public updatePolygon([F)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPolygon;
    move-object v1, p1

    .local v1, "points":[F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 40
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    array-length v5, v5

    if-eqz v5, :cond_0

    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 41
    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 44
    const/4 v5, 0x1

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_2

    .line 45
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    move v3, v5

    .line 46
    .local v3, "px":F
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move v4, v5

    .line 47
    .local v4, "py":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v3    # "px":F
    .end local v4    # "py":F
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPolygon;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 50
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGPolygon;->geometryChanged()V

    .line 51
    goto :goto_0
.end method

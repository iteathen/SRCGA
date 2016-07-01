.class public Lcom/sun/javafx/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/TextLine;


# instance fields
.field bounds:Lcom/sun/javafx/geom/RectBounds;

.field leading:F

.field length:I

.field lsb:F

.field rsb:F

.field runs:[Lcom/sun/javafx/text/TextRun;

.field start:I


# direct methods
.method public constructor <init>(II[Lcom/sun/javafx/text/TextRun;FFFF)V
    .locals 17

    .prologue
    .line 38
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "length":I
    move-object/from16 v3, p3

    .local v3, "runs":[Lcom/sun/javafx/text/TextRun;
    move/from16 v4, p4

    .local v4, "width":F
    move/from16 v5, p5

    .local v5, "ascent":F
    move/from16 v6, p6

    .local v6, "descent":F
    move/from16 v7, p7

    .local v7, "leading":F
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/javafx/text/TextLine;->start:I

    .line 40
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/text/TextLine;->length:I

    .line 41
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    move v12, v5

    move v13, v4

    move v14, v6

    move v15, v7

    add-float/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v9, v8, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    .line 42
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/sun/javafx/text/TextLine;->leading:F

    .line 43
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/sun/javafx/text/TextLine;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 44
    return-void
.end method


# virtual methods
.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return-object v0
.end method

.method public getLeading()F
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextLine;->leading:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return v0
.end method

.method public getLeftSideBearing()F
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextLine;->lsb:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextLine;->length:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return v0
.end method

.method public getRightSideBearing()F
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextLine;->rsb:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return v0
.end method

.method public bridge synthetic getRuns()[Lcom/sun/javafx/scene/text/GlyphList;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return-object v0
.end method

.method public getRuns()[Lcom/sun/javafx/text/TextRun;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/TextLine;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return-object v0
.end method

.method public getStart()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextLine;->start:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextLine;
    return v0
.end method

.method public setAlignment(F)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move v1, p1

    .local v1, "x":F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setMinX(F)V

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 82
    return-void
.end method

.method public setSideBearings(FF)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move v1, p1

    .local v1, "lsb":F
    move v2, p2

    .local v2, "rsb":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/text/TextLine;->lsb:F

    .line 68
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/text/TextLine;->rsb:F

    .line 69
    return-void
.end method

.method public setWidth(F)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextLine;
    move v1, p1

    .local v1, "width":F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/TextLine;->bounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v3

    move v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 86
    return-void
.end method

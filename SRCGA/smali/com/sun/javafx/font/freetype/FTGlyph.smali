.class Lcom/sun/javafx/font/freetype/FTGlyph;
.super Ljava/lang/Object;
.source "FTGlyph.java"

# interfaces
.implements Lcom/sun/javafx/font/Glyph;


# instance fields
.field advanceX:F

.field advanceY:F

.field bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

.field bitmap_left:I

.field bitmap_top:I

.field buffer:[B

.field glyphCode:I

.field lcd:Z

.field strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

.field userAdvance:F


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/freetype/FTFontStrike;IZ)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, p1

    .local v1, "strike":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move v2, p2

    .local v2, "glyphCode":I
    move v3, p3

    .local v3, "drawAsShape":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/font/freetype/FTGlyph;->strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

    .line 46
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/font/freetype/FTGlyph;->glyphCode:I

    .line 47
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    if-eqz v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/freetype/FTFontStrike;->initGlyph(Lcom/sun/javafx/font/freetype/FTGlyph;)V

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public getAdvance()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 70
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->userAdvance:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getBBox()Lcom/sun/javafx/geom/RectBounds;
    .locals 11

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    const/4 v3, 0x4

    new-array v3, v3, [F

    move-object v1, v3

    .line 62
    .local v1, "bb":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/freetype/FTGlyph;->strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

    invoke-virtual {v3}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getFontResource()Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/freetype/FTFontFile;

    move-object v2, v3

    .line 63
    .local v2, "fontResource":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/freetype/FTGlyph;->glyphCode:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/freetype/FTGlyph;->strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

    invoke-virtual {v5}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getSize()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/freetype/FTFontFile;->getGlyphBoundingBox(IF[F)[F

    move-result-object v3

    .line 64
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return-object v0
.end method

.method public getGlyphCode()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->glyphCode:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    iget v1, v1, Lcom/sun/javafx/font/freetype/FT_Bitmap;->rows:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOriginX()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 118
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap_left:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getOriginY()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 124
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap_top:I

    neg-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getPixelData()[B
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->buffer:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return-object v0
.end method

.method public getPixelData(I)[B
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move v1, p1

    .local v1, "subPixel":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/freetype/FTGlyph;->buffer:[B

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return-object v0
.end method

.method public getPixelXAdvance()F
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 93
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->advanceX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getPixelYAdvance()F
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 99
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->advanceY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->strike:Lcom/sun/javafx/font/freetype/FTFontStrike;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/freetype/FTGlyph;->glyphCode:I

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/freetype/FTFontStrike;->createGlyphOutline(I)Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/freetype/FTGlyph;->init()V

    .line 106
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->bitmap:Lcom/sun/javafx/font/freetype/FT_Bitmap;

    iget v1, v1, Lcom/sun/javafx/font/freetype/FT_Bitmap;->width:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLCDGlyph()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/freetype/FTGlyph;->lcd:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTGlyph;
    return v0
.end method

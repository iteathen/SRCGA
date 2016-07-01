.class public Lcom/sun/javafx/font/CompositeStrike;
.super Ljava/lang/Object;
.source "CompositeStrike.java"

# interfaces
.implements Lcom/sun/javafx/font/FontStrike;


# instance fields
.field private aaMode:I

.field private desc:Lcom/sun/javafx/font/FontStrikeDesc;

.field disposer:Lcom/sun/javafx/font/DisposerRecord;

.field private fontResource:Lcom/sun/javafx/font/CompositeFontResource;

.field private metrics:Lcom/sun/javafx/font/PrismMetrics;

.field private size:F

.field private slot0Strike:Lcom/sun/javafx/font/FontStrike;

.field private strikeSlots:[Lcom/sun/javafx/font/FontStrike;

.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/CompositeFontResource;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V
    .locals 12

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, p1

    .local v1, "fontResource":Lcom/sun/javafx/font/CompositeFontResource;
    move v2, p2

    .local v2, "size":F
    move-object v3, p3

    .local v3, "graphicsTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v4, p4

    .local v4, "aaMode":I
    move-object/from16 v5, p5

    .local v5, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    .line 71
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/font/CompositeStrike;->size:F

    .line 72
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v7, v6, Lcom/sun/javafx/font/CompositeStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 77
    :goto_0
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/font/CompositeStrike;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    .line 78
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/javafx/font/CompositeStrike;->aaMode:I

    .line 82
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/font/CompositeStrikeDisposer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/CompositeStrikeDisposer;-><init>(Lcom/sun/javafx/font/FontResource;Lcom/sun/javafx/font/FontStrikeDesc;)V

    iput-object v7, v6, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    .line 83
    return-void

    .line 75
    :cond_0
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/font/CompositeStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    goto :goto_0
.end method


# virtual methods
.method public clearDesc()V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v2}, Lcom/sun/javafx/font/CompositeFontResource;->getStrikeMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->slot0Strike:Lcom/sun/javafx/font/FontStrike;

    if-eqz v2, :cond_0

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->slot0Strike:Lcom/sun/javafx/font/FontStrike;

    invoke-interface {v2}, Lcom/sun/javafx/font/FontStrike;->clearDesc()V

    .line 57
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    if-eqz v2, :cond_2

    .line 58
    const/4 v2, 0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    move v3, v1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/sun/javafx/font/FontStrike;->clearDesc()V

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public drawAsShapes()Z
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/CompositeStrike;->getStrikeSlot(I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontStrike;->drawAsShapes()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return v0
.end method

.method public getAAMode()I
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    move-object v1, v2

    .line 87
    .local v1, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/font/PrismFontFactory;->isLCDTextSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/CompositeStrike;->aaMode:I

    move v0, v2

    .line 90
    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getCharAdvance(C)F
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move v1, p1

    .local v1, "ch":C
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/CompositeFontResource;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v3

    move v2, v3

    .line 175
    .local v2, "glyphCode":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CompositeStrike;->size:F

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/font/CompositeFontResource;->getAdvance(IF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return v0
.end method

.method public getFontResource()Lcom/sun/javafx/font/FontResource;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

.method public getGlyph(C)Lcom/sun/javafx/font/Glyph;
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move v1, p1

    .local v1, "symbol":C
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/CompositeFontResource;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result v3

    move v2, v3

    .line 157
    .local v2, "glyphCode":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CompositeStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

.method public getGlyph(I)Lcom/sun/javafx/font/Glyph;
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move v1, p1

    .local v1, "glyphCode":I
    move v4, v1

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    move v2, v4

    .line 162
    .local v2, "slot":I
    move v4, v1

    const v5, 0xffffff

    and-int/2addr v4, v5

    move v3, v4

    .line 163
    .local v3, "slotglyphCode":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/CompositeStrike;->getStrikeSlot(I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v4

    move v5, v3

    invoke-interface {v4, v5}, Lcom/sun/javafx/font/FontStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

.method public getMetrics()Lcom/sun/javafx/font/Metrics;
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    if-nez v2, :cond_0

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/font/CompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/font/PrismFontFile;

    move-object v1, v2

    .line 150
    .local v1, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/CompositeStrike;->size:F

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontFile;->getFontMetrics(F)Lcom/sun/javafx/font/PrismMetrics;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/CompositeStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    .line 152
    .end local v1    # "fr":Lcom/sun/javafx/font/PrismFontFile;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/CompositeStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

.method public getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;
    .locals 9

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, p1

    .local v1, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v4, Lcom/sun/javafx/geom/Path2D;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v3, v4

    .line 186
    .local v3, "result":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/font/CompositeStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Path2D;)V

    .line 187
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

.method getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Path2D;)V
    .locals 15

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object/from16 v1, p1

    .local v1, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "p":Lcom/sun/javafx/geom/Path2D;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 192
    move-object v9, v1

    if-nez v9, :cond_0

    .line 193
    .line 211
    :goto_0
    return-void

    .line 195
    :cond_0
    move-object v9, v2

    if-nez v9, :cond_1

    .line 196
    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v2, v9

    .line 198
    :cond_1
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v4, v9

    .line 199
    .local v4, "t":Lcom/sun/javafx/geom/transform/Affine2D;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 200
    move-object v9, v1

    move v10, v5

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCode(I)I

    move-result v9

    move v6, v9

    .line 201
    .local v6, "glyphCode":I
    move v9, v6

    const v10, 0xffff

    if-eq v9, v10, :cond_2

    .line 202
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/sun/javafx/font/CompositeStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v9

    move-object v7, v9

    .line 203
    .local v7, "glyph":Lcom/sun/javafx/font/Glyph;
    move-object v9, v7

    invoke-interface {v9}, Lcom/sun/javafx/font/Glyph;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v9

    move-object v8, v9

    .line 204
    .local v8, "gp":Lcom/sun/javafx/geom/Shape;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 205
    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 206
    move-object v9, v4

    move-object v10, v1

    move v11, v5

    invoke-interface {v10, v11}, Lcom/sun/javafx/scene/text/GlyphList;->getPosX(I)F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    move v13, v5

    invoke-interface {v12, v13}, Lcom/sun/javafx/scene/text/GlyphList;->getPosY(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 207
    move-object v9, v3

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 199
    .end local v7    # "glyph":Lcom/sun/javafx/font/Glyph;
    .end local v8    # "gp":Lcom/sun/javafx/geom/Shape;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 211
    .end local v6    # "glyphCode":I
    :cond_3
    goto :goto_0
.end method

.method public getQuantizedPosition(Lcom/sun/javafx/geom/Point2D;)I
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, p1

    .local v1, "point":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/CompositeStrike;->getStrikeSlot(I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/font/FontStrike;->getQuantizedPosition(Lcom/sun/javafx/geom/Point2D;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return v0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/CompositeStrike;->size:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return v0
.end method

.method public getStrikeSlot(I)Lcom/sun/javafx/font/FontStrike;
    .locals 9

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move v1, p1

    .local v1, "slot":I
    move v3, v1

    if-nez v3, :cond_1

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->slot0Strike:Lcom/sun/javafx/font/FontStrike;

    if-nez v3, :cond_0

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/font/CompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    move-object v2, v3

    .line 106
    .local v2, "slot0Resource":Lcom/sun/javafx/font/FontResource;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CompositeStrike;->size:F

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/CompositeStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v0

    .line 107
    invoke-virtual {v7}, Lcom/sun/javafx/font/CompositeStrike;->getAAMode()I

    move-result v7

    .line 106
    invoke-interface {v4, v5, v6, v7}, Lcom/sun/javafx/font/FontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeStrike;->slot0Strike:Lcom/sun/javafx/font/FontStrike;

    .line 109
    .end local v2    # "slot0Resource":Lcom/sun/javafx/font/FontResource;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->slot0Strike:Lcom/sun/javafx/font/FontStrike;

    move-object v0, v3

    .line 125
    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    if-nez v3, :cond_2

    .line 112
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v4}, Lcom/sun/javafx/font/CompositeFontResource;->getNumSlots()I

    move-result v4

    new-array v4, v4, [Lcom/sun/javafx/font/FontStrike;

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    .line 115
    :cond_2
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 116
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/CompositeFontResource;->getNumSlots()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/font/FontStrike;

    move-object v2, v3

    .line 117
    .local v2, "tmp":[Lcom/sun/javafx/font/FontStrike;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    .line 120
    .end local v2    # "tmp":[Lcom/sun/javafx/font/FontStrike;
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    move v4, v1

    aget-object v3, v3, v4

    if-nez v3, :cond_4

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->fontResource:Lcom/sun/javafx/font/CompositeFontResource;

    move v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/font/CompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    move-object v2, v3

    .line 122
    .local v2, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    move v4, v1

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/CompositeStrike;->size:F

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v8, v0

    .line 123
    invoke-virtual {v8}, Lcom/sun/javafx/font/CompositeStrike;->getAAMode()I

    move-result v8

    .line 122
    invoke-interface {v5, v6, v7, v8}, Lcom/sun/javafx/font/FontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v5

    aput-object v5, v3, v4

    .line 125
    .end local v2    # "slotResource":Lcom/sun/javafx/font/FontResource;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeStrike;->strikeSlots:[Lcom/sun/javafx/font/FontStrike;

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0
.end method

.method public getStrikeSlotForGlyph(I)I
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, v1

    const/16 v3, 0x18

    ushr-int/lit8 v2, v2, 0x18

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return v0
.end method

.method public getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeStrike;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/CompositeStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeStrike;
    return-object v0
.end method

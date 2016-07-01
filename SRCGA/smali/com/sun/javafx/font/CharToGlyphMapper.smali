.class public abstract Lcom/sun/javafx/font/CharToGlyphMapper;
.super Ljava/lang/Object;
.source "CharToGlyphMapper.java"


# static fields
.field public static final HI_SURROGATE_END:I = 0xdbff

.field public static final HI_SURROGATE_SHIFT:I = 0xa

.field public static final HI_SURROGATE_START:I = 0xd800

.field public static final INVISIBLE_GLYPH_ID:I = 0xffff

.field public static final LO_SURROGATE_END:I = 0xdfff

.field public static final LO_SURROGATE_START:I = 0xdc00

.field public static final MISSING_GLYPH:I = 0x0

.field public static final SURROGATES_START:I = 0x10000


# instance fields
.field protected missingGlyph:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/font/CharToGlyphMapper;->missingGlyph:I

    return-void
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "cp":C
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result v3

    move v2, v3

    .line 49
    .local v2, "glyph":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/CharToGlyphMapper;->missingGlyph:I

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public charToGlyph(C)I
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "unicode":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/CharToGlyphMapper;->getGlyphCode(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    return v0
.end method

.method public charToGlyph(I)I
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "unicode":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/CharToGlyphMapper;->getGlyphCode(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    return v0
.end method

.method public charsToGlyphs(II[C[I)V
    .locals 11

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "unicodes":[C
    move-object v4, p4

    .local v4, "glyphs":[I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/font/CharToGlyphMapper;->charsToGlyphs(II[C[II)V

    .line 90
    return-void
.end method

.method public charsToGlyphs(II[C[II)V
    .locals 13

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object/from16 v3, p3

    .local v3, "unicodes":[C
    move-object/from16 v4, p4

    .local v4, "glyphs":[I
    move/from16 v5, p5

    .local v5, "glyphStart":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 69
    move-object v9, v3

    move v10, v1

    move v11, v6

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    move v7, v9

    .line 70
    .local v7, "code":I
    move v9, v7

    const v10, 0xd800

    if-lt v9, v10, :cond_0

    move v9, v7

    const v10, 0xdbff

    if-gt v9, v10, :cond_0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    if-ge v9, v10, :cond_0

    .line 72
    move-object v9, v3

    move v10, v1

    move v11, v6

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    move v8, v9

    .line 74
    .local v8, "low":C
    move v9, v8

    const v10, 0xdc00

    if-lt v9, v10, :cond_0

    move v9, v8

    const v10, 0xdfff

    if-gt v9, v10, :cond_0

    .line 76
    move v9, v7

    const v10, 0xd800

    sub-int/2addr v9, v10

    const/16 v10, 0xa

    shl-int/lit8 v9, v9, 0xa

    move v10, v8

    add-int/2addr v9, v10

    const v10, 0xdc00

    sub-int/2addr v9, v10

    const/high16 v10, 0x10000

    add-int/2addr v9, v10

    move v7, v9

    .line 78
    move-object v9, v4

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Lcom/sun/javafx/font/CharToGlyphMapper;->getGlyphCode(I)I

    move-result v11

    aput v11, v9, v10

    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    move-object v9, v4

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    const v11, 0xffff

    aput v11, v9, v10

    .line 81
    .line 68
    .end local v8    # "low":C
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_0
    move-object v9, v4

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Lcom/sun/javafx/font/CharToGlyphMapper;->getGlyphCode(I)I

    move-result v11

    aput v11, v9, v10

    goto :goto_1

    .line 86
    .end local v7    # "code":I
    :cond_1
    return-void
.end method

.method public charsToGlyphs(I[C[I)V
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move v1, p1

    .local v1, "count":I
    move-object v2, p2

    .local v2, "unicodes":[C
    move-object v3, p3

    .local v3, "glyphs":[I
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/font/CharToGlyphMapper;->charsToGlyphs(II[C[II)V

    .line 94
    return-void
.end method

.method public abstract getGlyphCode(I)I
.end method

.method public getMissingGlyphCode()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/CharToGlyphMapper;->missingGlyph:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CharToGlyphMapper;
    return v0
.end method

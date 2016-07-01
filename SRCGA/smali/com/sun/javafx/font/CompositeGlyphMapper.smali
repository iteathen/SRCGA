.class public Lcom/sun/javafx/font/CompositeGlyphMapper;
.super Lcom/sun/javafx/font/CharToGlyphMapper;
.source "CompositeGlyphMapper.java"


# static fields
.field private static final ASCII_COUNT:I = 0x5f

.field public static final BLOCKSZ:I = 0x100

.field public static final GLYPHMASK:I = 0xffffff

.field public static final MAXUNICODE:I = 0xd800

.field public static final NBLOCKS:I = 0xd8

.field private static final SIMPLE_ASCII_MASK_END:I = 0x7e

.field private static final SIMPLE_ASCII_MASK_START:I = 0x20

.field public static final SLOTMASK:I = -0x1000000


# instance fields
.field private asciiCacheOK:Z

.field private charToGlyph:[C

.field font:Lcom/sun/javafx/font/CompositeFontResource;

.field glyphMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/font/CompositeFontResource;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move-object v1, p1

    .local v1, "compFont":Lcom/sun/javafx/font/CompositeFontResource;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/CharToGlyphMapper;-><init>()V

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/font/CompositeGlyphMapper;->font:Lcom/sun/javafx/font/CompositeFontResource;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/font/CompositeGlyphMapper;->missingGlyph:I

    .line 61
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/font/CompositeGlyphMapper;->glyphMap:Ljava/util/HashMap;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/font/CompositeFontResource;->getNumSlots()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/font/CharToGlyphMapper;

    iput-object v3, v2, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    .line 63
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/font/CompositeGlyphMapper;->asciiCacheOK:Z

    .line 64
    return-void
.end method

.method private final convertToGlyph(I)I
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move v1, p1

    .local v1, "unicode":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "slot":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/CompositeGlyphMapper;->font:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v6}, Lcom/sun/javafx/font/CompositeFontResource;->getNumSlots()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 95
    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/font/CompositeGlyphMapper;->getSlotMapper(I)Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v5

    move-object v3, v5

    .line 96
    .local v3, "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v5

    move v4, v5

    .line 97
    .local v4, "glyphCode":I
    move v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 98
    move-object v5, v0

    move v6, v2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/font/CompositeGlyphMapper;->compositeGlyphCode(II)I

    move-result v5

    move v4, v5

    .line 99
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/CompositeGlyphMapper;->glyphMap:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 100
    move v5, v4

    move v0, v5

    .line 104
    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    .end local v3    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v4    # "glyphCode":I
    :goto_1
    return v0

    .line 94
    .restart local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    .restart local v3    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .restart local v4    # "glyphCode":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v4    # "glyphCode":I
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/CompositeGlyphMapper;->glyphMap:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->missingGlyph:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 104
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CompositeGlyphMapper;->missingGlyph:I

    move v0, v5

    goto :goto_1
.end method

.method private getAsciiGlyphCode(I)I
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move v1, p1

    .local v1, "charCode":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->asciiCacheOK:Z

    if-eqz v7, :cond_0

    move v7, v1

    const/16 v8, 0x7e

    if-gt v7, v8, :cond_0

    move v7, v1

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    .line 113
    :cond_0
    const/4 v7, -0x1

    move v0, v7

    .line 137
    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    :goto_0
    return v0

    .line 117
    .restart local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->charToGlyph:[C

    if-nez v7, :cond_4

    .line 118
    const/16 v7, 0x5f

    new-array v7, v7, [C

    move-object v2, v7

    .line 119
    .local v2, "glyphCodes":[C
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/javafx/font/CompositeGlyphMapper;->getSlotMapper(I)Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v7

    move-object v3, v7

    .line 120
    .local v3, "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v7

    move v4, v7

    .line 121
    .local v4, "missingGlyphCode":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    const/16 v8, 0x5f

    if-ge v7, v8, :cond_3

    .line 122
    move-object v7, v3

    const/16 v8, 0x20

    move v9, v5

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v7

    move v6, v7

    .line 123
    .local v6, "glyphCode":I
    move v7, v6

    move v8, v4

    if-ne v7, v8, :cond_2

    .line 126
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->charToGlyph:[C

    .line 127
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->asciiCacheOK:Z

    .line 128
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 131
    :cond_2
    move-object v7, v2

    move v8, v5

    move v9, v6

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 133
    .end local v6    # "glyphCode":I
    :cond_3
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->charToGlyph:[C

    .line 136
    .end local v2    # "glyphCodes":[C
    .end local v3    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v4    # "missingGlyphCode":I
    .end local v5    # "i":I
    :cond_4
    move v7, v1

    const/16 v8, 0x20

    add-int/lit8 v7, v7, -0x20

    move v2, v7

    .line 137
    .local v2, "index":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->charToGlyph:[C

    move v8, v2

    aget-char v7, v7, v8

    move v0, v7

    goto :goto_0
.end method

.method private final getSlotMapper(I)Lcom/sun/javafx/font/CharToGlyphMapper;
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move v1, p1

    .local v1, "slot":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 68
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->font:Lcom/sun/javafx/font/CompositeFontResource;

    invoke-interface {v3}, Lcom/sun/javafx/font/CompositeFontResource;->getNumSlots()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/font/CharToGlyphMapper;

    move-object v2, v3

    .line 69
    .local v2, "tmp":[Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    .line 72
    .end local v2    # "tmp":[Lcom/sun/javafx/font/CharToGlyphMapper;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 73
    .local v2, "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->font:Lcom/sun/javafx/font/CompositeFontResource;

    move v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/font/CompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/javafx/font/FontResource;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v3

    move-object v2, v3

    .line 75
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CompositeGlyphMapper;->slotMappers:[Lcom/sun/javafx/font/CharToGlyphMapper;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 77
    :cond_1
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    return-object v0
.end method


# virtual methods
.method public final compositeGlyphCode(II)I
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move v1, p1

    .local v1, "slot":I
    move v2, p2

    .local v2, "glyphCode":I
    move v3, v1

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move v4, v2

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    return v0
.end method

.method public getGlyphCode(I)I
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move v1, p1

    .local v1, "charCode":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/font/CompositeGlyphMapper;->getAsciiGlyphCode(I)I

    move-result v4

    move v2, v4

    .line 143
    .local v2, "retVal":I
    move v4, v2

    if-ltz v4, :cond_0

    .line 144
    move v4, v2

    move v0, v4

    .line 151
    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    :goto_0
    return v0

    .line 147
    .restart local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CompositeGlyphMapper;->glyphMap:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 148
    .local v3, "codeInt":Ljava/lang/Integer;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 151
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public getMissingGlyphCode()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/CompositeGlyphMapper;->missingGlyph:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/CompositeGlyphMapper;
    return v0
.end method

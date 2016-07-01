.class Lcom/sun/javafx/font/CMap$CMapFormat4;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat4"
.end annotation


# instance fields
.field endCount:[C

.field entrySelector:I

.field glyphIds:[C

.field idDelta:[S

.field idRangeOffset:[C

.field rangeShift:I

.field segCount:I

.field startCount:[C


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 11

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat4;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 170
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 171
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    .line 172
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    move v3, v7

    .line 181
    .local v3, "subtableLength":I
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 182
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v7

    move v8, v2

    sub-int/2addr v7, v8

    move v3, v7

    .line 184
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    .line 185
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    .line 186
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    .line 187
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v8

    iput v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->entrySelector:I

    .line 188
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->rangeShift:I

    .line 189
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    new-array v8, v8, [C

    iput-object v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    .line 190
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    new-array v8, v8, [C

    iput-object v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->endCount:[C

    .line 191
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    new-array v8, v8, [S

    iput-object v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->idDelta:[S

    .line 192
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    new-array v8, v8, [C

    iput-object v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->idRangeOffset:[C

    .line 194
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    if-ge v7, v8, :cond_1

    .line 195
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->endCount:[C

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v9

    aput-char v9, v7, v8

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    .line 198
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    if-ge v7, v8, :cond_2

    .line 199
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v9

    aput-char v9, v7, v8

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_2
    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    if-ge v7, v8, :cond_3

    .line 203
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->idDelta:[S

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v9

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 206
    :cond_3
    const/4 v7, 0x0

    move v4, v7

    :goto_3
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    if-ge v7, v8, :cond_4

    .line 207
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    move v5, v7

    .line 208
    .local v5, "ctmp":C
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->idRangeOffset:[C

    move v8, v4

    move v9, v5

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    const v10, 0xffff

    and-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 213
    .end local v5    # "ctmp":C
    :cond_4
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    const/16 v8, 0x8

    mul-int/lit8 v7, v7, 0x8

    const/16 v8, 0x10

    add-int/lit8 v7, v7, 0x10

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 214
    .local v4, "pos":I
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    move v9, v2

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 215
    move v7, v3

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 216
    .local v5, "numGlyphIds":I
    move-object v7, v0

    move v8, v5

    new-array v8, v8, [C

    iput-object v8, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->glyphIds:[C

    .line 217
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_4
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_5

    .line 218
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat4;->glyphIds:[C

    move v8, v6

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v9

    aput-char v9, v7, v8

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 220
    :cond_5
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 13

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat4;
    move v1, p1

    .local v1, "charCode":I
    const/4 v9, 0x0

    move v2, v9

    .line 225
    .local v2, "index":I
    const/4 v9, 0x0

    move v3, v9

    .line 227
    .local v3, "glyphCode":C
    move-object v9, v0

    move v10, v1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/font/CMap$CMapFormat4;->getControlCodeGlyph(IZ)I

    move-result v9

    move v4, v9

    .line 228
    .local v4, "controlGlyph":I
    move v9, v4

    if-ltz v9, :cond_0

    .line 229
    move v9, v4

    int-to-char v9, v9

    move v0, v9

    .line 276
    .end local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat4;
    :goto_0
    return v0

    .line 250
    .restart local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat4;
    :cond_0
    const/4 v9, 0x0

    move v5, v9

    .local v5, "left":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    array-length v9, v9

    move v6, v9

    .line 251
    .local v6, "right":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    array-length v9, v9

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    move v2, v9

    .line 252
    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 253
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/CMap$CMapFormat4;->endCount:[C

    move v10, v2

    aget-char v9, v9, v10

    move v10, v1

    if-ge v9, v10, :cond_1

    .line 254
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 258
    :goto_2
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    move v2, v9

    goto :goto_1

    .line 256
    :cond_1
    move v9, v2

    move v6, v9

    goto :goto_2

    .line 261
    :cond_2
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    move v11, v2

    aget-char v10, v10, v11

    if-lt v9, v10, :cond_3

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat4;->endCount:[C

    move v11, v2

    aget-char v10, v10, v11

    if-gt v9, v10, :cond_3

    .line 262
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/CMap$CMapFormat4;->idRangeOffset:[C

    move v10, v2

    aget-char v9, v9, v10

    move v7, v9

    .line 264
    .local v7, "rangeOffset":I
    move v9, v7

    if-nez v9, :cond_4

    .line 265
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat4;->idDelta:[S

    move v11, v2

    aget-short v10, v10, v11

    add-int/2addr v9, v10

    int-to-char v9, v9

    move v3, v9

    .line 276
    .end local v7    # "rangeOffset":I
    :cond_3
    :goto_3
    move v9, v3

    move v0, v9

    goto :goto_0

    .line 268
    .restart local v7    # "rangeOffset":I
    :cond_4
    move v9, v7

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat4;->segCount:I

    sub-int/2addr v9, v10

    move v10, v2

    add-int/2addr v9, v10

    move v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat4;->startCount:[C

    move v12, v2

    aget-char v11, v11, v12

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    move v8, v9

    .line 270
    .local v8, "glyphIDIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/CMap$CMapFormat4;->glyphIds:[C

    move v10, v8

    aget-char v9, v9, v10

    move v3, v9

    .line 271
    move v9, v3

    if-eqz v9, :cond_3

    .line 272
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat4;->idDelta:[S

    move v11, v2

    aget-short v10, v10, v11

    add-int/2addr v9, v10

    int-to-char v9, v9

    move v3, v9

    goto :goto_3
.end method

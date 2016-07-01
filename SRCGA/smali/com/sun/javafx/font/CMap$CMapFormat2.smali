.class Lcom/sun/javafx/font/CMap$CMapFormat2;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat2"
.end annotation


# instance fields
.field entryCountArray:[C

.field firstCodeArray:[C

.field glyphIndexArray:[C

.field idDeltaArray:[S

.field idRangeOffSetArray:[C

.field subHeaderKey:[C


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 11

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat2;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 311
    move-object v8, v0

    const/16 v9, 0x100

    new-array v9, v9, [C

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->subHeaderKey:[C

    .line 329
    move-object v8, v1

    move v9, v2

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v8

    move v3, v8

    .line 330
    .local v3, "tableLen":I
    move-object v8, v1

    move v9, v2

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 331
    const/4 v8, 0x0

    move v4, v8

    .line 332
    .local v4, "maxSubHeader":C
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    const/16 v9, 0x100

    if-ge v8, v9, :cond_1

    .line 333
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->subHeaderKey:[C

    move v9, v5

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    aput-char v10, v8, v9

    .line 334
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->subHeaderKey:[C

    move v9, v5

    aget-char v8, v8, v9

    move v9, v4

    if-le v8, v9, :cond_0

    .line 335
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->subHeaderKey:[C

    move v9, v5

    aget-char v8, v8, v9

    move v4, v8

    .line 332
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    :cond_1
    move v8, v4

    const/4 v9, 0x3

    shr-int/lit8 v8, v8, 0x3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 343
    .local v5, "numSubHeaders":I
    move-object v8, v0

    move v9, v5

    new-array v9, v9, [C

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->firstCodeArray:[C

    .line 344
    move-object v8, v0

    move v9, v5

    new-array v9, v9, [C

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->entryCountArray:[C

    .line 345
    move-object v8, v0

    move v9, v5

    new-array v9, v9, [S

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->idDeltaArray:[S

    .line 346
    move-object v8, v0

    move v9, v5

    new-array v9, v9, [C

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    .line 347
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 348
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->firstCodeArray:[C

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    aput-char v10, v8, v9

    .line 349
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->entryCountArray:[C

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    aput-char v10, v8, v9

    .line 350
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->idDeltaArray:[S

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 351
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    aput-char v10, v8, v9

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 354
    :cond_2
    move v8, v3

    const/16 v9, 0x206

    add-int/lit16 v8, v8, -0x206

    move v9, v5

    const/16 v10, 0x8

    mul-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v6, v8

    .line 355
    .local v6, "glyphIndexArrSize":I
    move-object v8, v0

    move v9, v6

    new-array v9, v9, [C

    iput-object v9, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->glyphIndexArray:[C

    .line 356
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_2
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_3

    .line 357
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/CMap$CMapFormat2;->glyphIndexArray:[C

    move v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v10

    aput-char v10, v8, v9

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 359
    :cond_3
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 14

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat2;
    move v1, p1

    .local v1, "charCode":I
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/font/CMap$CMapFormat2;->getControlCodeGlyph(IZ)I

    move-result v11

    move v2, v11

    .line 363
    .local v2, "controlGlyph":I
    move v11, v2

    if-ltz v11, :cond_0

    .line 364
    move v11, v2

    int-to-char v11, v11

    move v0, v11

    .line 410
    .end local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat2;
    :goto_0
    return v0

    .line 367
    .restart local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat2;
    :cond_0
    move v11, v1

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    int-to-char v11, v11

    move v3, v11

    .line 368
    .local v3, "highByte":C
    move v11, v1

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    move v4, v11

    .line 369
    .local v4, "lowByte":C
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat2;->subHeaderKey:[C

    move v12, v3

    aget-char v11, v11, v12

    const/4 v12, 0x3

    shr-int/lit8 v11, v11, 0x3

    move v5, v11

    .line 372
    .local v5, "key":I
    move v11, v5

    if-eqz v11, :cond_2

    .line 373
    move v11, v4

    move v6, v11

    .line 380
    .local v6, "mapMe":C
    :cond_1
    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat2;->firstCodeArray:[C

    move v12, v5

    aget-char v11, v11, v12

    move v7, v11

    .line 381
    .local v7, "firstCode":C
    move v11, v6

    move v12, v7

    if-ge v11, v12, :cond_3

    .line 382
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 375
    .end local v6    # "mapMe":C
    .end local v7    # "firstCode":C
    :cond_2
    move v11, v3

    move v6, v11

    .line 376
    .restart local v6    # "mapMe":C
    move v11, v6

    if-nez v11, :cond_1

    .line 377
    move v11, v4

    move v6, v11

    goto :goto_1

    .line 384
    .restart local v7    # "firstCode":C
    :cond_3
    move v11, v6

    move v12, v7

    sub-int/2addr v11, v12

    int-to-char v11, v11

    move v6, v11

    .line 387
    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/CMap$CMapFormat2;->entryCountArray:[C

    move v13, v5

    aget-char v12, v12, v13

    if-ge v11, v12, :cond_4

    .line 401
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    array-length v11, v11

    move v12, v5

    sub-int/2addr v11, v12

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    const/4 v12, 0x6

    add-int/lit8 v11, v11, -0x6

    move v8, v11

    .line 402
    .local v8, "glyphArrayOffset":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    move v12, v5

    aget-char v11, v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    move v9, v11

    .line 404
    .local v9, "glyphSubArrayStart":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/CMap$CMapFormat2;->glyphIndexArray:[C

    move v12, v9

    move v13, v6

    add-int/2addr v12, v13

    aget-char v11, v11, v12

    move v10, v11

    .line 405
    .local v10, "glyphCode":C
    move v11, v10

    if-eqz v11, :cond_4

    .line 406
    move v11, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/CMap$CMapFormat2;->idDeltaArray:[S

    move v13, v5

    aget-short v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    move v10, v11

    .line 407
    move v11, v10

    move v0, v11

    goto :goto_0

    .line 410
    .end local v8    # "glyphArrayOffset":I
    .end local v9    # "glyphSubArrayStart":I
    .end local v10    # "glyphCode":C
    :cond_4
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0
.end method

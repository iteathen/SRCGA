.class Lcom/sun/javafx/font/CMap$CMapFormat12;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat12"
.end annotation


# instance fields
.field endCharCode:[J

.field extra:I

.field highBit:I

.field numGroups:I

.field power:I

.field startCharCode:[J

.field startGlyphID:[I


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 9

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat12;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 504
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 513
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    .line 514
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    const v5, 0x10ffff

    if-gt v4, v5, :cond_0

    move v4, v2

    move-object v5, v1

    .line 515
    invoke-virtual {v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    const/16 v7, 0xc

    mul-int/lit8 v6, v6, 0xc

    sub-int/2addr v5, v6

    const/16 v6, 0xc

    add-int/lit8 v5, v5, -0xc

    const/4 v6, 0x4

    add-int/lit8 v5, v5, -0x4

    if-le v4, v5, :cond_1

    .line 517
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid cmap subtable"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    new-array v5, v5, [J

    iput-object v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    .line 520
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    new-array v5, v5, [J

    iput-object v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->endCharCode:[J

    .line 521
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->startGlyphID:[I

    .line 522
    move-object v4, v1

    move v5, v2

    const/16 v6, 0x10

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 525
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    if-ge v4, v5, :cond_2

    .line 526
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v6

    const/4 v7, -0x1

    and-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    aput-wide v6, v4, v5

    .line 527
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->endCharCode:[J

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v6

    const/4 v7, -0x1

    and-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    aput-wide v6, v4, v5

    .line 528
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->startGlyphID:[I

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v6

    const/4 v7, -0x1

    and-int/lit8 v6, v6, -0x1

    aput v6, v4, v5

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    move v3, v4

    .line 534
    .local v3, "value":I
    move v4, v3

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_3

    .line 535
    move v4, v3

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    move v3, v4

    .line 536
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    const/16 v6, 0x10

    add-int/lit8 v5, v5, 0x10

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 539
    :cond_3
    move v4, v3

    const/16 v5, 0x100

    if-lt v4, v5, :cond_4

    .line 540
    move v4, v3

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v3, v4

    .line 541
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    const/16 v6, 0x8

    add-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 544
    :cond_4
    move v4, v3

    const/16 v5, 0x10

    if-lt v4, v5, :cond_5

    .line 545
    move v4, v3

    const/4 v5, 0x4

    shr-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 546
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 549
    :cond_5
    move v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_6

    .line 550
    move v4, v3

    const/4 v5, 0x2

    shr-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 551
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 554
    :cond_6
    move v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    .line 555
    move v4, v3

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 556
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    .line 559
    :cond_7
    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->highBit:I

    shl-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->power:I

    .line 560
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat12;->numGroups:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->power:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat12;->extra:I

    .line 561
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 12

    .prologue
    .line 564
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/CMap$CMapFormat12;
    move v2, p1

    .local v2, "charCode":I
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/font/CMap$CMapFormat12;->getControlCodeGlyph(IZ)I

    move-result v6

    move v3, v6

    .line 565
    .local v3, "controlGlyph":I
    move v6, v3

    if-ltz v6, :cond_0

    .line 566
    move v6, v3

    int-to-char v6, v6

    move v1, v6

    .line 589
    .end local v1    # "this":Lcom/sun/javafx/font/CMap$CMapFormat12;
    :goto_0
    return v1

    .line 568
    .restart local v1    # "this":Lcom/sun/javafx/font/CMap$CMapFormat12;
    :cond_0
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->power:I

    move v4, v6

    .line 569
    .local v4, "probe":I
    const/4 v6, 0x0

    move v5, v6

    .line 571
    .local v5, "range":I
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat12;->extra:I

    aget-wide v6, v6, v7

    move v8, v2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 572
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->extra:I

    move v5, v6

    .line 575
    :cond_1
    :goto_1
    move v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 576
    move v6, v4

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 578
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    move v7, v5

    move v8, v4

    add-int/2addr v7, v8

    aget-wide v6, v6, v7

    move v8, v2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 579
    move v6, v5

    move v7, v4

    add-int/2addr v6, v7

    move v5, v6

    goto :goto_1

    .line 583
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    move v7, v5

    aget-wide v6, v6, v7

    move v8, v2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->endCharCode:[J

    move v7, v5

    aget-wide v6, v6, v7

    move v8, v2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 585
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat12;->startGlyphID:[I

    move v7, v5

    aget v6, v6, v7

    int-to-long v6, v6

    move v8, v2

    int-to-long v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/font/CMap$CMapFormat12;->startCharCode:[J

    move v11, v5

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    int-to-char v6, v6

    move v1, v6

    goto :goto_0

    .line 589
    :cond_3
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

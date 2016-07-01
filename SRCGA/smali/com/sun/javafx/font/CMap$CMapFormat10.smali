.class Lcom/sun/javafx/font/CMap$CMapFormat10;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat10"
.end annotation


# instance fields
.field glyphIdArray:[C

.field numChars:I

.field startCharCode:J


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 10

    .prologue
    .line 472
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/CMap$CMapFormat10;
    move-object v2, p1

    .local v2, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v3, p2

    .local v3, "offset":I
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 474
    move-object v5, v2

    move v6, v3

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 475
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v6

    const/4 v7, -0x1

    and-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->startCharCode:J

    .line 476
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v6

    const/4 v7, -0x1

    and-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    .line 477
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    if-lez v5, :cond_0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    const v6, 0x10ffff

    if-gt v5, v6, :cond_0

    move v5, v3

    move-object v6, v2

    .line 478
    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v6

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0xc

    add-int/lit8 v6, v6, -0xc

    const/16 v7, 0x8

    add-int/lit8 v6, v6, -0x8

    if-le v5, v6, :cond_1

    .line 480
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Invalid cmap subtable"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 482
    :cond_1
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    new-array v6, v6, [C

    iput-object v6, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->glyphIdArray:[C

    .line 483
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    if-ge v5, v6, :cond_2

    .line 484
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->glyphIdArray:[C

    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v7

    aput-char v7, v5, v6

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 486
    :cond_2
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 8

    .prologue
    .line 490
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/CMap$CMapFormat10;
    move v2, p1

    .local v2, "charCode":I
    move v4, v2

    int-to-long v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/font/CMap$CMapFormat10;->startCharCode:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    move v3, v4

    .line 491
    .local v3, "code":I
    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat10;->numChars:I

    if-lt v4, v5, :cond_1

    .line 492
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .line 494
    .end local v1    # "this":Lcom/sun/javafx/font/CMap$CMapFormat10;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/font/CMap$CMapFormat10;
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat10;->glyphIdArray:[C

    move v5, v3

    aget-char v4, v4, v5

    move v1, v4

    goto :goto_0
.end method

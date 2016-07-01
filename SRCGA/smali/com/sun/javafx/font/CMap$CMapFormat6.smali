.class Lcom/sun/javafx/font/CMap$CMapFormat6;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat6"
.end annotation


# instance fields
.field entryCount:C

.field firstCode:C

.field glyphIdArray:[C


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat6;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 423
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x6

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 424
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v5

    iput-char v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->firstCode:C

    .line 425
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v5

    iput-char v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->entryCount:C

    .line 426
    move-object v4, v0

    move-object v5, v0

    iget-char v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat6;->entryCount:C

    new-array v5, v5, [C

    iput-object v5, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->glyphIdArray:[C

    .line 427
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-char v5, v5, Lcom/sun/javafx/font/CMap$CMapFormat6;->entryCount:C

    if-ge v4, v5, :cond_0

    .line 428
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->glyphIdArray:[C

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar()C

    move-result v6

    aput-char v6, v4, v5

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 6

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat6;
    move v1, p1

    .local v1, "charCode":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/font/CMap$CMapFormat6;->getControlCodeGlyph(IZ)I

    move-result v3

    move v2, v3

    .line 434
    .local v2, "controlGlyph":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 435
    move v3, v2

    int-to-char v3, v3

    move v0, v3

    .line 442
    .end local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat6;
    :goto_0
    return v0

    .line 438
    .restart local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat6;
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-char v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->firstCode:C

    sub-int/2addr v3, v4

    move v1, v3

    .line 439
    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget-char v4, v4, Lcom/sun/javafx/font/CMap$CMapFormat6;->entryCount:C

    if-lt v3, v4, :cond_2

    .line 440
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 442
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/CMap$CMapFormat6;->glyphIdArray:[C

    move v4, v1

    aget-char v3, v3, v4

    move v0, v3

    goto :goto_0
.end method

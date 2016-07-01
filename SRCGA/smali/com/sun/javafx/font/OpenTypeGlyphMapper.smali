.class public Lcom/sun/javafx/font/OpenTypeGlyphMapper;
.super Lcom/sun/javafx/font/CharToGlyphMapper;
.source "OpenTypeGlyphMapper.java"


# instance fields
.field cmap:Lcom/sun/javafx/font/CMap;

.field font:Lcom/sun/javafx/font/PrismFontFile;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/font/PrismFontFile;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    move-object v1, p1

    .local v1, "font":Lcom/sun/javafx/font/PrismFontFile;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/CharToGlyphMapper;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->font:Lcom/sun/javafx/font/PrismFontFile;

    .line 36
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lcom/sun/javafx/font/CMap;->initialize(Lcom/sun/javafx/font/PrismFontFile;)Lcom/sun/javafx/font/CMap;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    if-nez v3, :cond_0

    .line 41
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->handleBadCMAP()V

    .line 43
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->missingGlyph:I

    .line 44
    return-void

    .line 37
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    goto :goto_0
.end method

.method private handleBadCMAP()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/font/CMap;->theNullCmap:Lcom/sun/javafx/font/CMap$NullCMapClass;

    iput-object v2, v1, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    .line 58
    return-void
.end method


# virtual methods
.method public getGlyphCode(I)I
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    move v1, p1

    .local v1, "charCode":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CMap;->getGlyph(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 51
    .end local v0    # "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    :goto_0
    return v0

    .line 49
    .restart local v0    # "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->handleBadCMAP()V

    .line 51
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->missingGlyph:I

    move v0, v3

    goto :goto_0
.end method

.method hasSupplementaryChars()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    instance-of v1, v1, Lcom/sun/javafx/font/CMap$CMapFormat8;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    instance-of v1, v1, Lcom/sun/javafx/font/CMap$CMapFormat10;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/OpenTypeGlyphMapper;->cmap:Lcom/sun/javafx/font/CMap;

    instance-of v1, v1, Lcom/sun/javafx/font/CMap$CMapFormat12;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/OpenTypeGlyphMapper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

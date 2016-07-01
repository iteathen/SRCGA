.class Lcom/sun/javafx/font/FallbackResource;
.super Ljava/lang/Object;
.source "FallbackResource.java"

# interfaces
.implements Lcom/sun/javafx/font/CompositeFontResource;


# static fields
.field static greyFallBackResource:[Lcom/sun/javafx/font/FallbackResource;

.field static lcdFallBackResource:[Lcom/sun/javafx/font/FallbackResource;


# instance fields
.field private aaMode:I

.field private fallbacks:[Lcom/sun/javafx/font/FontResource;

.field private isBold:Z

.field private isItalic:Z

.field private linkedFontFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkedFontNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

.field private nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

.field strikeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/font/FallbackResource;

    sput-object v0, Lcom/sun/javafx/font/FallbackResource;->greyFallBackResource:[Lcom/sun/javafx/font/FallbackResource;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/font/FallbackResource;

    sput-object v0, Lcom/sun/javafx/font/FallbackResource;->lcdFallBackResource:[Lcom/sun/javafx/font/FallbackResource;

    return-void
.end method

.method constructor <init>(ZZI)V
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move v1, p1

    .local v1, "bold":Z
    move v2, p2

    .local v2, "italic":Z
    move v3, p3

    .local v3, "aaMode":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v4, v0

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/font/FallbackResource;->strikeMap:Ljava/util/Map;

    .line 62
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/sun/javafx/font/FallbackResource;->isBold:Z

    .line 63
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/javafx/font/FallbackResource;->isItalic:Z

    .line 64
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/font/FallbackResource;->aaMode:I

    .line 65
    return-void
.end method

.method static getFallbackResource(ZZI)Lcom/sun/javafx/font/FallbackResource;
    .locals 12

    .prologue
    .line 72
    move v0, p0

    .local v0, "bold":Z
    move v1, p1

    .local v1, "italic":Z
    move v2, p2

    .local v2, "aaMode":I
    move v6, v2

    if-nez v6, :cond_2

    sget-object v6, Lcom/sun/javafx/font/FallbackResource;->greyFallBackResource:[Lcom/sun/javafx/font/FallbackResource;

    :goto_0
    move-object v3, v6

    .line 75
    .local v3, "arr":[Lcom/sun/javafx/font/FallbackResource;
    move v6, v0

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 76
    .local v4, "index":I
    move v6, v1

    if-eqz v6, :cond_0

    .line 77
    add-int/lit8 v4, v4, 0x2

    .line 79
    :cond_0
    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 80
    .local v5, "font":Lcom/sun/javafx/font/FallbackResource;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 81
    new-instance v6, Lcom/sun/javafx/font/FallbackResource;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v0

    move v9, v1

    move v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/font/FallbackResource;-><init>(ZZI)V

    move-object v5, v6

    .line 82
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    aput-object v8, v6, v7

    .line 84
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "bold":Z
    return-object v0

    .line 72
    .end local v3    # "arr":[Lcom/sun/javafx/font/FallbackResource;
    .end local v4    # "index":I
    .end local v5    # "font":Lcom/sun/javafx/font/FallbackResource;
    .restart local v0    # "bold":Z
    :cond_2
    sget-object v6, Lcom/sun/javafx/font/FallbackResource;->lcdFallBackResource:[Lcom/sun/javafx/font/FallbackResource;

    goto :goto_0

    .line 75
    .restart local v3    # "arr":[Lcom/sun/javafx/font/FallbackResource;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getLinkedFonts()V
    .locals 5

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    if-nez v2, :cond_0

    .line 221
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "sans"

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/font/FallbackResource;->isBold:Z

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/font/FallbackResource;->isItalic:Z

    .line 223
    invoke-static {v2, v3, v4}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfigFont(Ljava/lang/String;ZZ)Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-result-object v2

    move-object v1, v2

    .line 225
    .local v1, "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/font/FontConfigManager;->getFileNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    .line 226
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/font/FontConfigManager;->getFontNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->linkedFontNames:Ljava/util/ArrayList;

    .line 227
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/font/FontResource;

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    .line 228
    .line 242
    .end local v1    # "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v2, :cond_2

    .line 231
    const-string v2, "Arial Unicode MS"

    const/4 v3, 0x1

    .line 232
    invoke-static {v2, v3}, Lcom/sun/javafx/font/PrismFontFactory;->getLinkedFonts(Ljava/lang/String;Z)[Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .line 237
    .local v1, "linkedFontInfo":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    .line 238
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->linkedFontNames:Ljava/util/ArrayList;

    .line 239
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/font/FontResource;

    iput-object v3, v2, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    goto :goto_0

    .line 234
    .end local v1    # "linkedFontInfo":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v2, "Tahoma"

    const/4 v3, 0x1

    .line 235
    invoke-static {v2, v3}, Lcom/sun/javafx/font/PrismFontFactory;->getLinkedFonts(Ljava/lang/String;Z)[Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "linkedFontInfo":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private throwException()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAdvance(IF)F
    .locals 9

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, p2

    .local v2, "size":F
    move v6, v1

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v3, v6

    .line 263
    .local v3, "slot":I
    move v6, v1

    const v7, 0xffffff

    and-int/2addr v6, v7

    move v4, v6

    .line 264
    .local v4, "slotglyphCode":I
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/FallbackResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v5, v6

    .line 265
    .local v5, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v6, v5

    move v7, v4

    move v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/font/FontResource;->getAdvance(IF)F

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return v0
.end method

.method public getDefaultAAMode()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/FallbackResource;->aaMode:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getFeatures()I
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getGlyphBoundingBox(IF[F)[F
    .locals 11

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, p2

    .local v2, "size":F
    move-object v3, p3

    .local v3, "retArr":[F
    move v7, v1

    const/16 v8, 0x18

    ushr-int/lit8 v7, v7, 0x18

    move v4, v7

    .line 256
    .local v4, "slot":I
    move v7, v1

    const v8, 0xffffff

    and-int/2addr v7, v8

    move v5, v7

    .line 257
    .local v5, "slotglyphCode":I
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/FallbackResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v6, v7

    .line 258
    .local v6, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v7, v6

    move v8, v5

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FallbackResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    if-nez v1, :cond_0

    .line 160
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/font/CompositeGlyphMapper;-><init>(Lcom/sun/javafx/font/CompositeFontResource;)V

    iput-object v2, v1, Lcom/sun/javafx/font/FallbackResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    .line 162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FallbackResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getLocaleFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getLocaleFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getLocaleStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getNumSlots()I
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/FallbackResource;->getLinkedFonts()V

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 247
    .local v1, "num":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v2, :cond_0

    .line 248
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v3, v3

    add-int/2addr v2, v3

    move v1, v2

    .line 250
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return v0
.end method

.method public getPSName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getSlotForFont(Ljava/lang/String;)I
    .locals 13

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, p1

    .local v1, "fontName":Ljava/lang/String;
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/font/FallbackResource;->getLinkedFonts()V

    .line 167
    const/4 v7, 0x0

    move v2, v7

    .line 168
    .local v2, "i":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->linkedFontNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 169
    .local v4, "linkedFontName":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    move v7, v2

    move v0, v7

    .line 213
    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    .end local v4    # "linkedFontName":Ljava/lang/String;
    :goto_1
    return v0

    .line 172
    .restart local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    .restart local v4    # "linkedFontName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 173
    goto :goto_0

    .line 174
    .end local v4    # "linkedFontName":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v7, :cond_3

    .line 175
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 176
    .local v6, "nativeFallback":Lcom/sun/javafx/font/FontResource;
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v8}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    move v7, v2

    move v0, v7

    goto :goto_1

    .line 179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 183
    .end local v6    # "nativeFallback":Lcom/sun/javafx/font/FontResource;
    :cond_3
    move v7, v2

    const/16 v8, 0x7e

    if-lt v7, v8, :cond_5

    .line 189
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v7, :cond_4

    .line 190
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "\tToo many font fallbacks!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    :cond_4
    const/4 v7, -0x1

    move v0, v7

    goto :goto_1

    .line 194
    :cond_5
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v7

    move-object v3, v7

    .line 195
    .local v3, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v7, v3

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v4, v7

    .line 196
    .local v4, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v7, v4

    if-nez v7, :cond_7

    .line 197
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v7, :cond_6

    .line 198
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t Font name not supported \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_6
    const/4 v7, -0x1

    move v0, v7

    goto :goto_1

    .line 205
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-nez v7, :cond_8

    .line 206
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sun/javafx/font/FontResource;

    move-object v5, v7

    .line 211
    .local v5, "tmp":[Lcom/sun/javafx/font/FontResource;
    :goto_3
    move-object v7, v5

    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v4

    aput-object v9, v7, v8

    .line 212
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    .line 213
    move v7, v2

    move v0, v7

    goto/16 :goto_1

    .line 208
    .end local v5    # "tmp":[Lcom/sun/javafx/font/FontResource;
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lcom/sun/javafx/font/FontResource;

    move-object v5, v7

    .line 209
    .restart local v5    # "tmp":[Lcom/sun/javafx/font/FontResource;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public declared-synchronized getSlotResource(I)Lcom/sun/javafx/font/FontResource;
    .locals 11

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move v1, p1

    .local v1, "slot":I
    move-object v10, p0

    monitor-enter v10

    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/sun/javafx/font/FallbackResource;->getLinkedFonts()V

    .line 270
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 271
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5

    sub-int/2addr v4, v5

    move v1, v4

    .line 272
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v5, :cond_1

    .line 273
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 284
    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    :goto_0
    monitor-exit v10

    return-object v0

    .line 275
    .restart local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    .line 277
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    .line 278
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->linkedFontFiles:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 279
    .local v2, "file":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->linkedFontNames:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 280
    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    .line 281
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v6

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x0

    .line 282
    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    aput-object v6, v4, v5

    .line 284
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FallbackResource;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    throw v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move v1, p1

    .local v1, "size":F
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/font/FallbackResource;->getDefaultAAMode()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/FallbackResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
    .locals 15

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move/from16 v1, p1

    .local v1, "size":F
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v3, p3

    .local v3, "aaMode":I
    new-instance v7, Lcom/sun/javafx/font/FontStrikeDesc;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/FontStrikeDesc;-><init>(FLcom/sun/javafx/geom/transform/BaseTransform;I)V

    move-object v4, v7

    .line 295
    .local v4, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 296
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/FontStrike;>;"
    const/4 v7, 0x0

    move-object v6, v7

    .line 298
    .local v6, "strike":Lcom/sun/javafx/font/CompositeStrike;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 299
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/font/CompositeStrike;

    move-object v6, v7

    .line 301
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 302
    new-instance v7, Lcom/sun/javafx/font/CompositeStrike;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/font/CompositeStrike;-><init>(Lcom/sun/javafx/font/CompositeFontResource;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V

    move-object v6, v7

    .line 303
    move-object v7, v6

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    if-eqz v7, :cond_2

    .line 304
    move-object v7, v6

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    invoke-static {v7, v8}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    move-object v5, v7

    .line 308
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/FallbackResource;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 310
    :cond_1
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0

    .line 306
    .restart local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    :cond_2
    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v5, v7

    goto :goto_0
.end method

.method public getStrikeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FallbackResource;->strikeMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return-object v0
.end method

.method public isBold()Z
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmbeddedFont()Z
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FallbackResource;
    return v0
.end method

.method public isItalic()Z
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPeer(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FallbackResource;
    move-object v1, p1

    .local v1, "peer":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/FallbackResource;->throwException()Ljava/lang/String;

    move-result-object v2

    .line 152
    return-void
.end method

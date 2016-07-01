.class Lcom/sun/javafx/font/PrismCompositeFontResource;
.super Ljava/lang/Object;
.source "PrismCompositeFontResource.java"

# interfaces
.implements Lcom/sun/javafx/font/CompositeFontResource;


# instance fields
.field private fallbackResource:Lcom/sun/javafx/font/FallbackResource;

.field mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

.field private primaryResource:Lcom/sun/javafx/font/FontResource;

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
.method constructor <init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, p1

    .local v1, "primaryResource":Lcom/sun/javafx/font/FontResource;
    move-object v2, p2

    .local v2, "lookupName":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 166
    move-object v6, v0

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/font/PrismCompositeFontResource;->strikeMap:Ljava/util/Map;

    .line 47
    move-object v6, v1

    instance-of v6, v6, Lcom/sun/javafx/font/PrismFontFile;

    if-nez v6, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 49
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "wrong resource type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 52
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v6

    move-object v3, v6

    .line 53
    .local v3, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 55
    .end local v3    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    .line 56
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/font/FontResource;->getDefaultAAMode()I

    move-result v6

    move v3, v6

    .line 57
    .local v3, "aaMode":I
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v6

    move v4, v6

    .line 58
    .local v4, "bold":Z
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v6

    move v5, v6

    .line 59
    .local v5, "italic":Z
    move-object v6, v0

    move v7, v4

    move v8, v5

    move v9, v3

    .line 60
    invoke-static {v7, v8, v9}, Lcom/sun/javafx/font/FallbackResource;->getFallbackResource(ZZI)Lcom/sun/javafx/font/FallbackResource;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/font/PrismCompositeFontResource;->fallbackResource:Lcom/sun/javafx/font/FallbackResource;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 204
    const/4 v3, 0x0

    move v0, v3

    .line 210
    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :goto_0
    return v0

    .line 206
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;

    if-nez v3, :cond_1

    .line 207
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 209
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v2, v3

    .line 210
    .local v2, "other":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getAdvance(IF)F
    .locals 9

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, p2

    .local v2, "size":F
    move v6, v1

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v3, v6

    .line 161
    .local v3, "slot":I
    move v6, v1

    const v7, 0xffffff

    and-int/2addr v6, v7

    move v4, v6

    .line 162
    .local v4, "slotglyphCode":I
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/PrismCompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v5, v6

    .line 163
    .local v5, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v6, v5

    move v7, v4

    move v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/font/FontResource;->getAdvance(IF)F

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public getDefaultAAMode()I
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/PrismCompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getDefaultAAMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getFeatures()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFeatures()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getGlyphBoundingBox(IF[F)[F
    .locals 11

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
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

    .line 154
    .local v4, "slot":I
    move v7, v1

    const v8, 0xffffff

    and-int/2addr v7, v8

    move v5, v7

    .line 155
    .local v5, "slotglyphCode":I
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/PrismCompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v6, v7

    .line 156
    .local v6, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v7, v6

    move v8, v5

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    if-nez v1, :cond_0

    .line 146
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/font/CompositeGlyphMapper;-><init>(Lcom/sun/javafx/font/CompositeFontResource;)V

    iput-object v2, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    .line 148
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getLocaleFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getLocaleFamilyName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getLocaleFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getLocaleFullName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getLocaleStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getLocaleStyleName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getNumSlots()I
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->fallbackResource:Lcom/sun/javafx/font/FallbackResource;

    invoke-virtual {v1}, Lcom/sun/javafx/font/FallbackResource;->getNumSlots()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public getPSName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getPSName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getPeer()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getSlotForFont(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, p1

    .local v1, "fontName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v2}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x0

    move v0, v2

    .line 71
    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismCompositeFontResource;->fallbackResource:Lcom/sun/javafx/font/FallbackResource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/FallbackResource;->getSlotForFont(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public getSlotResource(I)Lcom/sun/javafx/font/FontResource;
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move v1, p1

    .local v1, "slot":I
    move v3, v1

    if-nez v3, :cond_0

    .line 76
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    move-object v0, v3

    .line 82
    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;->fallbackResource:Lcom/sun/javafx/font/FallbackResource;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/FallbackResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    move-object v2, v3

    .line 79
    .local v2, "fb":Lcom/sun/javafx/font/FontResource;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 80
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 82
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    move-object v0, v3

    goto :goto_0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move v1, p1

    .local v1, "size":F
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/font/PrismCompositeFontResource;->getDefaultAAMode()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/PrismCompositeFontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
    .locals 15

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
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

    .line 184
    .local v4, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismCompositeFontResource;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 185
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/FontStrike;>;"
    const/4 v7, 0x0

    move-object v6, v7

    .line 186
    .local v6, "strike":Lcom/sun/javafx/font/CompositeStrike;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 187
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/font/CompositeStrike;

    move-object v6, v7

    .line 189
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 190
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

    .line 191
    move-object v7, v6

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    if-eqz v7, :cond_2

    .line 192
    move-object v7, v6

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    invoke-static {v7, v8}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    move-object v5, v7

    .line 196
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismCompositeFontResource;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 198
    :cond_1
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0

    .line 194
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
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
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->strikeMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getStyleName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public isBold()Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public isEmbeddedFont()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isEmbeddedFont()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public isItalic()Z
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismCompositeFontResource;->primaryResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    return v0
.end method

.method public setPeer(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismCompositeFontResource;
    move-object v1, p1

    .local v1, "peer":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

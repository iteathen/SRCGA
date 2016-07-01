.class public abstract Lcom/sun/javafx/font/PrismFontStrike;
.super Ljava/lang/Object;
.source "PrismFontStrike.java"

# interfaces
.implements Lcom/sun/javafx/font/FontStrike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sun/javafx/font/PrismFontFile;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/font/FontStrike;"
    }
.end annotation


# instance fields
.field private aaMode:I

.field private desc:Lcom/sun/javafx/font/FontStrikeDesc;

.field private disposer:Lcom/sun/javafx/font/DisposerRecord;

.field protected drawShapes:Z

.field private fontResource:Lcom/sun/javafx/font/PrismFontFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private glyphMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/javafx/font/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field private hash:I

.field private metrics:Lcom/sun/javafx/font/PrismMetrics;

.field private size:F

.field private transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/font/PrismFontFile;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "I",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object/from16 v2, p1

    .local v2, "fontResource":Lcom/sun/javafx/font/PrismFontFile;, "TT;"
    move/from16 v3, p2

    .local v3, "size":F
    move-object/from16 v4, p3

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p4

    .local v5, "aaMode":I
    move-object/from16 v6, p5

    .local v6, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v9, v1

    new-instance v10, Ljava/util/HashMap;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->glyphMap:Ljava/util/Map;

    .line 43
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->drawShapes:Z

    .line 53
    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    .line 54
    move-object v9, v1

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    .line 55
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    .line 56
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v9

    move-object v7, v9

    .line 57
    .local v7, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/font/PrismFontFactory;->isLCDTextSupported()Z

    move-result v9

    move v8, v9

    .line 58
    .local v8, "lcdEnabled":Z
    move-object v9, v1

    move v10, v8

    if-eqz v10, :cond_0

    move v10, v5

    :goto_0
    iput v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->aaMode:I

    .line 59
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    move-object v9, v1

    sget-object v10, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 66
    :goto_1
    return-void

    .line 58
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 62
    :cond_1
    move-object v9, v1

    new-instance v10, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v14

    move-object/from16 v16, v4

    .line 63
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-direct/range {v11 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDD)V

    iput-object v10, v9, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clearDesc()V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    invoke-virtual {v1}, Lcom/sun/javafx/font/PrismFontFile;->getStrikeMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    monitor-exit v3

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    throw v0
.end method

.method protected abstract createDisposer(Lcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/DisposerRecord;
.end method

.method protected abstract createGlyph(I)Lcom/sun/javafx/font/Glyph;
.end method

.method protected abstract createGlyphOutline(I)Lcom/sun/javafx/geom/Path2D;
.end method

.method public drawAsShapes()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->drawShapes:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 212
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 213
    const/4 v4, 0x0

    move v1, v4

    .line 228
    .end local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    :goto_0
    return v1

    .line 215
    .restart local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/font/PrismFontStrike;

    if-nez v4, :cond_1

    .line 216
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 218
    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/font/PrismFontStrike;

    move-object v3, v4

    .line 223
    .local v3, "other":Lcom/sun/javafx/font/PrismFontStrike;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    move-object v5, v3

    iget v5, v5, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 224
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 225
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 226
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 227
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    .line 228
    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/PrismFontFile;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAAMode()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->aaMode:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return v0
.end method

.method public getCharAdvance(C)F
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move v1, p1

    .local v1, "ch":C
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    invoke-virtual {v3}, Lcom/sun/javafx/font/PrismFontFile;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v3

    move v2, v3

    .line 160
    .local v2, "glyphCode":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/font/PrismFontFile;->getAdvance(IF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return v0
.end method

.method getDisposer()Lcom/sun/javafx/font/DisposerRecord;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    if-nez v1, :cond_0

    .line 77
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->desc:Lcom/sun/javafx/font/FontStrikeDesc;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/PrismFontStrike;->createDisposer(Lcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/DisposerRecord;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    .line 79
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public bridge synthetic getFontResource()Lcom/sun/javafx/font/FontResource;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/font/PrismFontStrike;->getFontResource()Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public getFontResource()Lcom/sun/javafx/font/PrismFontFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public getGlyph(C)Lcom/sun/javafx/font/Glyph;
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move v1, p1

    .local v1, "ch":C
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    invoke-virtual {v3}, Lcom/sun/javafx/font/PrismFontFile;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v3

    move v2, v3

    .line 166
    .local v2, "glyphCode":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public getGlyph(I)Lcom/sun/javafx/font/Glyph;
    .locals 6

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move v1, p1

    .local v1, "glyphCode":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->glyphMap:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/Glyph;

    move-object v2, v3

    .line 173
    .local v2, "glyph":Lcom/sun/javafx/font/Glyph;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 174
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontStrike;->createGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v3

    move-object v2, v3

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->glyphMap:Ljava/util/Map;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 177
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public getMetrics()Lcom/sun/javafx/font/Metrics;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    if-nez v1, :cond_0

    .line 117
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->getFontMetrics(F)Lcom/sun/javafx/font/PrismMetrics;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    .line 119
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->metrics:Lcom/sun/javafx/font/PrismMetrics;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, p1

    .local v1, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v4, Lcom/sun/javafx/geom/Path2D;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v3, v4

    .line 184
    .local v3, "result":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/font/PrismFontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Path2D;)V

    .line 185
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Path2D;)V
    .locals 15

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object/from16 v2, p1

    .local v2, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "p":Lcom/sun/javafx/geom/Path2D;
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 190
    move-object v9, v2

    if-nez v9, :cond_0

    .line 191
    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    move-object v9, v3

    if-nez v9, :cond_1

    .line 194
    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v9

    .line 196
    :cond_1
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v5, v9

    .line 197
    .local v5, "t":Lcom/sun/javafx/geom/transform/Affine2D;
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move-object v10, v2

    invoke-interface {v10}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 198
    move-object v9, v2

    move v10, v6

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCode(I)I

    move-result v9

    move v7, v9

    .line 199
    .local v7, "glyphCode":I
    move v9, v7

    const v10, 0xffff

    if-eq v9, v10, :cond_2

    .line 200
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/font/PrismFontStrike;->createGlyphOutline(I)Lcom/sun/javafx/geom/Path2D;

    move-result-object v9

    move-object v8, v9

    .line 201
    .local v8, "gp":Lcom/sun/javafx/geom/Shape;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 202
    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 203
    move-object v9, v5

    move-object v10, v2

    move v11, v6

    invoke-interface {v10, v11}, Lcom/sun/javafx/scene/text/GlyphList;->getPosX(I)F

    move-result v10

    float-to-double v10, v10

    move-object v12, v2

    move v13, v6

    invoke-interface {v12, v13}, Lcom/sun/javafx/scene/text/GlyphList;->getPosY(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 204
    move-object v9, v4

    move-object v10, v8

    move-object v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 197
    .end local v8    # "gp":Lcom/sun/javafx/geom/Shape;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 208
    .end local v7    # "glyphCode":I
    :cond_3
    goto :goto_0
.end method

.method public getQuantizedPosition(Lcom/sun/javafx/geom/Point2D;)I
    .locals 8

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v2, p1

    .local v2, "point":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->aaMode:I

    if-nez v3, :cond_0

    .line 142
    move-object v3, v2

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 147
    :goto_0
    move-object v3, v2

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 148
    const/4 v3, 0x0

    move v1, v3

    .end local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return v1

    .line 145
    .restart local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    :cond_0
    move-object v3, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    goto :goto_0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return v0
.end method

.method public getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    move v1, v2

    .line 243
    .end local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    :goto_0
    return v1

    .line 237
    .restart local v1    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 238
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 239
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 240
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 241
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    .line 242
    move-object v2, v1

    const/16 v3, 0x47

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    invoke-virtual {v4}, Lcom/sun/javafx/font/PrismFontFile;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    .line 243
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->hash:I

    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FontStrike: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " font resource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontStrike;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontStrike;, "Lcom/sun/javafx/font/PrismFontStrike<TT;>;"
    return-object v0
.end method

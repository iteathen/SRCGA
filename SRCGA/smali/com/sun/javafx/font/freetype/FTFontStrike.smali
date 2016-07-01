.class Lcom/sun/javafx/font/freetype/FTFontStrike;
.super Lcom/sun/javafx/font/PrismFontStrike;
.source "FTFontStrike.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/font/PrismFontStrike",
        "<",
        "Lcom/sun/javafx/font/freetype/FTFontFile;",
        ">;"
    }
.end annotation


# instance fields
.field matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/font/freetype/FTFontFile;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V
    .locals 15

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move-object/from16 v1, p1

    .local v1, "fontResource":Lcom/sun/javafx/font/freetype/FTFontFile;
    move/from16 v2, p2

    .local v2, "size":F
    move-object/from16 v3, p3

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v4, p4

    .local v4, "aaMode":I
    move-object/from16 v5, p5

    .local v5, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/font/PrismFontStrike;-><init>(Lcom/sun/javafx/font/PrismFontFile;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V

    .line 43
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontSizeLimit()F

    move-result v8

    move v6, v8

    .line 44
    .local v6, "maxDim":F
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 45
    move-object v8, v0

    move v9, v2

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->drawShapes:Z

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 47
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    move-object v7, v8

    .line 48
    .local v7, "tx2d":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/font/freetype/FT_Matrix;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    .line 50
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v9

    const-wide/high16 v11, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/sun/javafx/font/freetype/FT_Matrix;->xx:J

    .line 51
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v9

    neg-double v9, v9

    const-wide/high16 v11, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/sun/javafx/font/freetype/FT_Matrix;->yx:J

    .line 52
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v9

    neg-double v9, v9

    const-wide/high16 v11, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/sun/javafx/font/freetype/FT_Matrix;->xy:J

    .line 53
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->matrix:Lcom/sun/javafx/font/freetype/FT_Matrix;

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v9

    const-wide/high16 v11, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/sun/javafx/font/freetype/FT_Matrix;->yy:J

    .line 55
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v8

    move v10, v2

    float-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move v10, v6

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_3

    move-object v8, v7

    .line 56
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v8

    move v10, v2

    float-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move v10, v6

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_3

    move-object v8, v7

    .line 57
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v8

    move v10, v2

    float-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move v10, v6

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_3

    move-object v8, v7

    .line 58
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v8

    move v10, v2

    float-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move v10, v6

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 60
    :cond_3
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/javafx/font/freetype/FTFontStrike;->drawShapes:Z

    goto/16 :goto_1
.end method


# virtual methods
.method protected createDisposer(Lcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/DisposerRecord;
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move-object v1, p1

    .local v1, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    return-object v0
.end method

.method protected createGlyph(I)Lcom/sun/javafx/font/Glyph;
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move v1, p1

    .local v1, "glyphCode":I
    new-instance v2, Lcom/sun/javafx/font/freetype/FTGlyph;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/font/freetype/FTFontStrike;->drawShapes:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/font/freetype/FTGlyph;-><init>(Lcom/sun/javafx/font/freetype/FTFontStrike;IZ)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    return-object v0
.end method

.method protected createGlyphOutline(I)Lcom/sun/javafx/geom/Path2D;
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move v1, p1

    .local v1, "glyphCode":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getFontResource()Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/freetype/FTFontFile;

    move-object v2, v3

    .line 78
    .local v2, "fontResource":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object v3, v2

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getSize()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/font/freetype/FTFontFile;->createGlyphOutline(IF)Lcom/sun/javafx/geom/Path2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    return-object v0
.end method

.method initGlyph(Lcom/sun/javafx/font/freetype/FTGlyph;)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFontStrike;
    move-object v1, p1

    .local v1, "glyph":Lcom/sun/javafx/font/freetype/FTGlyph;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/font/freetype/FTFontStrike;->getFontResource()Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/freetype/FTFontFile;

    move-object v2, v3

    .line 83
    .local v2, "fontResource":Lcom/sun/javafx/font/freetype/FTFontFile;
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/font/freetype/FTFontFile;->initGlyph(Lcom/sun/javafx/font/freetype/FTGlyph;Lcom/sun/javafx/font/freetype/FTFontStrike;)V

    .line 84
    return-void
.end method

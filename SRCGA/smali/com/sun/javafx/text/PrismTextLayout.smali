.class public Lcom/sun/javafx/text/PrismTextLayout;
.super Ljava/lang/Object;
.source "PrismTextLayout.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/TextLayout;


# static fields
.field private static final CACHE_SIZE_LOCK:Ljava/lang/Object;

.field private static final IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private static final MAX_CACHE_SIZE:I

.field private static final MAX_STRING_SIZE:I = 0x100

.field private static final X_MAX_INDEX:I = 0x2

.field private static final X_MIN_INDEX:I = 0x0

.field private static final Y_MAX_INDEX:I = 0x3

.field private static final Y_MIN_INDEX:I = 0x1

.field private static cacheSize:I

.field private static final stringCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/javafx/text/LayoutCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheKey:Ljava/lang/Integer;

.field private flags:I

.field private font:Lcom/sun/javafx/font/PGFont;

.field private layoutCache:Lcom/sun/javafx/text/LayoutCache;

.field private layoutHeight:F

.field private layoutWidth:F

.field private lines:[Lcom/sun/javafx/text/TextLine;

.field private logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private runCount:I

.field private runs:[Lcom/sun/javafx/text/TextRun;

.field private shape:Lcom/sun/javafx/geom/Shape;

.field private spacing:F

.field private spans:[Lcom/sun/javafx/scene/text/TextSpan;

.field private strike:Lcom/sun/javafx/font/FontStrike;

.field private text:[C

.field private visualBounds:Lcom/sun/javafx/geom/RectBounds;

.field private wrapWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    sput-object v0, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/javafx/text/PrismTextLayout;->stringCache:Ljava/util/Hashtable;

    .line 64
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/javafx/text/PrismTextLayout;->CACHE_SIZE_LOCK:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/sun/javafx/text/PrismTextLayout;->cacheSize:I

    .line 67
    sget v0, Lcom/sun/javafx/font/PrismFontFactory;->cacheLayoutSize:I

    sput v0, Lcom/sun/javafx/text/PrismTextLayout;->MAX_CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 87
    move-object v1, v0

    const/high16 v2, 0x40000

    iput v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 88
    return-void
.end method

.method private buildRuns([C)V
    .locals 9

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, p1

    .local v1, "chars":[C
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    .line 765
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    if-nez v4, :cond_0

    .line 766
    const/4 v4, 0x4

    move-object v5, v1

    array-length v5, v5

    const/16 v6, 0x10

    div-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v4

    .line 767
    .local v2, "count":I
    move-object v4, v0

    move v5, v2

    new-array v5, v5, [Lcom/sun/javafx/text/TextRun;

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 769
    .end local v2    # "count":I
    :cond_0
    invoke-static {}, Lcom/sun/javafx/text/GlyphLayout;->getInstance()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v4

    move-object v2, v4

    .line 770
    .local v2, "layout":Lcom/sun/javafx/text/GlyphLayout;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/text/GlyphLayout;->breakRuns(Lcom/sun/javafx/text/PrismTextLayout;[CI)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 771
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/text/GlyphLayout;->dispose()V

    .line 772
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move v3, v4

    .local v3, "j":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 773
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    :cond_1
    return-void
.end method

.method private computeSideBearings(Lcom/sun/javafx/text/TextLine;)V
    .locals 24

    .prologue
    .line 1396
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v3, p1

    .local v3, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v20

    move-object/from16 v4, v20

    .line 1397
    .local v4, "runs":[Lcom/sun/javafx/text/TextRun;
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1398
    :cond_0
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 1399
    .local v5, "bounds":[F
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 1400
    .local v6, "defaultFontResource":Lcom/sun/javafx/font/FontResource;
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 1401
    .local v7, "size":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1402
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontStrike;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v20

    move-object/from16 v6, v20

    .line 1403
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v20

    move/from16 v7, v20

    .line 1407
    :cond_1
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 1408
    .local v8, "lsb":F
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 1410
    .local v9, "width":F
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "i":I
    :goto_1
    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 1411
    move-object/from16 v20, v4

    move/from16 v21, v10

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 1412
    .local v11, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v20

    move/from16 v12, v20

    .line 1413
    .local v12, "glyphCount":I
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "gi":I
    :goto_2
    move/from16 v20, v13

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1414
    move-object/from16 v20, v11

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/text/TextRun;->getAdvance(I)F

    move-result v20

    move/from16 v14, v20

    .line 1416
    .local v14, "advance":F
    move/from16 v20, v14

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_6

    .line 1417
    move-object/from16 v20, v11

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/text/TextRun;->getGlyphCode(I)I

    move-result v20

    move/from16 v15, v20

    .line 1419
    .local v15, "gc":I
    move/from16 v20, v15

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1420
    move-object/from16 v20, v6

    move-object/from16 v16, v20

    .line 1421
    .local v16, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v20, v16

    if-nez v20, :cond_2

    .line 1422
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v20

    move-object/from16 v17, v20

    .line 1423
    .local v17, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v20, v17

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v18, v20

    .line 1425
    .local v18, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/PGFont;->getSize()F

    move-result v20

    move/from16 v7, v20

    .line 1426
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/PGFont;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v20

    move-object/from16 v16, v20

    .line 1428
    .end local v17    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v18    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_2
    move-object/from16 v20, v16

    move/from16 v21, v15

    move/from16 v22, v7

    move-object/from16 v23, v5

    invoke-interface/range {v20 .. v23}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v20

    .line 1429
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v17, v20

    .line 1430
    .local v17, "glyphLsb":F
    const/16 v20, 0x0

    move/from16 v21, v17

    move/from16 v22, v9

    add-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    move/from16 v8, v20

    .line 1431
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->setLeftBearing()V

    .line 1432
    .line 1444
    .end local v11    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v12    # "glyphCount":I
    .end local v13    # "gi":I
    .end local v14    # "advance":F
    .end local v15    # "gc":I
    .end local v16    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v17    # "glyphLsb":F
    :cond_3
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 1445
    .local v10, "rsb":F
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 1447
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v11, v20

    .local v11, "i":I
    :goto_3
    move/from16 v20, v11

    if-ltz v20, :cond_5

    .line 1448
    move-object/from16 v20, v4

    move/from16 v21, v11

    aget-object v20, v20, v21

    move-object/from16 v12, v20

    .line 1449
    .local v12, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v20

    move/from16 v13, v20

    .line 1450
    .local v13, "glyphCount":I
    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v14, v20

    .local v14, "gi":I
    :goto_4
    move/from16 v20, v14

    if-ltz v20, :cond_a

    .line 1451
    move-object/from16 v20, v12

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/text/TextRun;->getAdvance(I)F

    move-result v20

    move/from16 v15, v20

    .line 1453
    .local v15, "advance":F
    move/from16 v20, v15

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    .line 1454
    move-object/from16 v20, v12

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/text/TextRun;->getGlyphCode(I)I

    move-result v20

    move/from16 v16, v20

    .line 1456
    .local v16, "gc":I
    move/from16 v20, v16

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1457
    move-object/from16 v20, v6

    move-object/from16 v17, v20

    .line 1458
    .local v17, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v20, v17

    if-nez v20, :cond_4

    .line 1459
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v20

    move-object/from16 v18, v20

    .line 1460
    .local v18, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v19, v20

    .line 1462
    .local v19, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v20, v19

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/PGFont;->getSize()F

    move-result v20

    move/from16 v7, v20

    .line 1463
    move-object/from16 v20, v19

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/PGFont;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v20

    move-object/from16 v17, v20

    .line 1465
    .end local v18    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v19    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_4
    move-object/from16 v20, v17

    move/from16 v21, v16

    move/from16 v22, v7

    move-object/from16 v23, v5

    invoke-interface/range {v20 .. v23}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v20

    .line 1466
    move-object/from16 v20, v5

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v21, v15

    sub-float v20, v20, v21

    move/from16 v18, v20

    .line 1467
    .local v18, "glyphRsb":F
    const/16 v20, 0x0

    move/from16 v21, v18

    move/from16 v22, v9

    sub-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    move/from16 v10, v20

    .line 1468
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->setRightBearing()V

    .line 1469
    .line 1479
    .end local v12    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v13    # "glyphCount":I
    .end local v14    # "gi":I
    .end local v15    # "advance":F
    .end local v16    # "gc":I
    .end local v17    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v18    # "glyphRsb":F
    :cond_5
    move-object/from16 v20, v3

    move/from16 v21, v8

    move/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/text/TextLine;->setSideBearings(FF)V

    .line 1480
    goto/16 :goto_0

    .line 1435
    .local v10, "i":I
    .local v11, "run":Lcom/sun/javafx/text/TextRun;
    .local v12, "glyphCount":I
    .local v13, "gi":I
    .local v14, "advance":F
    :cond_6
    move/from16 v20, v9

    move/from16 v21, v14

    add-float v20, v20, v21

    move/from16 v9, v20

    .line 1413
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1438
    .end local v14    # "advance":F
    :cond_7
    move/from16 v20, v12

    if-nez v20, :cond_8

    .line 1439
    move/from16 v20, v9

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v9, v20

    .line 1410
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1472
    .local v10, "rsb":F
    .local v11, "i":I
    .local v12, "run":Lcom/sun/javafx/text/TextRun;
    .local v13, "glyphCount":I
    .local v14, "gi":I
    .restart local v15    # "advance":F
    :cond_9
    move/from16 v20, v9

    move/from16 v21, v15

    add-float v20, v20, v21

    move/from16 v9, v20

    .line 1450
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    .line 1475
    .end local v15    # "advance":F
    :cond_a
    move/from16 v20, v13

    if-nez v20, :cond_b

    .line 1476
    move/from16 v20, v9

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v9, v20

    .line 1447
    :cond_b
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3
.end method

.method private copyCache()Z
    .locals 5

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/high16 v4, 0x3c0000

    and-int/2addr v3, v4

    move v1, v3

    .line 671
    .local v1, "align":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v4, 0x4000

    and-int/lit16 v3, v3, 0x4000

    move v2, v3

    .line 673
    .local v2, "boundsType":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move v3, v1

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createLine(III)Lcom/sun/javafx/text/TextLine;
    .locals 23

    .prologue
    .line 881
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move/from16 v3, p3

    .local v3, "startOffset":I
    move v13, v2

    move v14, v1

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v4, v13

    .line 882
    .local v4, "count":I
    move v13, v4

    new-array v13, v13, [Lcom/sun/javafx/text/TextRun;

    move-object v5, v13

    .line 883
    .local v5, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    move v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    if-ge v13, v14, :cond_0

    .line 884
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v14, v1

    move-object v15, v5

    const/16 v16, 0x0

    move/from16 v17, v4

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    :cond_0
    const/4 v13, 0x0

    move v6, v13

    .local v6, "width":F
    const/4 v13, 0x0

    move v7, v13

    .local v7, "ascent":F
    const/4 v13, 0x0

    move v8, v13

    .local v8, "descent":F
    const/4 v13, 0x0

    move v9, v13

    .line 889
    .local v9, "leading":F
    const/4 v13, 0x0

    move v10, v13

    .line 890
    .local v10, "length":I
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_0
    move v13, v11

    move-object v14, v5

    array-length v14, v14

    if-ge v13, v14, :cond_1

    .line 891
    move-object v13, v5

    move v14, v11

    aget-object v13, v13, v14

    move-object v12, v13

    .line 892
    .local v12, "run":Lcom/sun/javafx/text/TextRun;
    move v13, v6

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v14

    add-float/2addr v13, v14

    move v6, v13

    .line 893
    move v13, v7

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/text/TextRun;->getAscent()F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v7, v13

    .line 894
    move v13, v8

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/text/TextRun;->getDescent()F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move v8, v13

    .line 895
    move v13, v9

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/text/TextRun;->getLeading()F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move v9, v13

    .line 896
    move v13, v10

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/text/TextRun;->getLength()I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 890
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 898
    .end local v12    # "run":Lcom/sun/javafx/text/TextRun;
    :cond_1
    move v13, v6

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    move-object v13, v0

    move v14, v6

    iput v14, v13, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    .line 899
    :cond_2
    new-instance v13, Lcom/sun/javafx/text/TextLine;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move v15, v3

    move/from16 v16, v10

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v14 .. v21}, Lcom/sun/javafx/text/TextLine;-><init>(II[Lcom/sun/javafx/text/TextRun;FFFF)V

    move-object v0, v13

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method private ensureLayout()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    if-nez v1, :cond_0

    .line 223
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayout;->layout()V

    .line 225
    :cond_0
    return-void
.end method

.method private getCharCount()I
    .locals 6

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    array-length v3, v3

    move v0, v3

    .line 727
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    .local v1, "count":I
    .local v2, "i":I
    :goto_0
    return v0

    .line 723
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 724
    .restart local v1    # "count":I
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 725
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sun/javafx/text/TextLine;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 727
    :cond_1
    move v3, v1

    move v0, v3

    goto :goto_0
.end method

.method private getLineCount()I
    .locals 2

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0
.end method

.method private getLineIndex(F)I
    .locals 8

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "y":F
    const/4 v5, 0x0

    move v2, v5

    .line 658
    .local v2, "index":I
    const/4 v5, 0x0

    move v3, v5

    .line 659
    .local v3, "bottom":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/text/PrismTextLayout;->getLineCount()I

    move-result v5

    move v4, v5

    .line 660
    .local v4, "lineCount":I
    :goto_0
    move v5, v2

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 661
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    move v3, v5

    .line 662
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    if-ne v5, v6, :cond_0

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextLine;->getLeading()F

    move-result v6

    sub-float/2addr v5, v6

    move v3, v5

    .line 663
    :cond_0
    move v5, v3

    move v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 666
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .line 664
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMirroringWidth()F
    .locals 3

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    goto :goto_0
.end method

.method private getTabAdvance()F
    .locals 8

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    const/4 v6, 0x0

    move v1, v6

    .line 992
    .local v1, "spaceAdvance":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    if-eqz v6, :cond_2

    .line 994
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 995
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 996
    .local v3, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object v6, v3

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/PGFont;

    move-object v4, v6

    .line 997
    .local v4, "font":Lcom/sun/javafx/font/PGFont;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 998
    move-object v6, v4

    sget-object v7, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v6, v7}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v6

    move-object v5, v6

    .line 999
    .local v5, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v6, v5

    const/16 v7, 0x20

    invoke-interface {v6, v7}, Lcom/sun/javafx/font/FontStrike;->getCharAdvance(C)F

    move-result v6

    move v1, v6

    .line 994
    .line 1006
    .end local v2    # "i":I
    .end local v3    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v4    # "font":Lcom/sun/javafx/font/PGFont;
    .end local v5    # "strike":Lcom/sun/javafx/font/FontStrike;
    :cond_0
    :goto_1
    const/high16 v6, 0x41000000    # 8.0f

    move v7, v1

    mul-float/2addr v6, v7

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .line 994
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    .restart local v2    # "i":I
    .restart local v3    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .restart local v4    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1004
    .end local v2    # "i":I
    .end local v3    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v4    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    const/16 v7, 0x20

    invoke-interface {v6, v7}, Lcom/sun/javafx/font/FontStrike;->getCharAdvance(C)F

    move-result v6

    move v1, v6

    goto :goto_1
.end method

.method private getText()[C
    .locals 11

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    if-nez v6, :cond_1

    .line 919
    const/4 v6, 0x0

    move v1, v6

    .line 920
    .local v1, "count":I
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 921
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move v8, v2

    aget-object v7, v7, v8

    invoke-interface {v7}, Lcom/sun/javafx/scene/text/TextSpan;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move v1, v6

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_0
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [C

    iput-object v7, v6, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    .line 924
    const/4 v6, 0x0

    move v2, v6

    .line 925
    .local v2, "offset":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 926
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move v7, v3

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/TextSpan;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 927
    .local v4, "string":Ljava/lang/String;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 928
    .local v5, "length":I
    move-object v6, v4

    const/4 v7, 0x0

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 929
    move v6, v2

    move v7, v5

    add-int/2addr v6, v7

    move v2, v6

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 932
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v3    # "i":I
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "length":I
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method private initCache()V
    .locals 11

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 678
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    if-nez v2, :cond_0

    .line 679
    sget-object v2, Lcom/sun/javafx/text/PrismTextLayout;->stringCache:Ljava/util/Hashtable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/text/LayoutCache;

    move-object v1, v2

    .line 680
    .local v1, "cache":Lcom/sun/javafx/text/LayoutCache;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/text/LayoutCache;->font:Lcom/sun/javafx/font/PGFont;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/text/LayoutCache;->text:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    .line 682
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/text/LayoutCache;->runs:[Lcom/sun/javafx/text/TextRun;

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 683
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/text/LayoutCache;->runCount:I

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    .line 684
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/text/LayoutCache;->analysis:I

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 687
    .end local v1    # "cache":Lcom/sun/javafx/text/LayoutCache;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    if-eqz v2, :cond_1

    .line 688
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/text/PrismTextLayout;->copyCache()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget-object v2, v2, Lcom/sun/javafx/text/LayoutCache;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    if-ne v2, v3, :cond_1

    .line 697
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    new-array v3, v3, [Lcom/sun/javafx/text/TextRun;

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 698
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget-object v2, v2, Lcom/sun/javafx/text/LayoutCache;->runs:[Lcom/sun/javafx/text/TextRun;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 701
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget-object v2, v2, Lcom/sun/javafx/text/LayoutCache;->lines:[Lcom/sun/javafx/text/TextLine;

    if-eqz v2, :cond_1

    .line 702
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget-object v3, v3, Lcom/sun/javafx/text/LayoutCache;->runs:[Lcom/sun/javafx/text/TextRun;

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 703
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget v3, v3, Lcom/sun/javafx/text/LayoutCache;->runCount:I

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    .line 704
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget v4, v4, Lcom/sun/javafx/text/LayoutCache;->analysis:I

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 705
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget-object v3, v3, Lcom/sun/javafx/text/LayoutCache;->lines:[Lcom/sun/javafx/text/TextLine;

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    .line 706
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget v3, v3, Lcom/sun/javafx/text/LayoutCache;->layoutWidth:F

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    .line 707
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    iget v3, v3, Lcom/sun/javafx/text/LayoutCache;->layoutHeight:F

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    .line 708
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v2

    move v1, v2

    .line 709
    .local v1, "ascent":F
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    move v9, v1

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    goto :goto_0
.end method

.method private isMirrored()Z
    .locals 4

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    const/4 v2, 0x0

    move v1, v2

    .line 944
    .local v1, "mirrored":Z
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, 0x3c00

    and-int/lit16 v2, v2, 0x3c00

    sparse-switch v2, :sswitch_data_0

    .line 951
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .line 945
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :sswitch_0
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 946
    :sswitch_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 949
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, 0x100

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isSimpleLayout()Z
    .locals 6

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/high16 v5, 0x3c0000

    and-int/2addr v4, v5

    move v1, v4

    .line 937
    .local v1, "textAlignment":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v1

    const/high16 v5, 0x200000

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 938
    .local v2, "justify":Z
    const/16 v4, 0x18

    move v3, v4

    .line 939
    .local v3, "mask":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move v5, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .line 937
    .end local v2    # "justify":Z
    .end local v3    # "mask":I
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 939
    .restart local v2    # "justify":Z
    .restart local v3    # "mask":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private layout()V
    .locals 42

    .prologue
    .line 1011
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->initCache()V

    .line 1014
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1015
    :cond_0
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->getText()[C

    move-result-object v33

    move-object/from16 v3, v33

    .line 1018
    .local v3, "chars":[C
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x2

    and-int/lit8 v33, v33, 0x2

    if-eqz v33, :cond_f

    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->isSimpleLayout()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1019
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->reuseRuns()V

    .line 1024
    :goto_1
    const/16 v33, 0x0

    move-object/from16 v4, v33

    .line 1025
    .local v4, "layout":Lcom/sun/javafx/text/GlyphLayout;
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x10

    and-int/lit8 v33, v33, 0x10

    if-eqz v33, :cond_1

    .line 1026
    invoke-static {}, Lcom/sun/javafx/text/GlyphLayout;->getInstance()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v33

    move-object/from16 v4, v33

    .line 1029
    :cond_1
    const/16 v33, 0x0

    move/from16 v5, v33

    .line 1030
    .local v5, "tabAdvance":F
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x4

    and-int/lit8 v33, v33, 0x4

    if-eqz v33, :cond_2

    .line 1031
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->getTabAdvance()F

    move-result v33

    move/from16 v5, v33

    .line 1034
    :cond_2
    const/16 v33, 0x0

    move-object/from16 v6, v33

    .line 1035
    .local v6, "boundary":Ljava/text/BreakIterator;
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v33, v0

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_3

    .line 1036
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x50

    and-int/lit8 v33, v33, 0x50

    if-eqz v33, :cond_3

    .line 1037
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v33

    move-object/from16 v6, v33

    .line 1038
    move-object/from16 v33, v6

    new-instance v34, Lcom/sun/javafx/text/CharArrayIterator;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    move-object/from16 v36, v3

    invoke-direct/range {v35 .. v36}, Lcom/sun/javafx/text/CharArrayIterator;-><init>([C)V

    invoke-virtual/range {v33 .. v34}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 1041
    :cond_3
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/high16 v34, 0x3c0000

    and-int v33, v33, v34

    move/from16 v7, v33

    .line 1048
    .local v7, "textAlignment":I
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->isSimpleLayout()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1049
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    if-nez v33, :cond_4

    .line 1050
    move-object/from16 v33, v2

    new-instance v34, Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/text/LayoutCache;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    .line 1051
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->glyphs:[I

    .line 1052
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->advances:[F

    .line 1058
    :cond_4
    :goto_2
    const/16 v33, 0x0

    move/from16 v8, v33

    .line 1059
    .local v8, "lineWidth":F
    const/16 v33, 0x0

    move/from16 v9, v33

    .line 1060
    .local v9, "startIndex":I
    const/16 v33, 0x0

    move/from16 v10, v33

    .line 1061
    .local v10, "startOffset":I
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v33

    .line 1062
    .local v11, "linesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/text/TextLine;>;"
    const/16 v33, 0x0

    move/from16 v12, v33

    .local v12, "i":I
    :goto_3
    move/from16 v33, v12

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_19

    .line 1063
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    aget-object v33, v33, v34

    move-object/from16 v13, v33

    .line 1064
    .local v13, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v33, v2

    move-object/from16 v34, v13

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/text/PrismTextLayout;->shape(Lcom/sun/javafx/text/TextRun;[CLcom/sun/javafx/text/GlyphLayout;)V

    .line 1065
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isTab()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1066
    move/from16 v33, v8

    move/from16 v34, v5

    div-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v5

    mul-float v33, v33, v34

    move/from16 v14, v33

    .line 1067
    .local v14, "tabStop":F
    move-object/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v8

    sub-float v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/text/TextRun;->setWidth(F)V

    .line 1070
    .end local v14    # "tabStop":F
    :cond_5
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v33

    move/from16 v14, v33

    .line 1071
    .local v14, "runWidth":F
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v33, v0

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_d

    move/from16 v33, v8

    move/from16 v34, v14

    add-float v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v34, v0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_d

    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v33

    if-nez v33, :cond_d

    .line 1074
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v33

    move-object/from16 v34, v13

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v35, v0

    move/from16 v36, v8

    sub-float v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/text/TextRun;->getWrapIndex(F)I

    move-result v34

    add-int v33, v33, v34

    move/from16 v15, v33

    .line 1079
    .local v15, "hitOffset":I
    move/from16 v33, v15

    move/from16 v16, v33

    .line 1080
    .local v16, "offset":I
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v33

    move/from16 v17, v33

    .line 1081
    .local v17, "runEnd":I
    move/from16 v33, v16

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v34, v17

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    move-object/from16 v33, v3

    move/from16 v34, v16

    aget-char v33, v33, v34

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 1082
    add-int/lit8 v16, v16, 0x1

    .line 1090
    :cond_6
    move/from16 v33, v16

    move/from16 v18, v33

    .line 1091
    .local v18, "breakOffset":I
    move-object/from16 v33, v6

    if-eqz v33, :cond_12

    .line 1093
    move-object/from16 v33, v6

    move/from16 v34, v16

    invoke-virtual/range {v33 .. v34}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v33

    if-nez v33, :cond_7

    move-object/from16 v33, v3

    move/from16 v34, v16

    aget-char v33, v33, v34

    const/16 v34, 0x9

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    :cond_7
    move/from16 v33, v16

    :goto_4
    move/from16 v18, v33

    .line 1106
    :cond_8
    :goto_5
    move/from16 v33, v18

    move/from16 v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    move/from16 v33, v10

    move/from16 v18, v33

    .line 1109
    :cond_9
    move/from16 v33, v9

    move/from16 v19, v33

    .line 1110
    .local v19, "breakRunIndex":I
    const/16 v33, 0x0

    move-object/from16 v20, v33

    .line 1111
    .local v20, "breakRun":Lcom/sun/javafx/text/TextRun;
    :goto_6
    move/from16 v33, v19

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    .line 1112
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v19

    aget-object v33, v33, v34

    move-object/from16 v20, v33

    .line 1113
    move-object/from16 v33, v20

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v33

    move/from16 v34, v18

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_14

    .line 1120
    :cond_a
    move/from16 v33, v18

    move/from16 v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 1121
    move-object/from16 v33, v13

    move-object/from16 v20, v33

    .line 1122
    move/from16 v33, v12

    move/from16 v19, v33

    .line 1123
    move/from16 v33, v15

    move/from16 v18, v33

    .line 1126
    :cond_b
    move/from16 v33, v18

    move-object/from16 v34, v20

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v34

    sub-int v33, v33, v34

    move/from16 v21, v33

    .line 1130
    .local v21, "breakOffsetInRun":I
    move/from16 v33, v21

    if-nez v33, :cond_15

    move/from16 v33, v19

    move/from16 v34, v9

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    .line 1131
    move/from16 v33, v19

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v12, v33

    .line 1160
    :cond_c
    :goto_7
    move/from16 v33, v12

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v33

    if-nez v33, :cond_d

    .line 1161
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    aget-object v33, v33, v34

    move-object/from16 v13, v33

    .line 1162
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->setSoftbreak()V

    .line 1163
    move-object/from16 v33, v2

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v34, v0

    const/16 v35, 0x80

    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x80

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 1181
    .end local v15    # "hitOffset":I
    .end local v16    # "offset":I
    .end local v17    # "runEnd":I
    .end local v18    # "breakOffset":I
    .end local v19    # "breakRunIndex":I
    .end local v20    # "breakRun":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "breakOffsetInRun":I
    :cond_d
    move/from16 v33, v8

    move/from16 v34, v14

    add-float v33, v33, v34

    move/from16 v8, v33

    .line 1182
    move-object/from16 v33, v13

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isBreak()Z

    move-result v33

    if-eqz v33, :cond_e

    .line 1183
    move-object/from16 v33, v2

    move/from16 v34, v9

    move/from16 v35, v12

    move/from16 v36, v10

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/text/PrismTextLayout;->createLine(III)Lcom/sun/javafx/text/TextLine;

    move-result-object v33

    move-object/from16 v15, v33

    .line 1184
    .local v15, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v33, v11

    move-object/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v33

    .line 1185
    move/from16 v33, v12

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v9, v33

    .line 1186
    move/from16 v33, v10

    move-object/from16 v34, v15

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextLine;->getLength()I

    move-result v34

    add-int v33, v33, v34

    move/from16 v10, v33

    .line 1187
    const/16 v33, 0x0

    move/from16 v8, v33

    .line 1062
    .end local v15    # "line":Lcom/sun/javafx/text/TextLine;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1021
    .end local v4    # "layout":Lcom/sun/javafx/text/GlyphLayout;
    .end local v5    # "tabAdvance":F
    .end local v6    # "boundary":Ljava/text/BreakIterator;
    .end local v7    # "textAlignment":I
    .end local v8    # "lineWidth":F
    .end local v9    # "startIndex":I
    .end local v10    # "startOffset":I
    .end local v11    # "linesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/text/TextLine;>;"
    .end local v12    # "i":I
    .end local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v14    # "runWidth":F
    :cond_f
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->buildRuns([C)V

    goto/16 :goto_1

    .line 1055
    .restart local v4    # "layout":Lcom/sun/javafx/text/GlyphLayout;
    .restart local v5    # "tabAdvance":F
    .restart local v6    # "boundary":Ljava/text/BreakIterator;
    .restart local v7    # "textAlignment":I
    :cond_10
    move-object/from16 v33, v2

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    goto/16 :goto_2

    .line 1093
    .restart local v8    # "lineWidth":F
    .restart local v9    # "startIndex":I
    .restart local v10    # "startOffset":I
    .restart local v11    # "linesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/text/TextLine;>;"
    .restart local v12    # "i":I
    .restart local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .restart local v14    # "runWidth":F
    .local v15, "hitOffset":I
    .restart local v16    # "offset":I
    .restart local v17    # "runEnd":I
    .restart local v18    # "breakOffset":I
    :cond_11
    move-object/from16 v33, v6

    move/from16 v34, v16

    invoke-virtual/range {v33 .. v34}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v33

    goto/16 :goto_4

    .line 1096
    :cond_12
    move-object/from16 v33, v3

    move/from16 v34, v18

    aget-char v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v33

    move/from16 v19, v33

    .line 1097
    .local v19, "currentChar":Z
    :goto_8
    move/from16 v33, v18

    move/from16 v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_8

    .line 1098
    move-object/from16 v33, v3

    move/from16 v34, v18

    const/16 v35, 0x1

    add-int/lit8 v34, v34, -0x1

    aget-char v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v33

    move/from16 v20, v33

    .line 1099
    .local v20, "previousChar":Z
    move/from16 v33, v19

    if-nez v33, :cond_13

    move/from16 v33, v20

    if-eqz v33, :cond_13

    goto/16 :goto_5

    .line 1100
    :cond_13
    move/from16 v33, v20

    move/from16 v19, v33

    .line 1101
    add-int/lit8 v18, v18, -0x1

    .line 1102
    goto :goto_8

    .line 1114
    .local v19, "breakRunIndex":I
    .local v20, "breakRun":Lcom/sun/javafx/text/TextRun;
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1133
    .restart local v21    # "breakOffsetInRun":I
    :cond_15
    move/from16 v33, v19

    move/from16 v12, v33

    .line 1139
    move/from16 v33, v21

    if-nez v33, :cond_16

    .line 1140
    add-int/lit8 v21, v21, 0x1

    .line 1142
    :cond_16
    move/from16 v33, v21

    move-object/from16 v34, v20

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->getLength()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_c

    .line 1143
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_18

    .line 1144
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x40

    add-int/lit8 v33, v33, 0x40

    move/from16 v0, v33

    new-array v0, v0, [Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move-object/from16 v22, v33

    .line 1145
    .local v22, "newRuns":[Lcom/sun/javafx/text/TextRun;
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v35, v22

    const/16 v36, 0x0

    move/from16 v37, v12

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v33 .. v37}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v22

    move/from16 v36, v12

    const/16 v37, 0x2

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v38, v12

    sub-int v37, v37, v38

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    invoke-static/range {v33 .. v37}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    move-object/from16 v33, v2

    move-object/from16 v34, v22

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 1148
    .line 1151
    .end local v22    # "newRuns":[Lcom/sun/javafx/text/TextRun;
    :goto_9
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v20

    move/from16 v36, v21

    invoke-virtual/range {v35 .. v36}, Lcom/sun/javafx/text/TextRun;->split(I)Lcom/sun/javafx/text/TextRun;

    move-result-object v35

    aput-object v35, v33, v34

    .line 1152
    move-object/from16 v33, v20

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isComplex()Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1153
    move-object/from16 v33, v2

    move-object/from16 v34, v20

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/text/PrismTextLayout;->shape(Lcom/sun/javafx/text/TextRun;[CLcom/sun/javafx/text/GlyphLayout;)V

    .line 1155
    :cond_17
    move-object/from16 v33, v2

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v34, v0

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    goto/16 :goto_7

    .line 1149
    :cond_18
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v33, v0

    move/from16 v34, v12

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v35, v0

    move/from16 v36, v12

    const/16 v37, 0x2

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v37, v0

    move/from16 v38, v12

    sub-int v37, v37, v38

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    invoke-static/range {v33 .. v37}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 1190
    .end local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v14    # "runWidth":F
    .end local v15    # "hitOffset":I
    .end local v16    # "offset":I
    .end local v17    # "runEnd":I
    .end local v18    # "breakOffset":I
    .end local v19    # "breakRunIndex":I
    .end local v20    # "breakRun":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "breakOffsetInRun":I
    :cond_19
    move-object/from16 v33, v4

    if-eqz v33, :cond_1a

    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/GlyphLayout;->dispose()V

    .line 1192
    :cond_1a
    move-object/from16 v33, v11

    move-object/from16 v34, v2

    move/from16 v35, v9

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v36, v0

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v37, v10

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->createLine(III)Lcom/sun/javafx/text/TextLine;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v33

    .line 1193
    move-object/from16 v33, v2

    move-object/from16 v34, v11

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Lcom/sun/javafx/text/TextLine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    .line 1194
    move-object/from16 v33, v11

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    .line 1196
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(FF)F

    move-result v33

    move/from16 v12, v33

    .line 1197
    .local v12, "fullWidth":F
    const/16 v33, 0x0

    move/from16 v13, v33

    .line 1199
    .local v13, "lineY":F
    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 1200
    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v14, v33

    .line 1201
    .local v14, "align":F
    move/from16 v33, v7

    const/high16 v34, 0x100000

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    const/16 v33, 0x0

    move/from16 v14, v33

    .line 1206
    :cond_1b
    :goto_a
    move/from16 v33, v7

    const/high16 v34, 0x80000

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1c

    const/high16 v33, 0x3f000000    # 0.5f

    move/from16 v14, v33

    .line 1207
    :cond_1c
    const/16 v33, 0x0

    move/from16 v15, v33

    .local v15, "i":I
    :goto_b
    move/from16 v33, v15

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_29

    .line 1208
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v33, v0

    move/from16 v34, v15

    aget-object v33, v33, v34

    move-object/from16 v16, v33

    .line 1209
    .local v16, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextLine;->getStart()I

    move-result v33

    move/from16 v17, v33

    .line 1210
    .local v17, "lineStart":I
    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v33

    move-object/from16 v18, v33

    .line 1213
    .local v18, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v33, v12

    move-object/from16 v34, v18

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v34

    sub-float v33, v33, v34

    move/from16 v34, v14

    mul-float v33, v33, v34

    move/from16 v19, v33

    .line 1214
    .local v19, "lineX":F
    move-object/from16 v33, v16

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/text/TextLine;->setAlignment(F)V

    .line 1217
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move/from16 v33, v0

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_20

    move/from16 v33, v7

    const/high16 v34, 0x200000

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    const/16 v33, 0x1

    :goto_c
    move/from16 v20, v33

    .line 1218
    .local v20, "justify":Z
    move/from16 v33, v20

    if-eqz v33, :cond_23

    .line 1219
    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v33

    move-object/from16 v21, v33

    .line 1220
    .local v21, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v22, v33

    .line 1221
    .local v22, "lineRunCount":I
    move/from16 v33, v22

    if-lez v33, :cond_23

    move-object/from16 v33, v21

    move/from16 v34, v22

    const/16 v35, 0x1

    add-int/lit8 v34, v34, -0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->isSoftbreak()Z

    move-result v33

    if-eqz v33, :cond_23

    .line 1223
    move/from16 v33, v17

    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextLine;->getLength()I

    move-result v34

    add-int v33, v33, v34

    move/from16 v23, v33

    .line 1224
    .local v23, "lineEnd":I
    const/16 v33, 0x0

    move/from16 v24, v33

    .line 1225
    .local v24, "wsCount":I
    const/16 v33, 0x0

    move/from16 v25, v33

    .line 1226
    .local v25, "hitChar":Z
    move/from16 v33, v23

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v26, v33

    .local v26, "j":I
    :goto_d
    move/from16 v33, v26

    move/from16 v34, v17

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_21

    .line 1227
    move/from16 v33, v25

    if-nez v33, :cond_1d

    move-object/from16 v33, v3

    move/from16 v34, v26

    aget-char v33, v33, v34

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d

    const/16 v33, 0x1

    move/from16 v25, v33

    .line 1228
    :cond_1d
    move/from16 v33, v25

    if-eqz v33, :cond_1e

    move-object/from16 v33, v3

    move/from16 v34, v26

    aget-char v33, v33, v34

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    add-int/lit8 v24, v24, 0x1

    .line 1226
    :cond_1e
    add-int/lit8 v26, v26, -0x1

    goto :goto_d

    .line 1203
    .end local v14    # "align":F
    .end local v15    # "i":I
    .end local v16    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v17    # "lineStart":I
    .end local v18    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v19    # "lineX":F
    .end local v20    # "justify":Z
    .end local v21    # "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .end local v22    # "lineRunCount":I
    .end local v23    # "lineEnd":I
    .end local v24    # "wsCount":I
    .end local v25    # "hitChar":Z
    .end local v26    # "j":I
    :cond_1f
    const/16 v33, 0x0

    move/from16 v14, v33

    .line 1204
    .restart local v14    # "align":F
    move/from16 v33, v7

    const/high16 v34, 0x100000

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v14, v33

    goto/16 :goto_a

    .line 1217
    .restart local v15    # "i":I
    .restart local v16    # "line":Lcom/sun/javafx/text/TextLine;
    .restart local v17    # "lineStart":I
    .restart local v18    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .restart local v19    # "lineX":F
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_c

    .line 1230
    .restart local v20    # "justify":Z
    .restart local v21    # "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .restart local v22    # "lineRunCount":I
    .restart local v23    # "lineEnd":I
    .restart local v24    # "wsCount":I
    .restart local v25    # "hitChar":Z
    .restart local v26    # "j":I
    :cond_21
    move/from16 v33, v24

    if-eqz v33, :cond_23

    .line 1231
    move/from16 v33, v12

    move-object/from16 v34, v18

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v34

    sub-float v33, v33, v34

    move/from16 v34, v24

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    move/from16 v26, v33

    .line 1233
    .local v26, "inc":F
    const/16 v33, 0x0

    move/from16 v27, v33

    .local v27, "j":I
    :goto_e
    move/from16 v33, v27

    move/from16 v34, v22

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_22

    .line 1234
    move-object/from16 v33, v21

    move/from16 v34, v27

    aget-object v33, v33, v34

    move-object/from16 v28, v33

    .line 1235
    .local v28, "textRun":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v33, v28

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v33

    move/from16 v29, v33

    .line 1236
    .local v29, "runStart":I
    move-object/from16 v33, v28

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v33

    move/from16 v30, v33

    .line 1237
    .local v30, "runEnd":I
    move/from16 v33, v29

    move/from16 v31, v33

    .local v31, "k":I
    :goto_f
    move/from16 v33, v31

    move/from16 v34, v30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_26

    .line 1239
    move-object/from16 v33, v3

    move/from16 v34, v31

    aget-char v33, v33, v34

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_25

    .line 1240
    move-object/from16 v33, v28

    move/from16 v34, v31

    move/from16 v35, v29

    sub-int v34, v34, v35

    move/from16 v35, v26

    invoke-virtual/range {v33 .. v35}, Lcom/sun/javafx/text/TextRun;->justify(IF)V

    .line 1241
    add-int/lit8 v24, v24, -0x1

    move/from16 v33, v24

    if-nez v33, :cond_25

    .line 1245
    .end local v28    # "textRun":Lcom/sun/javafx/text/TextRun;
    .end local v29    # "runStart":I
    .end local v30    # "runEnd":I
    .end local v31    # "k":I
    :cond_22
    const/16 v33, 0x0

    move/from16 v19, v33

    .line 1246
    move-object/from16 v33, v16

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/text/TextLine;->setAlignment(F)V

    .line 1247
    move-object/from16 v33, v16

    move/from16 v34, v12

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/text/TextLine;->setWidth(F)V

    .line 1252
    .end local v21    # "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .end local v22    # "lineRunCount":I
    .end local v23    # "lineEnd":I
    .end local v24    # "wsCount":I
    .end local v25    # "hitChar":Z
    .end local v26    # "inc":F
    .end local v27    # "j":I
    :cond_23
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x8

    and-int/lit8 v33, v33, 0x8

    if-eqz v33, :cond_24

    .line 1253
    move-object/from16 v33, v2

    move-object/from16 v34, v16

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->reorderLine(Lcom/sun/javafx/text/TextLine;)V

    .line 1256
    :cond_24
    move-object/from16 v33, v2

    move-object/from16 v34, v16

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->computeSideBearings(Lcom/sun/javafx/text/TextLine;)V

    .line 1259
    move/from16 v33, v19

    move/from16 v21, v33

    .line 1260
    .local v21, "runX":F
    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v33

    move-object/from16 v22, v33

    .line 1261
    .local v22, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    const/16 v33, 0x0

    move/from16 v23, v33

    .local v23, "j":I
    :goto_10
    move/from16 v33, v23

    move-object/from16 v34, v22

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_27

    .line 1262
    move-object/from16 v33, v22

    move/from16 v34, v23

    aget-object v33, v33, v34

    move-object/from16 v24, v33

    .line 1263
    .local v24, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v33, v24

    move/from16 v34, v21

    move/from16 v35, v13

    invoke-virtual/range {v33 .. v35}, Lcom/sun/javafx/text/TextRun;->setLocation(FF)V

    .line 1264
    move-object/from16 v33, v24

    move-object/from16 v34, v16

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/text/TextRun;->setLine(Lcom/sun/javafx/text/TextLine;)V

    .line 1265
    move/from16 v33, v21

    move-object/from16 v34, v24

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v34

    add-float v33, v33, v34

    move/from16 v21, v33

    .line 1261
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 1237
    .local v21, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .local v22, "lineRunCount":I
    .local v23, "lineEnd":I
    .local v24, "wsCount":I
    .restart local v25    # "hitChar":Z
    .restart local v26    # "inc":F
    .restart local v27    # "j":I
    .restart local v28    # "textRun":Lcom/sun/javafx/text/TextRun;
    .restart local v29    # "runStart":I
    .restart local v30    # "runEnd":I
    .restart local v31    # "k":I
    :cond_25
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_f

    .line 1233
    :cond_26
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_e

    .line 1267
    .end local v24    # "wsCount":I
    .end local v25    # "hitChar":Z
    .end local v26    # "inc":F
    .end local v27    # "j":I
    .end local v28    # "textRun":Lcom/sun/javafx/text/TextRun;
    .end local v29    # "runStart":I
    .end local v30    # "runEnd":I
    .end local v31    # "k":I
    .local v21, "runX":F
    .local v22, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .local v23, "j":I
    :cond_27
    move/from16 v33, v15

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_28

    .line 1268
    move/from16 v33, v13

    move/from16 v34, v13

    move-object/from16 v35, v18

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v35

    add-float v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    move/from16 v35, v0

    add-float v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(FF)F

    move-result v33

    move/from16 v13, v33

    .line 1207
    :goto_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 1270
    :cond_28
    move/from16 v33, v13

    move-object/from16 v34, v18

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v34

    move-object/from16 v35, v16

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/text/TextLine;->getLeading()F

    move-result v35

    sub-float v34, v34, v35

    add-float v33, v33, v34

    move/from16 v13, v33

    goto :goto_11

    .line 1273
    .end local v16    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v17    # "lineStart":I
    .end local v18    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v19    # "lineX":F
    .end local v20    # "justify":Z
    .end local v21    # "runX":F
    .end local v22    # "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .end local v23    # "j":I
    :cond_29
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v33

    move/from16 v15, v33

    .line 1274
    .local v15, "ascent":F
    move-object/from16 v33, v2

    move/from16 v34, v13

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    .line 1275
    move-object/from16 v33, v2

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v36, v15

    const/16 v37, 0x0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    move/from16 v39, v0

    move/from16 v40, v15

    add-float v39, v39, v40

    const/16 v40, 0x0

    invoke-virtual/range {v34 .. v40}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 1279
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2c

    .line 1280
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2b

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/sun/javafx/text/LayoutCache;->valid:Z

    move/from16 v33, v0

    if-nez v33, :cond_2b

    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/text/PrismTextLayout;->copyCache()Z

    move-result v33

    if-nez v33, :cond_2b

    .line 1286
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->font:Lcom/sun/javafx/font/PGFont;

    .line 1287
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->text:[C

    .line 1288
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 1289
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/LayoutCache;->runCount:I

    .line 1290
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sun/javafx/text/LayoutCache;->lines:[Lcom/sun/javafx/text/TextLine;

    .line 1291
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/LayoutCache;->layoutWidth:F

    .line 1292
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/LayoutCache;->layoutHeight:F

    .line 1293
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v34, v0

    const/16 v35, 0x7ff

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/text/LayoutCache;->analysis:I

    .line 1294
    sget-object v33, Lcom/sun/javafx/text/PrismTextLayout;->CACHE_SIZE_LOCK:Ljava/lang/Object;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v16, v34

    monitor-enter v33

    .line 1295
    move-object/from16 v33, v3

    :try_start_0
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v17, v33

    .line 1296
    .local v17, "charCount":I
    sget v33, Lcom/sun/javafx/text/PrismTextLayout;->cacheSize:I

    move/from16 v34, v17

    add-int v33, v33, v34

    sget v34, Lcom/sun/javafx/text/PrismTextLayout;->MAX_CACHE_SIZE:I

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2a

    .line 1297
    sget-object v33, Lcom/sun/javafx/text/PrismTextLayout;->stringCache:Ljava/util/Hashtable;

    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->clear()V

    .line 1298
    const/16 v33, 0x0

    sput v33, Lcom/sun/javafx/text/PrismTextLayout;->cacheSize:I

    .line 1300
    :cond_2a
    sget-object v33, Lcom/sun/javafx/text/PrismTextLayout;->stringCache:Ljava/util/Hashtable;

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 1301
    sget v33, Lcom/sun/javafx/text/PrismTextLayout;->cacheSize:I

    move/from16 v34, v17

    add-int v33, v33, v34

    sput v33, Lcom/sun/javafx/text/PrismTextLayout;->cacheSize:I

    .line 1302
    move-object/from16 v33, v16

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    .end local v17    # "charCount":I
    :cond_2b
    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/sun/javafx/text/LayoutCache;->valid:Z

    .line 1306
    :cond_2c
    goto/16 :goto_0

    .line 1302
    :catchall_0
    move-exception v33

    move-object/from16 v32, v33

    move-object/from16 v33, v16

    :try_start_1
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v33, v32

    throw v33
.end method

.method private relayout()V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v1

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 100
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->layoutHeight:F

    iput v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    .line 101
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, -0x681

    and-int/lit16 v2, v2, -0x681

    iput v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    .line 103
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->shape:Lcom/sun/javafx/geom/Shape;

    .line 104
    return-void
.end method

.method private reorderLine(Lcom/sun/javafx/text/TextLine;)V
    .locals 11

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, p1

    .local v1, "line":Lcom/sun/javafx/text/TextLine;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v6

    move-object v2, v6

    .line 905
    .local v2, "runs":[Lcom/sun/javafx/text/TextRun;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 906
    .local v3, "length":I
    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    add-int/lit8 v3, v3, -0x1

    .line 909
    :cond_0
    move v6, v3

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 915
    :goto_0
    return-void

    .line 910
    :cond_1
    move v6, v3

    new-array v6, v6, [B

    move-object v4, v6

    .line 911
    .local v4, "levels":[B
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 912
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sun/javafx/text/TextRun;->getLevel()B

    move-result v8

    aput-byte v8, v6, v7

    .line 911
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 914
    :cond_2
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 915
    goto :goto_0
.end method

.method private reset()V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    .line 92
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 93
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, -0x800

    and-int/lit16 v2, v2, -0x800

    iput v2, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 94
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayout;->relayout()V

    .line 95
    return-void
.end method

.method private reuseRuns()V
    .locals 11

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    .line 968
    const/4 v4, 0x0

    move v1, v4

    .line 969
    .local v1, "index":I
    :goto_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 970
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 971
    .local v2, "run":Lcom/sun/javafx/text/TextRun;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 988
    .end local v2    # "run":Lcom/sun/javafx/text/TextRun;
    :cond_0
    return-void

    .line 972
    .restart local v2    # "run":Lcom/sun/javafx/text/TextRun;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v5, v1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 973
    add-int/lit8 v1, v1, 0x1

    .line 974
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextRun;->unwrap()Lcom/sun/javafx/text/TextRun;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    aput-object v6, v4, v5

    .line 976
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/text/TextRun;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 977
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/text/TextRun;->merge(Lcom/sun/javafx/text/TextRun;)V

    .line 978
    :goto_1
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 979
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 980
    .local v3, "nextRun":Lcom/sun/javafx/text/TextRun;
    move-object v4, v3

    if-nez v4, :cond_3

    .line 987
    .end local v3    # "nextRun":Lcom/sun/javafx/text/TextRun;
    :cond_2
    :goto_2
    goto :goto_0

    .line 981
    .restart local v3    # "nextRun":Lcom/sun/javafx/text/TextRun;
    :cond_3
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/text/TextRun;->merge(Lcom/sun/javafx/text/TextRun;)V

    .line 982
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move v5, v1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 983
    add-int/lit8 v1, v1, 0x1

    .line 984
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/text/TextRun;->isSplitLast()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 985
    :cond_4
    goto :goto_1
.end method

.method private shape(Lcom/sun/javafx/text/TextRun;[CLcom/sun/javafx/text/GlyphLayout;)V
    .locals 24

    .prologue
    .line 780
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v3, p1

    .local v3, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v4, p2

    .local v4, "chars":[C
    move-object/from16 v5, p3

    .local v5, "layout":Lcom/sun/javafx/text/GlyphLayout;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 781
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 878
    :goto_0
    return-void

    .line 782
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v18

    move-object/from16 v8, v18

    .line 783
    .local v8, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v7, v18

    .line 784
    .local v7, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v18, v7

    if-nez v18, :cond_1

    .line 785
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/scene/text/TextSpan;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v18

    move-object/from16 v9, v18

    .line 786
    .local v9, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/scene/text/TextSpan;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/text/TextRun;->setEmbedded(Lcom/sun/javafx/geom/RectBounds;I)V

    .line 787
    goto :goto_0

    .line 789
    .end local v9    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object/from16 v18, v7

    sget-object v19, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v18

    move-object/from16 v6, v18

    .line 796
    .end local v8    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .local v6, "strike":Lcom/sun/javafx/font/FontStrike;
    :goto_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getAscent()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_3

    .line 797
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v18

    move-object/from16 v8, v18

    .line 803
    .local v8, "m":Lcom/sun/javafx/font/Metrics;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x4000

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    const/16 v19, 0x4000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 804
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v18

    move/from16 v9, v18

    .line 810
    .local v9, "ascent":F
    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/PGFont;->getFamilyName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Segoe UI"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 811
    move/from16 v18, v9

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 813
    :cond_2
    move/from16 v18, v9

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 814
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 815
    .local v10, "descent":F
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getLineGap()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 816
    .local v11, "leading":F
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getCapHeight()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 817
    .local v12, "capHeight":F
    move/from16 v18, v9

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    sub-float v18, v18, v19

    move/from16 v13, v18

    .line 818
    .local v13, "topPadding":F
    move/from16 v18, v13

    move/from16 v19, v10

    cmpl-float v18, v18, v19

    if-lez v18, :cond_5

    .line 819
    move/from16 v18, v13

    move/from16 v10, v18

    .line 823
    :goto_2
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/text/TextRun;->setMetrics(FFF)V

    .line 824
    .line 829
    .end local v8    # "m":Lcom/sun/javafx/font/Metrics;
    .end local v9    # "ascent":F
    .end local v10    # "descent":F
    .end local v11    # "leading":F
    .end local v12    # "capHeight":F
    .end local v13    # "topPadding":F
    :cond_3
    :goto_3
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->isTab()Z

    move-result v18

    if-eqz v18, :cond_7

    goto/16 :goto_0

    .line 791
    .end local v6    # "strike":Lcom/sun/javafx/font/FontStrike;
    .end local v7    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 792
    .restart local v7    # "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .restart local v6    # "strike":Lcom/sun/javafx/font/FontStrike;
    goto/16 :goto_1

    .line 821
    .restart local v8    # "m":Lcom/sun/javafx/font/Metrics;
    .restart local v9    # "ascent":F
    .restart local v10    # "descent":F
    .restart local v11    # "leading":F
    .restart local v12    # "capHeight":F
    .restart local v13    # "topPadding":F
    :cond_5
    move/from16 v18, v9

    move/from16 v19, v13

    move/from16 v20, v10

    sub-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v9, v18

    goto :goto_2

    .line 825
    .end local v9    # "ascent":F
    .end local v10    # "descent":F
    .end local v11    # "leading":F
    .end local v12    # "capHeight":F
    .end local v13    # "topPadding":F
    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v19

    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v20

    move-object/from16 v21, v8

    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/font/Metrics;->getLineGap()F

    move-result v21

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/text/TextRun;->setMetrics(FFF)V

    goto :goto_3

    .line 830
    .end local v8    # "m":Lcom/sun/javafx/font/Metrics;
    :cond_7
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v18

    if-eqz v18, :cond_8

    goto/16 :goto_0

    .line 831
    :cond_8
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v18

    if-lez v18, :cond_9

    goto/16 :goto_0

    .line 832
    :cond_9
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->isComplex()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 834
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move-object/from16 v22, v4

    invoke-virtual/range {v18 .. v22}, Lcom/sun/javafx/text/GlyphLayout;->layout(Lcom/sun/javafx/text/TextRun;Lcom/sun/javafx/font/PGFont;Lcom/sun/javafx/font/FontStrike;[C)V

    .line 878
    :goto_4
    goto/16 :goto_0

    .line 836
    :cond_a
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontStrike;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v18

    move-object/from16 v8, v18

    .line 837
    .local v8, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v18

    move/from16 v9, v18

    .line 838
    .local v9, "start":I
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getLength()I

    move-result v18

    move/from16 v10, v18

    .line 841
    .local v10, "length":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 842
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v18

    move/from16 v11, v18

    .line 843
    .local v11, "fontSize":F
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontResource;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v18

    move-object/from16 v12, v18

    .line 846
    .local v12, "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move/from16 v18, v10

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 847
    .local v13, "glyphs":[I
    move-object/from16 v18, v12

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    invoke-virtual/range {v18 .. v22}, Lcom/sun/javafx/font/CharToGlyphMapper;->charsToGlyphs(II[C[I)V

    .line 848
    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    shl-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    .line 849
    .local v14, "positions":[F
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 850
    .local v15, "xadvance":F
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_5
    move/from16 v18, v16

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 851
    move-object/from16 v18, v8

    move-object/from16 v19, v13

    move/from16 v20, v16

    aget v19, v19, v20

    move/from16 v20, v11

    invoke-interface/range {v18 .. v20}, Lcom/sun/javafx/font/FontResource;->getAdvance(IF)F

    move-result v18

    move/from16 v17, v18

    .line 852
    .local v17, "width":F
    move-object/from16 v18, v14

    move/from16 v19, v16

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    move/from16 v20, v15

    aput v20, v18, v19

    .line 854
    move/from16 v18, v15

    move/from16 v19, v17

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 850
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 856
    .end local v17    # "width":F
    :cond_b
    move-object/from16 v18, v14

    move/from16 v19, v10

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    move/from16 v20, v15

    aput v20, v18, v19

    .line 857
    move-object/from16 v18, v3

    move/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/sun/javafx/text/TextRun;->shape(I[I[F[I)V

    .line 858
    goto/16 :goto_4

    .line 862
    .end local v11    # "fontSize":F
    .end local v12    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v13    # "glyphs":[I
    .end local v14    # "positions":[F
    .end local v15    # "xadvance":F
    .end local v16    # "i":I
    :cond_c
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/text/LayoutCache;->valid:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 863
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v18

    move/from16 v11, v18

    .line 864
    .restart local v11    # "fontSize":F
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontResource;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v18

    move-object/from16 v12, v18

    .line 865
    .restart local v12    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object/from16 v18, v12

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/text/LayoutCache;->glyphs:[I

    move-object/from16 v22, v0

    move/from16 v23, v9

    invoke-virtual/range {v18 .. v23}, Lcom/sun/javafx/font/CharToGlyphMapper;->charsToGlyphs(II[C[II)V

    .line 866
    move/from16 v18, v9

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 867
    .local v13, "end":I
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 868
    .local v14, "width":F
    move/from16 v18, v9

    move/from16 v15, v18

    .local v15, "i":I
    :goto_6
    move/from16 v18, v15

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 869
    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/text/LayoutCache;->glyphs:[I

    move-object/from16 v19, v0

    move/from16 v20, v15

    aget v19, v19, v20

    move/from16 v20, v11

    invoke-interface/range {v18 .. v20}, Lcom/sun/javafx/font/FontResource;->getAdvance(IF)F

    move-result v18

    move/from16 v16, v18

    .line 870
    .local v16, "adv":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/LayoutCache;->advances:[F

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v16

    aput v20, v18, v19

    .line 871
    move/from16 v18, v14

    move/from16 v19, v16

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 868
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 873
    .end local v16    # "adv":F
    :cond_d
    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/text/TextRun;->setWidth(F)V

    .line 875
    .end local v11    # "fontSize":F
    .end local v12    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v13    # "end":I
    .end local v14    # "width":F
    .end local v15    # "i":I
    :cond_e
    move-object/from16 v18, v3

    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/LayoutCache;->glyphs:[I

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->layoutCache:Lcom/sun/javafx/text/LayoutCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/text/LayoutCache;->advances:[F

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/text/TextRun;->shape(I[I[F)V

    goto/16 :goto_4
.end method


# virtual methods
.method public addTextRun(Lcom/sun/javafx/text/TextRun;)V
    .locals 10

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, p1

    .local v1, "run":Lcom/sun/javafx/text/TextRun;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 756
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v3, v3

    const/16 v4, 0x40

    add-int/lit8 v3, v3, 0x40

    new-array v3, v3, [Lcom/sun/javafx/text/TextRun;

    move-object v2, v3

    .line 757
    .local v2, "newRuns":[Lcom/sun/javafx/text/TextRun;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    .line 760
    .end local v2    # "newRuns":[Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->runs:[Lcom/sun/javafx/text/TextRun;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 761
    return-void
.end method

.method public getBounds()Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 247
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->logicalBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/scene/text/TextSpan;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 28

    .prologue
    .line 251
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v3, p1

    .local v3, "filter":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v4, p2

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 252
    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v5, v20

    .line 253
    .local v5, "left":F
    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v6, v20

    .line 254
    .local v6, "top":F
    const/high16 v20, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v7, v20

    .line 255
    .local v7, "right":F
    const/high16 v20, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v8, v20

    .line 256
    .local v8, "bottom":F
    move-object/from16 v20, v3

    if-eqz v20, :cond_9

    .line 257
    const/16 v20, 0x0

    move/from16 v9, v20

    .local v9, "i":I
    :goto_0
    move/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 258
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v20, v0

    move/from16 v21, v9

    aget-object v20, v20, v21

    move-object/from16 v10, v20

    .line 259
    .local v10, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v20

    move-object/from16 v11, v20

    .line 260
    .local v11, "lineRuns":[Lcom/sun/javafx/text/TextRun;
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "j":I
    :goto_1
    move/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 261
    move-object/from16 v20, v11

    move/from16 v21, v12

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 262
    .local v13, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v20

    move-object/from16 v14, v20

    .line 263
    .local v14, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v20, v14

    move-object/from16 v21, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 260
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 264
    :cond_1
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v20

    move-object/from16 v15, v20

    .line 265
    .local v15, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v16, v20

    .line 266
    .local v16, "runLeft":F
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->isLeftBearing()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 267
    move/from16 v20, v16

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextLine;->getLeftSideBearing()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v16, v20

    .line 269
    :cond_2
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 270
    .local v17, "runRight":F
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->isRightBearing()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 271
    move/from16 v20, v17

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextLine;->getRightSideBearing()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 273
    :cond_3
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v18, v20

    .line 274
    .local v18, "runTop":F
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v21

    add-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v19, v20

    .line 275
    .local v19, "runBottom":F
    move/from16 v20, v16

    move/from16 v21, v5

    cmpg-float v20, v20, v21

    if-gez v20, :cond_4

    move/from16 v20, v16

    move/from16 v5, v20

    .line 276
    :cond_4
    move/from16 v20, v18

    move/from16 v21, v6

    cmpg-float v20, v20, v21

    if-gez v20, :cond_5

    move/from16 v20, v18

    move/from16 v6, v20

    .line 277
    :cond_5
    move/from16 v20, v17

    move/from16 v21, v7

    cmpl-float v20, v20, v21

    if-lez v20, :cond_6

    move/from16 v20, v17

    move/from16 v7, v20

    .line 278
    :cond_6
    move/from16 v20, v19

    move/from16 v21, v8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_0

    move/from16 v20, v19

    move/from16 v8, v20

    goto/16 :goto_2

    .line 257
    .end local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v14    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v15    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v16    # "runLeft":F
    .end local v17    # "runRight":F
    .end local v18    # "runTop":F
    .end local v19    # "runBottom":F
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 299
    .end local v9    # "i":I
    .end local v10    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v11    # "lineRuns":[Lcom/sun/javafx/text/TextRun;
    .end local v12    # "j":I
    :cond_8
    :goto_3
    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    const/16 v23, 0x0

    move/from16 v24, v7

    move/from16 v25, v8

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v2

    .line 282
    .restart local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_9
    const/16 v20, 0x0

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    move/from16 v8, v21

    move/from16 v6, v20

    .line 283
    const/16 v20, 0x0

    move/from16 v9, v20

    .restart local v9    # "i":I
    :goto_4
    move/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 284
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v20, v0

    move/from16 v21, v9

    aget-object v20, v20, v21

    move-object/from16 v10, v20

    .line 285
    .restart local v10    # "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v20

    move-object/from16 v11, v20

    .line 286
    .local v11, "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v20

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextLine;->getLeftSideBearing()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v12, v20

    .line 287
    .local v12, "lineLeft":F
    move/from16 v20, v12

    move/from16 v21, v5

    cmpg-float v20, v20, v21

    if-gez v20, :cond_a

    move/from16 v20, v12

    move/from16 v5, v20

    .line 288
    :cond_a
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v20

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextLine;->getRightSideBearing()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v13, v20

    .line 289
    .local v13, "lineRight":F
    move/from16 v20, v13

    move/from16 v21, v7

    cmpl-float v20, v20, v21

    if-lez v20, :cond_b

    move/from16 v20, v13

    move/from16 v7, v20

    .line 290
    :cond_b
    move/from16 v20, v8

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v21

    add-float v20, v20, v21

    move/from16 v8, v20

    .line 283
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 292
    .end local v10    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v11    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v12    # "lineLeft":F
    .end local v13    # "lineRight":F
    :cond_c
    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 293
    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v20

    move/from16 v9, v20

    .line 294
    .local v9, "width":F
    move/from16 v20, v5

    move/from16 v10, v20

    .line 295
    .local v10, "bearing":F
    move/from16 v20, v9

    move/from16 v21, v7

    sub-float v20, v20, v21

    move/from16 v5, v20

    .line 296
    move/from16 v20, v9

    move/from16 v21, v10

    sub-float v20, v20, v21

    move/from16 v7, v20

    goto/16 :goto_3
.end method

.method public getCaretShape(IZFF)[Ljavafx/scene/shape/PathElement;
    .locals 36

    .prologue
    .line 304
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v4, p1

    .local v4, "offset":I
    move/from16 v5, p2

    .local v5, "isLeading":Z
    move/from16 v6, p3

    .local v6, "x":F
    move/from16 v7, p4

    .local v7, "y":F
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 305
    const/16 v26, 0x0

    move/from16 v8, v26

    .line 306
    .local v8, "lineIndex":I
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->getLineCount()I

    move-result v26

    move/from16 v9, v26

    .line 307
    .local v9, "lineCount":I
    :goto_0
    move/from16 v26, v8

    move/from16 v27, v9

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 308
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v26, v0

    move/from16 v27, v8

    aget-object v26, v26, v27

    move-object/from16 v10, v26

    .line 309
    .local v10, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextLine;->getStart()I

    move-result v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/text/TextLine;->getLength()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v11, v26

    .line 310
    .local v11, "lineEnd":I
    move/from16 v26, v11

    move/from16 v27, v4

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 313
    .end local v10    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v11    # "lineEnd":I
    :cond_0
    const/16 v26, -0x1

    move/from16 v10, v26

    .line 314
    .local v10, "sliptCaretOffset":I
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 315
    .local v11, "level":I
    const/16 v26, 0x0

    move/from16 v12, v26

    .local v12, "lineX":F
    const/16 v26, 0x0

    move/from16 v13, v26

    .local v13, "lineY":F
    const/16 v26, 0x0

    move/from16 v14, v26

    .line 316
    .local v14, "lineHeight":F
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v26, v0

    move/from16 v27, v8

    aget-object v26, v26, v27

    move-object/from16 v15, v26

    .line 317
    .local v15, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v26

    move-object/from16 v16, v26

    .line 318
    .local v16, "runs":[Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v16

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v17, v26

    .line 319
    .local v17, "runCount":I
    const/16 v26, -0x1

    move/from16 v18, v26

    .line 320
    .local v18, "runIndex":I
    const/16 v26, 0x0

    move/from16 v19, v26

    .local v19, "i":I
    :goto_1
    move/from16 v26, v19

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 321
    move-object/from16 v26, v16

    move/from16 v27, v19

    aget-object v26, v26, v27

    move-object/from16 v20, v26

    .line 322
    .local v20, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v26

    move/from16 v21, v26

    .line 323
    .local v21, "runStart":I
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v26

    move/from16 v22, v26

    .line 324
    .local v22, "runEnd":I
    move/from16 v26, v21

    move/from16 v27, v4

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_7

    move/from16 v26, v4

    move/from16 v27, v22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 325
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v26

    if-nez v26, :cond_1

    .line 326
    move/from16 v26, v19

    move/from16 v18, v26

    .line 331
    .end local v20    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "runStart":I
    .end local v22    # "runEnd":I
    :cond_1
    move/from16 v26, v18

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 332
    move-object/from16 v26, v16

    move/from16 v27, v18

    aget-object v26, v26, v27

    move-object/from16 v19, v26

    .line 333
    .local v19, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v26

    move/from16 v20, v26

    .line 334
    .local v20, "runStart":I
    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v26

    move-object/from16 v21, v26

    .line 335
    .local v21, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v26, v0

    move-object/from16 v27, v19

    move/from16 v28, v4

    move/from16 v29, v20

    sub-int v28, v28, v29

    move/from16 v29, v5

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/text/TextRun;->getXAtOffset(IZ)F

    move-result v27

    add-float v26, v26, v27

    move/from16 v12, v26

    .line 336
    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v26, v0

    move/from16 v13, v26

    .line 337
    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v26

    move/from16 v14, v26

    .line 339
    move/from16 v26, v5

    if-eqz v26, :cond_8

    .line 340
    move/from16 v26, v18

    if-lez v26, :cond_2

    move/from16 v26, v4

    move/from16 v27, v20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 341
    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLevel()B

    move-result v26

    move/from16 v11, v26

    .line 342
    move/from16 v26, v4

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v10, v26

    .line 351
    .line 371
    .end local v19    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v20    # "runStart":I
    :cond_2
    :goto_2
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 372
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v26

    move/from16 v27, v12

    sub-float v26, v26, v27

    move/from16 v12, v26

    .line 374
    :cond_3
    move/from16 v26, v12

    move/from16 v27, v6

    add-float v26, v26, v27

    move/from16 v12, v26

    .line 375
    move/from16 v26, v13

    move/from16 v27, v7

    add-float v26, v26, v27

    move/from16 v13, v26

    .line 376
    move/from16 v26, v10

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 377
    const/16 v26, 0x0

    move/from16 v19, v26

    .end local v21    # "location":Lcom/sun/javafx/geom/Point2D;
    .local v19, "i":I
    :goto_3
    move/from16 v26, v19

    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 378
    move-object/from16 v26, v16

    move/from16 v27, v19

    aget-object v26, v26, v27

    move-object/from16 v20, v26

    .line 379
    .local v20, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v26

    move/from16 v21, v26

    .line 380
    .local v21, "runStart":I
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v26

    move/from16 v22, v26

    .line 381
    .restart local v22    # "runEnd":I
    move/from16 v26, v21

    move/from16 v27, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_e

    move/from16 v26, v10

    move/from16 v27, v22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 382
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLevel()B

    move-result v26

    const/16 v27, 0x1

    and-int/lit8 v26, v26, 0x1

    move/from16 v27, v11

    const/16 v28, 0x1

    and-int/lit8 v27, v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    .line 383
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v26

    move-object/from16 v23, v26

    .line 384
    .local v23, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v26, v0

    move/from16 v24, v26

    .line 385
    .local v24, "lineX2":F
    move/from16 v26, v5

    if-eqz v26, :cond_d

    .line 386
    move/from16 v26, v11

    const/16 v27, 0x1

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    move/from16 v26, v24

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v27

    add-float v26, v26, v27

    move/from16 v24, v26

    .line 390
    :cond_4
    :goto_4
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 391
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v26

    move/from16 v27, v24

    sub-float v26, v26, v27

    move/from16 v24, v26

    .line 393
    :cond_5
    move/from16 v26, v24

    move/from16 v27, v6

    add-float v26, v26, v27

    move/from16 v24, v26

    .line 394
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v0

    move-object/from16 v25, v26

    .line 395
    .local v25, "result":[Ljavafx/scene/shape/PathElement;
    move-object/from16 v26, v25

    const/16 v27, 0x0

    new-instance v28, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v12

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 396
    move-object/from16 v26, v25

    const/16 v27, 0x1

    new-instance v28, Ljavafx/scene/shape/LineTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v12

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v33, v14

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 397
    move-object/from16 v26, v25

    const/16 v27, 0x2

    new-instance v28, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v24

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v33, v14

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 398
    move-object/from16 v26, v25

    const/16 v27, 0x3

    new-instance v28, Ljavafx/scene/shape/LineTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v24

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v33, v14

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 399
    move-object/from16 v26, v25

    move-object/from16 v3, v26

    .line 407
    .end local v3    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    .end local v19    # "i":I
    .end local v20    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "runStart":I
    .end local v22    # "runEnd":I
    .end local v23    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v24    # "lineX2":F
    .end local v25    # "result":[Ljavafx/scene/shape/PathElement;
    :goto_5
    return-object v3

    .line 311
    .end local v12    # "lineX":F
    .end local v13    # "lineY":F
    .end local v14    # "lineHeight":F
    .end local v15    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v16    # "runs":[Lcom/sun/javafx/text/TextRun;
    .end local v17    # "runCount":I
    .end local v18    # "runIndex":I
    .restart local v3    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    .local v10, "line":Lcom/sun/javafx/text/TextLine;
    .local v11, "lineEnd":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 312
    goto/16 :goto_0

    .line 320
    .local v10, "sliptCaretOffset":I
    .local v11, "level":I
    .restart local v12    # "lineX":F
    .restart local v13    # "lineY":F
    .restart local v14    # "lineHeight":F
    .restart local v15    # "line":Lcom/sun/javafx/text/TextLine;
    .restart local v16    # "runs":[Lcom/sun/javafx/text/TextRun;
    .restart local v17    # "runCount":I
    .restart local v18    # "runIndex":I
    .restart local v19    # "i":I
    .restart local v20    # "run":Lcom/sun/javafx/text/TextRun;
    .restart local v21    # "runStart":I
    .restart local v22    # "runEnd":I
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 345
    .end local v22    # "runEnd":I
    .local v19, "run":Lcom/sun/javafx/text/TextRun;
    .local v20, "runStart":I
    .local v21, "location":Lcom/sun/javafx/geom/Point2D;
    :cond_8
    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v26

    move/from16 v22, v26

    .line 346
    .restart local v22    # "runEnd":I
    move/from16 v26, v18

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    move/from16 v26, v4

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v27, v22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 347
    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLevel()B

    move-result v26

    move/from16 v11, v26

    .line 348
    move/from16 v26, v4

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v10, v26

    goto/16 :goto_2

    .line 353
    .end local v20    # "runStart":I
    .end local v21    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v22    # "runEnd":I
    .local v19, "i":I
    :cond_9
    const/16 v26, 0x0

    move/from16 v19, v26

    .line 356
    .local v19, "maxOffset":I
    const/16 v26, 0x0

    move/from16 v18, v26

    .line 357
    const/16 v26, 0x0

    move/from16 v20, v26

    .local v20, "i":I
    :goto_6
    move/from16 v26, v20

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 358
    move-object/from16 v26, v16

    move/from16 v27, v20

    aget-object v26, v26, v27

    move-object/from16 v21, v26

    .line 360
    .local v21, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v26

    move/from16 v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v26

    if-nez v26, :cond_a

    .line 361
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v26

    move/from16 v19, v26

    .line 362
    move/from16 v26, v20

    move/from16 v18, v26

    .line 357
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 365
    .end local v21    # "run":Lcom/sun/javafx/text/TextRun;
    :cond_b
    move-object/from16 v26, v16

    move/from16 v27, v18

    aget-object v26, v26, v27

    move-object/from16 v20, v26

    .line 366
    .local v20, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v26

    move-object/from16 v21, v26

    .line 367
    .local v21, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v26, v0

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v27

    if-eqz v27, :cond_c

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v27

    :goto_7
    add-float v26, v26, v27

    move/from16 v12, v26

    .line 368
    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v26, v0

    move/from16 v13, v26

    .line 369
    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v26

    move/from16 v14, v26

    goto/16 :goto_2

    .line 367
    :cond_c
    const/16 v27, 0x0

    goto :goto_7

    .line 388
    .local v19, "i":I
    .local v21, "runStart":I
    .restart local v22    # "runEnd":I
    .restart local v23    # "location":Lcom/sun/javafx/geom/Point2D;
    .restart local v24    # "lineX2":F
    :cond_d
    move/from16 v26, v11

    const/16 v27, 0x1

    and-int/lit8 v26, v26, 0x1

    if-nez v26, :cond_4

    move/from16 v26, v24

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v27

    add-float v26, v26, v27

    move/from16 v24, v26

    goto/16 :goto_4

    .line 377
    .end local v23    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v24    # "lineX2":F
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 404
    .end local v19    # "i":I
    .end local v20    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "runStart":I
    .end local v22    # "runEnd":I
    :cond_f
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v0

    move-object/from16 v19, v26

    .line 405
    .local v19, "result":[Ljavafx/scene/shape/PathElement;
    move-object/from16 v26, v19

    const/16 v27, 0x0

    new-instance v28, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v12

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 406
    move-object/from16 v26, v19

    const/16 v27, 0x1

    new-instance v28, Ljavafx/scene/shape/LineTo;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    move/from16 v30, v12

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v13

    move/from16 v33, v14

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v28, v26, v27

    .line 407
    move-object/from16 v26, v19

    move-object/from16 v3, v26

    goto/16 :goto_5
.end method

.method public getDirection()I
    .locals 3

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 740
    const/4 v1, 0x0

    move v0, v1

    .line 751
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return v0

    .line 742
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v2, 0x800

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 743
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 745
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v2, 0x1000

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 746
    const/4 v1, -0x2

    move v0, v1

    goto :goto_0

    .line 748
    :cond_2
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v2, 0x2000

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_3

    .line 749
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0

    .line 751
    :cond_3
    const/4 v1, -0x2

    move v0, v1

    goto :goto_0
.end method

.method public getFont()Lcom/sun/javafx/font/PGFont;
    .locals 2

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method public getHitInfo(FF)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 16

    .prologue
    .line 411
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 412
    new-instance v10, Lcom/sun/javafx/scene/text/HitInfo;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/sun/javafx/scene/text/HitInfo;-><init>()V

    move-object v3, v10

    .line 413
    .local v3, "info":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v10, v0

    move v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/text/PrismTextLayout;->getLineIndex(F)I

    move-result v10

    move v4, v10

    .line 414
    .local v4, "lineIndex":I
    move v10, v4

    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/javafx/text/PrismTextLayout;->getLineCount()I

    move-result v11

    if-lt v10, v11, :cond_0

    .line 415
    move-object v10, v3

    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/javafx/text/PrismTextLayout;->getCharCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 444
    :goto_0
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0

    .line 417
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 418
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v10

    move v11, v1

    sub-float/2addr v10, v11

    move v1, v10

    .line 420
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move v11, v4

    aget-object v10, v10, v11

    move-object v5, v10

    .line 421
    .local v5, "line":Lcom/sun/javafx/text/TextLine;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v10

    move-object v6, v10

    .line 422
    .local v6, "runs":[Lcom/sun/javafx/text/TextRun;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v10

    move-object v7, v10

    .line 423
    .local v7, "bounds":Lcom/sun/javafx/geom/RectBounds;
    const/4 v10, 0x0

    move-object v8, v10

    .line 424
    .local v8, "run":Lcom/sun/javafx/text/TextRun;
    move v10, v1

    move-object v11, v7

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v11

    sub-float/2addr v10, v11

    move v1, v10

    .line 426
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move-object v11, v6

    array-length v11, v11

    if-ge v10, v11, :cond_2

    .line 427
    move-object v10, v6

    move v11, v9

    aget-object v10, v10, v11

    move-object v8, v10

    .line 428
    move v10, v1

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 434
    :cond_2
    :goto_2
    move-object v10, v8

    if-eqz v10, :cond_7

    .line 435
    const/4 v10, 0x1

    new-array v10, v10, [I

    move-object v9, v10

    .line 436
    .local v9, "trailing":[I
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v11

    move-object v12, v8

    move v13, v1

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/text/TextRun;->getOffsetAtX(F[I)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 437
    move-object v10, v3

    move-object v11, v9

    const/4 v12, 0x0

    aget v11, v11, v12

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 438
    goto :goto_0

    .line 429
    .local v9, "i":I
    :cond_3
    move v10, v9

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v6

    array-length v11, v11

    if-ge v10, v11, :cond_5

    .line 430
    move-object v10, v6

    move v11, v9

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .line 431
    :cond_4
    move v10, v1

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v11

    sub-float/2addr v10, v11

    move v1, v10

    .line 426
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 437
    .local v9, "trailing":[I
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 440
    .local v9, "i":I
    :cond_7
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextLine;->getStart()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 441
    move-object v10, v3

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    goto/16 :goto_0
.end method

.method public getLines()[Lcom/sun/javafx/scene/text/TextLine;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 229
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method public getRange(IIIFF)[Ljavafx/scene/shape/PathElement;
    .locals 45

    .prologue
    .line 449
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v3, p1

    .local v3, "start":I
    move/from16 v4, p2

    .local v4, "end":I
    move/from16 v5, p3

    .local v5, "type":I
    move/from16 v6, p4

    .local v6, "x":F
    move/from16 v7, p5

    .local v7, "y":F
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 450
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->getLineCount()I

    move-result v37

    move/from16 v8, v37

    .line 451
    .local v8, "lineCount":I
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v44, v37

    move-object/from16 v37, v44

    move-object/from16 v38, v44

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v37

    .line 452
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/shape/PathElement;>;"
    const/16 v37, 0x0

    move/from16 v10, v37

    .line 454
    .local v10, "lineY":F
    const/16 v37, 0x0

    move/from16 v11, v37

    .local v11, "lineIndex":I
    :goto_0
    move/from16 v37, v11

    move/from16 v38, v8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    .line 455
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v37, v0

    move/from16 v38, v11

    aget-object v37, v37, v38

    move-object/from16 v12, v37

    .line 456
    .local v12, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v37

    move-object/from16 v13, v37

    .line 457
    .local v13, "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextLine;->getStart()I

    move-result v37

    move/from16 v14, v37

    .line 458
    .local v14, "lineStart":I
    move/from16 v37, v14

    move/from16 v38, v4

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_1

    .line 573
    .end local v12    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v13    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v14    # "lineStart":I
    :cond_0
    move-object/from16 v37, v9

    move-object/from16 v38, v9

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v2, v37

    .end local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v2

    .line 459
    .restart local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    .restart local v12    # "line":Lcom/sun/javafx/text/TextLine;
    .restart local v13    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .restart local v14    # "lineStart":I
    :cond_1
    move/from16 v37, v14

    move-object/from16 v38, v12

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/text/TextLine;->getLength()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v15, v37

    .line 460
    .local v15, "lineEnd":I
    move/from16 v37, v3

    move/from16 v38, v15

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2

    .line 461
    move/from16 v37, v10

    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v38

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    move/from16 v39, v0

    add-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v10, v37

    .line 454
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 472
    :cond_2
    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v37

    move-object/from16 v16, v37

    .line 473
    .local v16, "runs":[Lcom/sun/javafx/text/TextRun;
    move/from16 v37, v15

    move/from16 v38, v4

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v38, v14

    move/from16 v39, v3

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v17, v37

    .line 474
    .local v17, "count":I
    const/16 v37, 0x0

    move/from16 v18, v37

    .line 475
    .local v18, "runIndex":I
    const/high16 v37, -0x40800000    # -1.0f

    move/from16 v19, v37

    .line 476
    .local v19, "left":F
    const/high16 v37, -0x40800000    # -1.0f

    move/from16 v20, v37

    .line 477
    .local v20, "right":F
    move-object/from16 v37, v13

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v37

    move/from16 v21, v37

    .line 478
    .local v21, "lineX":F
    :goto_2
    move/from16 v37, v17

    if-lez v37, :cond_10

    move/from16 v37, v18

    move-object/from16 v38, v16

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 479
    move-object/from16 v37, v16

    move/from16 v38, v18

    aget-object v37, v37, v38

    move-object/from16 v22, v37

    .line 480
    .local v22, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v37

    move/from16 v23, v37

    .line 481
    .local v23, "runStart":I
    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextRun;->getEnd()I

    move-result v37

    move/from16 v24, v37

    .line 482
    .local v24, "runEnd":I
    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v37

    move/from16 v25, v37

    .line 483
    .local v25, "runWidth":F
    move/from16 v37, v23

    move/from16 v38, v3

    move/from16 v39, v24

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v26, v37

    .line 484
    .local v26, "clmapStart":I
    move/from16 v37, v23

    move/from16 v38, v4

    move/from16 v39, v24

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v27, v37

    .line 485
    .local v27, "clampEnd":I
    move/from16 v37, v27

    move/from16 v38, v26

    sub-int v37, v37, v38

    move/from16 v28, v37

    .line 486
    .local v28, "runCount":I
    move/from16 v37, v28

    if-eqz v37, :cond_8

    .line 487
    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v37

    move/from16 v29, v37

    .line 489
    .local v29, "ltr":Z
    move/from16 v37, v23

    move/from16 v38, v3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_a

    .line 490
    move/from16 v37, v29

    if-eqz v37, :cond_9

    move/from16 v37, v21

    :goto_3
    move/from16 v30, v37

    .line 495
    .local v30, "runLeft":F
    :goto_4
    move/from16 v37, v24

    move/from16 v38, v4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    .line 496
    move/from16 v37, v29

    if-eqz v37, :cond_b

    move/from16 v37, v21

    move/from16 v38, v25

    add-float v37, v37, v38

    :goto_5
    move/from16 v31, v37

    .line 500
    .local v31, "runRight":F
    :goto_6
    move/from16 v37, v30

    move/from16 v38, v31

    cmpl-float v37, v37, v38

    if-lez v37, :cond_3

    .line 501
    move/from16 v37, v30

    move/from16 v32, v37

    .line 502
    .local v32, "tmp":F
    move/from16 v37, v31

    move/from16 v30, v37

    .line 503
    move/from16 v37, v32

    move/from16 v31, v37

    .line 505
    .end local v32    # "tmp":F
    :cond_3
    move/from16 v37, v17

    move/from16 v38, v28

    sub-int v37, v37, v38

    move/from16 v17, v37

    .line 506
    const/16 v37, 0x0

    move/from16 v32, v37

    .local v32, "top":F
    const/16 v37, 0x0

    move/from16 v33, v37

    .line 507
    .local v33, "bottom":F
    move/from16 v37, v5

    packed-switch v37, :pswitch_data_0

    .line 536
    :goto_7
    :pswitch_0
    move/from16 v37, v30

    move/from16 v38, v20

    cmpl-float v37, v37, v38

    if-eqz v37, :cond_6

    .line 537
    move/from16 v37, v19

    const/high16 v38, -0x40800000    # -1.0f

    cmpl-float v37, v37, v38

    if-eqz v37, :cond_5

    move/from16 v37, v20

    const/high16 v38, -0x40800000    # -1.0f

    cmpl-float v37, v37, v38

    if-eqz v37, :cond_5

    .line 538
    move/from16 v37, v19

    move/from16 v34, v37

    .local v34, "l":F
    move/from16 v37, v20

    move/from16 v35, v37

    .line 539
    .local v35, "r":F
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 540
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v37

    move/from16 v36, v37

    .line 541
    .local v36, "width":F
    move/from16 v37, v36

    move/from16 v38, v34

    sub-float v37, v37, v38

    move/from16 v34, v37

    .line 542
    move/from16 v37, v36

    move/from16 v38, v35

    sub-float v37, v37, v38

    move/from16 v35, v37

    .line 544
    .end local v36    # "width":F
    :cond_4
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 545
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v35

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 546
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v35

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v33

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 547
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v33

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 548
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 550
    .end local v34    # "l":F
    .end local v35    # "r":F
    :cond_5
    move/from16 v37, v30

    move/from16 v19, v37

    .line 551
    move/from16 v37, v31

    move/from16 v20, v37

    .line 553
    :cond_6
    move/from16 v37, v31

    move/from16 v20, v37

    .line 554
    move/from16 v37, v17

    if-nez v37, :cond_8

    .line 555
    move/from16 v37, v19

    move/from16 v34, v37

    .restart local v34    # "l":F
    move/from16 v37, v20

    move/from16 v35, v37

    .line 556
    .restart local v35    # "r":F
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->isMirrored()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 557
    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/text/PrismTextLayout;->getMirroringWidth()F

    move-result v37

    move/from16 v36, v37

    .line 558
    .restart local v36    # "width":F
    move/from16 v37, v36

    move/from16 v38, v34

    sub-float v37, v37, v38

    move/from16 v34, v37

    .line 559
    move/from16 v37, v36

    move/from16 v38, v35

    sub-float v37, v37, v38

    move/from16 v35, v37

    .line 561
    .end local v36    # "width":F
    :cond_7
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 562
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v35

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 563
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v35

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v33

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 564
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v33

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 565
    move-object/from16 v37, v9

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    move/from16 v40, v6

    move/from16 v41, v34

    add-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v42, v7

    move/from16 v43, v32

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 568
    .end local v29    # "ltr":Z
    .end local v30    # "runLeft":F
    .end local v31    # "runRight":F
    .end local v32    # "top":F
    .end local v33    # "bottom":F
    .end local v34    # "l":F
    .end local v35    # "r":F
    :cond_8
    move/from16 v37, v21

    move/from16 v38, v25

    add-float v37, v37, v38

    move/from16 v21, v37

    .line 569
    add-int/lit8 v18, v18, 0x1

    .line 570
    goto/16 :goto_2

    .line 490
    .restart local v29    # "ltr":Z
    :cond_9
    move/from16 v37, v21

    move/from16 v38, v25

    add-float v37, v37, v38

    goto/16 :goto_3

    .line 492
    :cond_a
    move/from16 v37, v21

    move-object/from16 v38, v22

    move/from16 v39, v3

    move/from16 v40, v23

    sub-int v39, v39, v40

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/text/TextRun;->getXAtOffset(IZ)F

    move-result v38

    add-float v37, v37, v38

    move/from16 v30, v37

    .restart local v30    # "runLeft":F
    goto/16 :goto_4

    .line 496
    :cond_b
    move/from16 v37, v21

    goto/16 :goto_5

    .line 498
    :cond_c
    move/from16 v37, v21

    move-object/from16 v38, v22

    move/from16 v39, v4

    move/from16 v40, v23

    sub-int v39, v39, v40

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/text/TextRun;->getXAtOffset(IZ)F

    move-result v38

    add-float v37, v37, v38

    move/from16 v31, v37

    .restart local v31    # "runRight":F
    goto/16 :goto_6

    .line 509
    .restart local v32    # "top":F
    .restart local v33    # "bottom":F
    :pswitch_1
    move/from16 v37, v10

    move/from16 v32, v37

    .line 510
    move/from16 v37, v10

    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v38

    add-float v37, v37, v38

    move/from16 v33, v37

    .line 511
    goto/16 :goto_7

    .line 514
    :pswitch_2
    const/16 v37, 0x0

    move-object/from16 v34, v37

    .line 515
    .local v34, "fontStrike":Lcom/sun/javafx/font/FontStrike;
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move-object/from16 v37, v0

    if-eqz v37, :cond_e

    .line 516
    move-object/from16 v37, v22

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v37

    move-object/from16 v35, v37

    .line 517
    .local v35, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v37, v35

    invoke-interface/range {v37 .. v37}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v36, v37

    .line 518
    .local v36, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v37, v36

    if-nez v37, :cond_d

    goto/16 :goto_7

    .line 519
    :cond_d
    move-object/from16 v37, v36

    sget-object v38, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface/range {v37 .. v38}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v37

    move-object/from16 v34, v37

    .line 523
    .end local v35    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v36    # "font":Lcom/sun/javafx/font/PGFont;
    :goto_8
    move/from16 v37, v10

    move-object/from16 v38, v22

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/text/TextRun;->getAscent()F

    move-result v38

    sub-float v37, v37, v38

    move/from16 v32, v37

    .line 524
    move-object/from16 v37, v34

    invoke-interface/range {v37 .. v37}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v37

    move-object/from16 v35, v37

    .line 525
    .local v35, "metrics":Lcom/sun/javafx/font/Metrics;
    move/from16 v37, v5

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 526
    move/from16 v37, v32

    move-object/from16 v38, v35

    invoke-interface/range {v38 .. v38}, Lcom/sun/javafx/font/Metrics;->getUnderLineOffset()F

    move-result v38

    add-float v37, v37, v38

    move/from16 v32, v37

    .line 527
    move/from16 v37, v32

    move-object/from16 v38, v35

    invoke-interface/range {v38 .. v38}, Lcom/sun/javafx/font/Metrics;->getUnderLineThickness()F

    move-result v38

    add-float v37, v37, v38

    move/from16 v33, v37

    goto/16 :goto_7

    .line 521
    .end local v35    # "metrics":Lcom/sun/javafx/font/Metrics;
    :cond_e
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v37, v0

    move-object/from16 v34, v37

    goto :goto_8

    .line 529
    .restart local v35    # "metrics":Lcom/sun/javafx/font/Metrics;
    :cond_f
    move/from16 v37, v32

    move-object/from16 v38, v35

    invoke-interface/range {v38 .. v38}, Lcom/sun/javafx/font/Metrics;->getStrikethroughOffset()F

    move-result v38

    add-float v37, v37, v38

    move/from16 v32, v37

    .line 530
    move/from16 v37, v32

    move-object/from16 v38, v35

    invoke-interface/range {v38 .. v38}, Lcom/sun/javafx/font/Metrics;->getStrikethroughThickness()F

    move-result v38

    add-float v37, v37, v38

    move/from16 v33, v37

    goto/16 :goto_7

    .line 571
    .end local v22    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v23    # "runStart":I
    .end local v24    # "runEnd":I
    .end local v25    # "runWidth":F
    .end local v26    # "clmapStart":I
    .end local v27    # "clampEnd":I
    .end local v28    # "runCount":I
    .end local v29    # "ltr":Z
    .end local v30    # "runLeft":F
    .end local v31    # "runRight":F
    .end local v32    # "top":F
    .end local v33    # "bottom":F
    .end local v34    # "fontStrike":Lcom/sun/javafx/font/FontStrike;
    .end local v35    # "metrics":Lcom/sun/javafx/font/Metrics;
    :cond_10
    move/from16 v37, v10

    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v38

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    move/from16 v39, v0

    add-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v10, v37

    goto/16 :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRuns()[Lcom/sun/javafx/scene/text/GlyphList;
    .locals 11

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 234
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->runCount:I

    new-array v6, v6, [Lcom/sun/javafx/scene/text/GlyphList;

    move-object v1, v6

    .line 235
    .local v1, "result":[Lcom/sun/javafx/scene/text/GlyphList;
    const/4 v6, 0x0

    move v2, v6

    .line 236
    .local v2, "count":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 237
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v6

    move-object v4, v6

    .line 238
    .local v4, "lineRuns":[Lcom/sun/javafx/scene/text/GlyphList;
    move-object v6, v4

    array-length v6, v6

    move v5, v6

    .line 239
    .local v5, "length":I
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    move v9, v2

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    move v6, v2

    move v7, v5

    add-int/2addr v6, v7

    move v2, v6

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v4    # "lineRuns":[Lcom/sun/javafx/scene/text/GlyphList;
    .end local v5    # "length":I
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method public getShape(ILcom/sun/javafx/scene/text/TextSpan;)Lcom/sun/javafx/geom/Shape;
    .locals 39

    .prologue
    .line 577
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v3, p1

    .local v3, "type":I
    move-object/from16 v4, p2

    .local v4, "filter":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 578
    move/from16 v25, v3

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_0

    const/16 v25, 0x1

    :goto_0
    move/from16 v5, v25

    .line 579
    .local v5, "text":Z
    move/from16 v25, v3

    const/16 v26, 0x2

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_1

    const/16 v25, 0x1

    :goto_1
    move/from16 v6, v25

    .line 580
    .local v6, "underline":Z
    move/from16 v25, v3

    const/16 v26, 0x4

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_2

    const/16 v25, 0x1

    :goto_2
    move/from16 v7, v25

    .line 581
    .local v7, "strikethrough":Z
    move/from16 v25, v3

    const/16 v26, 0x8

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_3

    const/16 v25, 0x1

    :goto_3
    move/from16 v8, v25

    .line 582
    .local v8, "baselineType":Z
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->shape:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move/from16 v25, v5

    if-eqz v25, :cond_4

    move/from16 v25, v6

    if-nez v25, :cond_4

    move/from16 v25, v7

    if-nez v25, :cond_4

    move/from16 v25, v8

    if-eqz v25, :cond_4

    .line 583
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->shape:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    move-object/from16 v2, v25

    .line 647
    .end local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_4
    return-object v2

    .line 578
    .end local v5    # "text":Z
    .end local v6    # "underline":Z
    .end local v7    # "strikethrough":Z
    .end local v8    # "baselineType":Z
    .restart local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    .line 579
    .restart local v5    # "text":Z
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 580
    .restart local v6    # "underline":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    .line 581
    .restart local v7    # "strikethrough":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    .line 586
    .restart local v8    # "baselineType":Z
    :cond_4
    new-instance v25, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object/from16 v9, v25

    .line 587
    .local v9, "outline":Lcom/sun/javafx/geom/Path2D;
    new-instance v25, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    invoke-direct/range {v26 .. v30}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object/from16 v10, v25

    .line 590
    .local v10, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    const/16 v25, 0x0

    move/from16 v11, v25

    .line 591
    .local v11, "firstBaseline":F
    move/from16 v25, v8

    if-eqz v25, :cond_5

    .line 592
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v11, v25

    .line 594
    :cond_5
    const/16 v25, 0x0

    move/from16 v12, v25

    .local v12, "i":I
    :goto_5
    move/from16 v25, v12

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 595
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v25, v0

    move/from16 v26, v12

    aget-object v25, v25, v26

    move-object/from16 v13, v25

    .line 596
    .local v13, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v25

    move-object/from16 v14, v25

    .line 597
    .local v14, "runs":[Lcom/sun/javafx/text/TextRun;
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v25

    move-object/from16 v15, v25

    .line 598
    .local v15, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v16, v25

    .line 599
    .local v16, "baseline":F
    const/16 v25, 0x0

    move/from16 v17, v25

    .local v17, "j":I
    :goto_6
    move/from16 v25, v17

    move-object/from16 v26, v14

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 600
    move-object/from16 v25, v14

    move/from16 v26, v17

    aget-object v25, v25, v26

    move-object/from16 v18, v25

    .line 601
    .local v18, "run":Lcom/sun/javafx/text/TextRun;
    const/16 v25, 0x0

    move-object/from16 v19, v25

    .line 602
    .local v19, "fontStrike":Lcom/sun/javafx/font/FontStrike;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 603
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextRun;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v25

    move-object/from16 v20, v25

    .line 604
    .local v20, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v25, v4

    if-eqz v25, :cond_7

    move-object/from16 v25, v20

    move-object/from16 v26, v4

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 599
    .end local v20    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    :cond_6
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 605
    .restart local v20    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    :cond_7
    move-object/from16 v25, v20

    invoke-interface/range {v25 .. v25}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v21, v25

    .line 608
    .local v21, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v25, v21

    if-nez v25, :cond_8

    goto :goto_7

    .line 609
    :cond_8
    move-object/from16 v25, v21

    sget-object v26, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface/range {v25 .. v26}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v25

    move-object/from16 v19, v25

    .line 613
    .end local v20    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v21    # "font":Lcom/sun/javafx/font/PGFont;
    :goto_8
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v25

    move-object/from16 v20, v25

    .line 614
    .local v20, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v25, v0

    move/from16 v21, v25

    .line 615
    .local v21, "runX":F
    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v25, v0

    move/from16 v26, v16

    add-float v25, v25, v26

    move/from16 v26, v11

    sub-float v25, v25, v26

    move/from16 v22, v25

    .line 616
    .local v22, "runY":F
    const/16 v25, 0x0

    move-object/from16 v23, v25

    .line 617
    .local v23, "metrics":Lcom/sun/javafx/font/Metrics;
    move/from16 v25, v6

    if-nez v25, :cond_9

    move/from16 v25, v7

    if-eqz v25, :cond_a

    .line 618
    :cond_9
    move-object/from16 v25, v19

    invoke-interface/range {v25 .. v25}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v25

    move-object/from16 v23, v25

    .line 620
    :cond_a
    move/from16 v25, v6

    if-eqz v25, :cond_b

    .line 621
    new-instance v25, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    move-object/from16 v24, v25

    .line 622
    .local v24, "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object/from16 v25, v24

    move/from16 v26, v21

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 623
    move-object/from16 v25, v24

    move/from16 v26, v22

    move-object/from16 v27, v23

    invoke-interface/range {v27 .. v27}, Lcom/sun/javafx/font/Metrics;->getUnderLineOffset()F

    move-result v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 624
    move-object/from16 v25, v24

    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 625
    move-object/from16 v25, v24

    move-object/from16 v26, v23

    invoke-interface/range {v26 .. v26}, Lcom/sun/javafx/font/Metrics;->getUnderLineThickness()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 626
    move-object/from16 v25, v9

    move-object/from16 v26, v24

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 628
    .end local v24    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_b
    move/from16 v25, v7

    if-eqz v25, :cond_c

    .line 629
    new-instance v25, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    move-object/from16 v24, v25

    .line 630
    .restart local v24    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object/from16 v25, v24

    move/from16 v26, v21

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 631
    move-object/from16 v25, v24

    move/from16 v26, v22

    move-object/from16 v27, v23

    invoke-interface/range {v27 .. v27}, Lcom/sun/javafx/font/Metrics;->getStrikethroughOffset()F

    move-result v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 632
    move-object/from16 v25, v24

    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 633
    move-object/from16 v25, v24

    move-object/from16 v26, v23

    invoke-interface/range {v26 .. v26}, Lcom/sun/javafx/font/Metrics;->getStrikethroughThickness()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 634
    move-object/from16 v25, v9

    move-object/from16 v26, v24

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 636
    .end local v24    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_c
    move/from16 v25, v5

    if-eqz v25, :cond_6

    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v25

    if-lez v25, :cond_6

    .line 637
    move-object/from16 v25, v10

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move/from16 v34, v21

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v36, v22

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-virtual/range {v25 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDD)V

    .line 638
    move-object/from16 v25, v19

    move-object/from16 v26, v18

    move-object/from16 v27, v10

    invoke-interface/range {v25 .. v27}, Lcom/sun/javafx/font/FontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;

    move-result-object v25

    check-cast v25, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v24, v25

    .line 639
    .local v24, "path":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v25, v9

    move-object/from16 v26, v24

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    goto/16 :goto_7

    .line 611
    .end local v20    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v21    # "runX":F
    .end local v22    # "runY":F
    .end local v23    # "metrics":Lcom/sun/javafx/font/Metrics;
    .end local v24    # "path":Lcom/sun/javafx/geom/Path2D;
    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v25, v0

    move-object/from16 v19, v25

    goto/16 :goto_8

    .line 594
    .end local v18    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v19    # "fontStrike":Lcom/sun/javafx/font/FontStrike;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 644
    .end local v13    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v14    # "runs":[Lcom/sun/javafx/text/TextRun;
    .end local v15    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v16    # "baseline":F
    .end local v17    # "j":I
    :cond_f
    move/from16 v25, v5

    if-eqz v25, :cond_10

    move/from16 v25, v6

    if-nez v25, :cond_10

    move/from16 v25, v7

    if-nez v25, :cond_10

    .line 645
    move-object/from16 v25, v2

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->shape:Lcom/sun/javafx/geom/Shape;

    .line 647
    :cond_10
    move-object/from16 v25, v9

    move-object/from16 v2, v25

    goto/16 :goto_4
.end method

.method public getTextSpans()[Lcom/sun/javafx/scene/text/TextSpan;
    .locals 2

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return-object v0
.end method

.method public getVisualBounds(I)Lcom/sun/javafx/geom/BaseBounds;
    .locals 37

    .prologue
    .line 1310
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move/from16 v3, p1

    .local v3, "type":I
    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/text/PrismTextLayout;->ensureLayout()V

    .line 1313
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 1314
    const/16 v31, 0x0

    move-object/from16 v2, v31

    .line 1392
    .end local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return-object v2

    .line 1317
    .restart local v2    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move/from16 v31, v3

    const/16 v32, 0x2

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_1

    const/16 v31, 0x1

    :goto_1
    move/from16 v4, v31

    .line 1318
    .local v4, "underline":Z
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v31, v0

    const/16 v32, 0x200

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x200

    move/from16 v31, v0

    if-eqz v31, :cond_2

    const/16 v31, 0x1

    :goto_2
    move/from16 v5, v31

    .line 1319
    .local v5, "hasUnderline":Z
    move/from16 v31, v3

    const/16 v32, 0x4

    and-int/lit8 v31, v31, 0x4

    if-eqz v31, :cond_3

    const/16 v31, 0x1

    :goto_3
    move/from16 v6, v31

    .line 1320
    .local v6, "strikethrough":Z
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v31, v0

    const/16 v32, 0x400

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x400

    move/from16 v31, v0

    if-eqz v31, :cond_4

    const/16 v31, 0x1

    :goto_4
    move/from16 v7, v31

    .line 1321
    .local v7, "hasStrikethrough":Z
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 1324
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v31, v0

    move-object/from16 v2, v31

    goto :goto_0

    .line 1317
    .end local v4    # "underline":Z
    .end local v5    # "hasUnderline":Z
    .end local v6    # "strikethrough":Z
    .end local v7    # "hasStrikethrough":Z
    :cond_1
    const/16 v31, 0x0

    goto :goto_1

    .line 1318
    .restart local v4    # "underline":Z
    :cond_2
    const/16 v31, 0x0

    goto :goto_2

    .line 1319
    .restart local v5    # "hasUnderline":Z
    :cond_3
    const/16 v31, 0x0

    goto :goto_3

    .line 1320
    .restart local v6    # "strikethrough":Z
    :cond_4
    const/16 v31, 0x0

    goto :goto_4

    .line 1327
    .restart local v7    # "hasStrikethrough":Z
    :cond_5
    move-object/from16 v31, v2

    move-object/from16 v36, v31

    move-object/from16 v31, v36

    move-object/from16 v32, v36

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v32, v0

    const/16 v33, -0x601

    move/from16 v0, v32

    and-int/lit16 v0, v0, -0x601

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 1328
    move/from16 v31, v4

    if-eqz v31, :cond_6

    move-object/from16 v31, v2

    move-object/from16 v36, v31

    move-object/from16 v31, v36

    move-object/from16 v32, v36

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v32, v0

    const/16 v33, 0x200

    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x200

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 1329
    :cond_6
    move/from16 v31, v6

    if-eqz v31, :cond_7

    move-object/from16 v31, v2

    move-object/from16 v36, v31

    move-object/from16 v31, v36

    move-object/from16 v32, v36

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move/from16 v32, v0

    const/16 v33, 0x400

    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x400

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 1330
    :cond_7
    move-object/from16 v31, v2

    new-instance v32, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v36, v32

    move-object/from16 v32, v36

    move-object/from16 v33, v36

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 1332
    const/high16 v31, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v8, v31

    .line 1333
    .local v8, "xMin":F
    const/high16 v31, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v9, v31

    .line 1334
    .local v9, "yMin":F
    const/high16 v31, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v10, v31

    .line 1335
    .local v10, "xMax":F
    const/high16 v31, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v11, v31

    .line 1336
    .local v11, "yMax":F
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    move-object/from16 v12, v31

    .line 1337
    .local v12, "bounds":[F
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/FontStrike;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v31

    move-object/from16 v13, v31

    .line 1338
    .local v13, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v31

    move-object/from16 v14, v31

    .line 1339
    .local v14, "metrics":Lcom/sun/javafx/font/Metrics;
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v31

    move/from16 v15, v31

    .line 1340
    .local v15, "size":F
    const/16 v31, 0x0

    move/from16 v16, v31

    .local v16, "i":I
    :goto_5
    move/from16 v31, v16

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    .line 1341
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    move-object/from16 v31, v0

    move/from16 v32, v16

    aget-object v31, v31, v32

    move-object/from16 v17, v31

    .line 1342
    .local v17, "line":Lcom/sun/javafx/text/TextLine;
    move-object/from16 v31, v17

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/text/TextLine;->getRuns()[Lcom/sun/javafx/text/TextRun;

    move-result-object v31

    move-object/from16 v18, v31

    .line 1343
    .local v18, "runs":[Lcom/sun/javafx/text/TextRun;
    const/16 v31, 0x0

    move/from16 v19, v31

    .local v19, "j":I
    :goto_6
    move/from16 v31, v19

    move-object/from16 v32, v18

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_16

    .line 1344
    move-object/from16 v31, v18

    move/from16 v32, v19

    aget-object v31, v31, v32

    move-object/from16 v20, v31

    .line 1345
    .local v20, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v31

    move-object/from16 v21, v31

    .line 1346
    .local v21, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1343
    :cond_8
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1347
    :cond_9
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v31

    move/from16 v22, v31

    .line 1348
    .local v22, "glyphCount":I
    const/16 v31, 0x0

    move/from16 v23, v31

    .local v23, "gi":I
    :goto_8
    move/from16 v31, v23

    move/from16 v32, v22

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 1349
    move-object/from16 v31, v20

    move/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/text/TextRun;->getGlyphCode(I)I

    move-result v31

    move/from16 v24, v31

    .line 1350
    .local v24, "gc":I
    move/from16 v31, v24

    const v32, 0xffff

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 1351
    move-object/from16 v31, v13

    move-object/from16 v32, v20

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/text/TextRun;->getGlyphCode(I)I

    move-result v32

    move/from16 v33, v15

    move-object/from16 v34, v12

    invoke-interface/range {v31 .. v34}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v31

    .line 1352
    move-object/from16 v31, v12

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v32, v12

    const/16 v33, 0x2

    aget v32, v32, v33

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_d

    .line 1353
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v31, v0

    move-object/from16 v32, v20

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/text/TextRun;->getPosX(I)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v25, v31

    .line 1354
    .local v25, "glyphX":F
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v31, v0

    move-object/from16 v32, v20

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/text/TextRun;->getPosY(I)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v26, v31

    .line 1355
    .local v26, "glyphY":F
    move/from16 v31, v25

    move-object/from16 v32, v12

    const/16 v33, 0x0

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v27, v31

    .line 1356
    .local v27, "glyphMinX":F
    move/from16 v31, v26

    move-object/from16 v32, v12

    const/16 v33, 0x3

    aget v32, v32, v33

    sub-float v31, v31, v32

    move/from16 v28, v31

    .line 1357
    .local v28, "glyphMinY":F
    move/from16 v31, v25

    move-object/from16 v32, v12

    const/16 v33, 0x2

    aget v32, v32, v33

    add-float v31, v31, v32

    move/from16 v29, v31

    .line 1358
    .local v29, "glyphMaxX":F
    move/from16 v31, v26

    move-object/from16 v32, v12

    const/16 v33, 0x1

    aget v32, v32, v33

    sub-float v31, v31, v32

    move/from16 v30, v31

    .line 1359
    .local v30, "glyphMaxY":F
    move/from16 v31, v27

    move/from16 v32, v8

    cmpg-float v31, v31, v32

    if-gez v31, :cond_a

    move/from16 v31, v27

    move/from16 v8, v31

    .line 1360
    :cond_a
    move/from16 v31, v28

    move/from16 v32, v9

    cmpg-float v31, v31, v32

    if-gez v31, :cond_b

    move/from16 v31, v28

    move/from16 v9, v31

    .line 1361
    :cond_b
    move/from16 v31, v29

    move/from16 v32, v10

    cmpl-float v31, v31, v32

    if-lez v31, :cond_c

    move/from16 v31, v29

    move/from16 v10, v31

    .line 1362
    :cond_c
    move/from16 v31, v30

    move/from16 v32, v11

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

    move/from16 v31, v30

    move/from16 v11, v31

    .line 1348
    .end local v25    # "glyphX":F
    .end local v26    # "glyphY":F
    .end local v27    # "glyphMinX":F
    .end local v28    # "glyphMinY":F
    .end local v29    # "glyphMaxX":F
    .end local v30    # "glyphMaxY":F
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_8

    .line 1366
    .end local v24    # "gc":I
    :cond_e
    move/from16 v31, v4

    if-eqz v31, :cond_12

    .line 1367
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v31, v0

    move/from16 v23, v31

    .line 1368
    .local v23, "underlineMinX":F
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v31, v0

    move-object/from16 v32, v14

    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Metrics;->getUnderLineOffset()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v24, v31

    .line 1369
    .local v24, "underlineMinY":F
    move/from16 v31, v23

    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v25, v31

    .line 1370
    .local v25, "underlineMaxX":F
    move/from16 v31, v24

    move-object/from16 v32, v14

    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Metrics;->getUnderLineThickness()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v26, v31

    .line 1371
    .local v26, "underlineMaxY":F
    move/from16 v31, v23

    move/from16 v32, v8

    cmpg-float v31, v31, v32

    if-gez v31, :cond_f

    move/from16 v31, v23

    move/from16 v8, v31

    .line 1372
    :cond_f
    move/from16 v31, v24

    move/from16 v32, v9

    cmpg-float v31, v31, v32

    if-gez v31, :cond_10

    move/from16 v31, v24

    move/from16 v9, v31

    .line 1373
    :cond_10
    move/from16 v31, v25

    move/from16 v32, v10

    cmpl-float v31, v31, v32

    if-lez v31, :cond_11

    move/from16 v31, v25

    move/from16 v10, v31

    .line 1374
    :cond_11
    move/from16 v31, v26

    move/from16 v32, v11

    cmpl-float v31, v31, v32

    if-lez v31, :cond_12

    move/from16 v31, v26

    move/from16 v11, v31

    .line 1376
    .end local v23    # "underlineMinX":F
    .end local v24    # "underlineMinY":F
    .end local v25    # "underlineMaxX":F
    .end local v26    # "underlineMaxY":F
    :cond_12
    move/from16 v31, v6

    if-eqz v31, :cond_8

    .line 1377
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v31, v0

    move/from16 v23, v31

    .line 1378
    .local v23, "strikethroughMinX":F
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v31, v0

    move-object/from16 v32, v14

    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Metrics;->getStrikethroughOffset()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v24, v31

    .line 1379
    .local v24, "strikethroughMinY":F
    move/from16 v31, v23

    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v25, v31

    .line 1380
    .local v25, "strikethroughMaxX":F
    move/from16 v31, v24

    move-object/from16 v32, v14

    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Metrics;->getStrikethroughThickness()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v26, v31

    .line 1381
    .local v26, "strikethroughMaxY":F
    move/from16 v31, v23

    move/from16 v32, v8

    cmpg-float v31, v31, v32

    if-gez v31, :cond_13

    move/from16 v31, v23

    move/from16 v8, v31

    .line 1382
    :cond_13
    move/from16 v31, v24

    move/from16 v32, v9

    cmpg-float v31, v31, v32

    if-gez v31, :cond_14

    move/from16 v31, v24

    move/from16 v9, v31

    .line 1383
    :cond_14
    move/from16 v31, v25

    move/from16 v32, v10

    cmpl-float v31, v31, v32

    if-lez v31, :cond_15

    move/from16 v31, v25

    move/from16 v10, v31

    .line 1384
    :cond_15
    move/from16 v31, v26

    move/from16 v32, v11

    cmpl-float v31, v31, v32

    if-lez v31, :cond_8

    move/from16 v31, v26

    move/from16 v11, v31

    goto/16 :goto_7

    .line 1340
    .end local v20    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v21    # "pt":Lcom/sun/javafx/geom/Point2D;
    .end local v22    # "glyphCount":I
    .end local v23    # "strikethroughMinX":F
    .end local v24    # "strikethroughMinY":F
    .end local v25    # "strikethroughMaxX":F
    .end local v26    # "strikethroughMaxY":F
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 1389
    .end local v17    # "line":Lcom/sun/javafx/text/TextLine;
    .end local v18    # "runs":[Lcom/sun/javafx/text/TextRun;
    .end local v19    # "j":I
    :cond_17
    move/from16 v31, v8

    move/from16 v32, v10

    cmpg-float v31, v31, v32

    if-gez v31, :cond_18

    move/from16 v31, v9

    move/from16 v32, v11

    cmpg-float v31, v31, v32

    if-gez v31, :cond_18

    .line 1390
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v31, v0

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1392
    :cond_18
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/text/PrismTextLayout;->visualBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v31, v0

    move-object/from16 v2, v31

    goto/16 :goto_0
.end method

.method public setAlignment(I)Z
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "alignment":I
    const/high16 v3, 0x40000

    move v2, v3

    .line 167
    .local v2, "align":I
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 173
    :goto_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/high16 v4, 0x3c0000

    and-int/2addr v3, v4

    move v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 180
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_1
    return v0

    .line 168
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :pswitch_0
    const/high16 v3, 0x40000

    move v2, v3

    goto :goto_0

    .line 169
    :pswitch_1
    const/high16 v3, 0x80000

    move v2, v3

    goto :goto_0

    .line 170
    :pswitch_2
    const/high16 v3, 0x100000

    move v2, v3

    goto :goto_0

    .line 171
    :pswitch_3
    const/high16 v3, 0x200000

    move v2, v3

    goto :goto_0

    .line 174
    :cond_0
    move v3, v2

    const/high16 v4, 0x200000

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 175
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/text/PrismTextLayout;->reset()V

    .line 177
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const v5, -0x3c0001

    and-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 178
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 179
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/text/PrismTextLayout;->relayout()V

    .line 180
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBoundsType(I)Z
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, 0x4000

    and-int/lit16 v2, v2, 0x4000

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 162
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return v0

    .line 159
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v4, -0x4001

    and-int/lit16 v3, v3, -0x4001

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 160
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move v4, v1

    const/16 v5, 0x4000

    and-int/lit16 v4, v4, 0x4000

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 161
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/text/PrismTextLayout;->reset()V

    .line 162
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "font":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/text/PrismTextLayout;->reset()V

    .line 136
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    .line 137
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/font/PGFont;

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    .line 138
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/font/PGFont;

    sget-object v6, Lcom/sun/javafx/text/PrismTextLayout;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v5, v6}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    .line 139
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    .line 140
    sget v4, Lcom/sun/javafx/text/PrismTextLayout;->MAX_CACHE_SIZE:I

    if-lez v4, :cond_0

    .line 141
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v4

    .line 142
    .local v3, "length":I
    const/4 v4, 0x0

    move v5, v3

    if-ge v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x100

    if-gt v4, v5, :cond_0

    .line 143
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    .line 146
    .end local v3    # "length":I
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0
.end method

.method public setContent([Lcom/sun/javafx/scene/text/TextSpan;)Z
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move-object v1, p1

    .local v1, "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 131
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return v0

    .line 114
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    if-eqz v3, :cond_3

    .line 115
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 116
    const/4 v3, 0x0

    move v2, v3

    .line 117
    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 118
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    move v5, v2

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 121
    :cond_1
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 119
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "i":I
    :cond_3
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/text/PrismTextLayout;->reset()V

    .line 126
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->spans:[Lcom/sun/javafx/scene/text/TextSpan;

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->font:Lcom/sun/javafx/font/PGFont;

    .line 128
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->strike:Lcom/sun/javafx/font/FontStrike;

    .line 129
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->text:[C

    .line 130
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/text/PrismTextLayout;->cacheKey:Ljava/lang/Integer;

    .line 131
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public setDirection(I)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "direction":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v3, 0x3c00

    and-int/lit16 v2, v2, 0x3c00

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 154
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return v0

    .line 151
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v4, -0x3c01

    and-int/lit16 v3, v3, -0x3c01

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 152
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    move v4, v1

    const/16 v5, 0x3c00

    and-int/lit16 v4, v4, 0x3c00

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    .line 153
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/text/PrismTextLayout;->reset()V

    .line 154
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setLineSpacing(F)Z
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "spacing":F
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 218
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :goto_0
    return v0

    .line 216
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/text/PrismTextLayout;->spacing:F

    .line 217
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/text/PrismTextLayout;->relayout()V

    .line 218
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setWrapWidth(F)Z
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayout;
    move v1, p1

    .local v1, "newWidth":F
    move v4, v1

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 185
    :cond_0
    move v4, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move v1, v4

    .line 186
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    move v2, v4

    .line 187
    .local v2, "oldWidth":F
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lcom/sun/javafx/text/PrismTextLayout;->wrapWidth:F

    .line 189
    const/4 v4, 0x1

    move v3, v4

    .line 190
    .local v3, "needsLayout":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->lines:[Lcom/sun/javafx/text/TextLine;

    if-eqz v4, :cond_2

    move v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    move v4, v1

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 191
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 192
    move v4, v1

    move v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 196
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/PrismTextLayout;->flags:I

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    .line 197
    const/4 v4, 0x0

    move v3, v4

    .line 210
    :cond_2
    :goto_0
    move v4, v3

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/text/PrismTextLayout;->relayout()V

    .line 211
    :cond_3
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    return v0

    .line 204
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayout;
    :cond_4
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/PrismTextLayout;->layoutWidth:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 205
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0
.end method

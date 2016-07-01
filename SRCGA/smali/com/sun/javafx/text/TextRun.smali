.class public Lcom/sun/javafx/text/TextRun;
.super Ljava/lang/Object;
.source "TextRun.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/GlyphList;


# static fields
.field static final FLAGS_CANONICAL:I = 0x800

.field static final FLAGS_COMPACT:I = 0x1000

.field static final FLAGS_COMPLEX:I = 0x20

.field static final FLAGS_EMBEDDED:I = 0x40

.field static final FLAGS_LEFT_BEARING:I = 0x200

.field static final FLAGS_LINEBREAK:I = 0x2

.field static final FLAGS_NO_LINK_AFTER:I = 0x10

.field static final FLAGS_NO_LINK_BEFORE:I = 0x8

.field static final FLAGS_RIGHT_BEARING:I = 0x400

.field static final FLAGS_SOFTBREAK:I = 0x4

.field static final FLAGS_SPLIT:I = 0x80

.field static final FLAGS_SPLIT_LAST:I = 0x100

.field static final FLAGS_TAB:I = 0x1


# instance fields
.field private ascent:F

.field cacheIndex:I

.field cacheWidth:F

.field charIndices:[I

.field private descent:F

.field flags:I

.field gids:[I

.field glyphCount:I

.field private leading:F

.field length:I

.field level:B

.field line:Lcom/sun/javafx/text/TextLine;

.field location:Lcom/sun/javafx/geom/Point2D;

.field positions:[F

.field script:I

.field slot:I

.field span:Lcom/sun/javafx/scene/text/TextSpan;

.field start:I

.field width:F


# direct methods
.method public constructor <init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V
    .locals 13

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "length":I
    move/from16 v3, p3

    .local v3, "level":B
    move/from16 v4, p4

    .local v4, "complex":Z
    move/from16 v5, p5

    .local v5, "script":I
    move-object/from16 v6, p6

    .local v6, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move/from16 v7, p7

    .local v7, "slot":I
    move/from16 v8, p8

    .local v8, "canonical":Z
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v9, v0

    const/high16 v10, -0x40800000    # -1.0f

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->width:F

    .line 47
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 48
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->slot:I

    .line 317
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->cacheWidth:F

    .line 318
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->cacheIndex:I

    .line 71
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->start:I

    .line 72
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->length:I

    .line 73
    move-object v9, v0

    move v10, v3

    iput-byte v10, v9, Lcom/sun/javafx/text/TextRun;->level:B

    .line 74
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->script:I

    .line 75
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/sun/javafx/text/TextRun;->span:Lcom/sun/javafx/scene/text/TextSpan;

    .line 76
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->slot:I

    .line 78
    move v9, v8

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v11, 0x800

    or-int/lit16 v10, v10, 0x800

    iput v10, v9, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 79
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 8

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/TextRun;->positions:[F

    .line 435
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    .line 436
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/text/TextRun;->gids:[I

    .line 437
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->width:F

    .line 438
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->leading:F

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->descent:F

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->ascent:F

    .line 439
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    .line 440
    return-void
.end method


# virtual methods
.method public getAdvance(I)F
    .locals 6

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "glyphIndex":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x1000

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    .line 351
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->start:I

    move v4, v1

    add-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    .line 353
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public getAscent()F
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->ascent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getCharOffset(I)I
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "glyphIndex":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    move v3, v1

    aget v2, v2, v3

    goto :goto_0
.end method

.method public getDescent()F
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->descent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getEnd()I
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->start:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->length:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getGlyphAtX(F[I)I
    .locals 10

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "x":F
    move-object v2, p2

    .local v2, "trailing":[I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v7

    move v3, v7

    .line 397
    .local v3, "ltr":Z
    const/4 v7, 0x0

    move v4, v7

    .line 398
    .local v4, "runX":F
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v7, v8, :cond_5

    .line 399
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/text/TextRun;->getAdvance(I)F

    move-result v7

    move v6, v7

    .line 400
    .local v6, "advance":F
    move v7, v4

    move v8, v6

    add-float/2addr v7, v8

    move v8, v1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 401
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 403
    move v7, v1

    move v8, v4

    sub-float/2addr v7, v8

    move v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 404
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    aput v9, v7, v8

    .line 409
    :cond_0
    :goto_2
    move v7, v5

    move v0, v7

    .line 414
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    .end local v6    # "advance":F
    :goto_3
    return v0

    .line 404
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    .restart local v6    # "advance":F
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 406
    :cond_2
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_4
    aput v9, v7, v8

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    goto :goto_4

    .line 411
    :cond_4
    move v7, v4

    move v8, v6

    add-float/2addr v7, v8

    move v4, v7

    .line 398
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    .end local v6    # "advance":F
    :cond_5
    move-object v7, v2

    if-eqz v7, :cond_6

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_5
    aput v9, v7, v8

    .line 414
    :cond_6
    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v0, v7

    goto :goto_3

    .line 413
    :cond_7
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public getGlyphCode(I)I
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "glyphIndex":I
    const/4 v2, 0x0

    move v3, v1

    if-gt v2, v3, :cond_1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v2, v3, :cond_1

    .line 308
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x1000

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    .line 309
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->gids:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->start:I

    move v4, v1

    add-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    .line 314
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 311
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->gids:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0

    .line 314
    :cond_1
    const v2, 0xffff

    move v0, v2

    goto :goto_0
.end method

.method public getGlyphCount()I
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getGlyphIndex(I)I
    .locals 6

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "charOffset":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    if-nez v3, :cond_0

    move v3, v1

    move v0, v3

    .line 549
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 534
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v3, v4, :cond_2

    .line 535
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    move v4, v2

    aget v3, v3, v4

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 536
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 534
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 544
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    move v3, v1

    if-lez v3, :cond_4

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/TextRun;->getGlyphIndex(I)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 547
    :cond_3
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->length:I

    if-ge v3, v4, :cond_4

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/TextRun;->getGlyphIndex(I)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 549
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->ascent:F

    neg-float v1, v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->descent:F

    add-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->leading:F

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getLeading()F
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->leading:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->length:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getLevel()B
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget-byte v1, v1, Lcom/sun/javafx/text/TextRun;->level:B

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getLineBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/TextRun;->line:Lcom/sun/javafx/text/TextLine;

    invoke-virtual {v1}, Lcom/sun/javafx/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v0
.end method

.method public getLocation()Lcom/sun/javafx/geom/Point2D;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/TextRun;->location:Lcom/sun/javafx/geom/Point2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v0
.end method

.method public getOffsetAtX(F[I)I
    .locals 7

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "x":F
    move-object v2, p2

    .local v2, "trailing":[I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-lez v4, :cond_0

    .line 419
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/text/TextRun;->getGlyphAtX(F[I)I

    move-result v4

    move v3, v4

    .line 420
    .local v3, "glyphIndex":I
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/text/TextRun;->getCharOffset(I)I

    move-result v4

    move v0, v4

    .line 430
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    .end local v3    # "glyphIndex":I
    :goto_0
    return v0

    .line 423
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->length:I

    if-lez v4, :cond_1

    .line 424
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 425
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 426
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 430
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public getPosX(I)F
    .locals 8

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "glyphIndex":I
    const/4 v4, 0x0

    move v5, v1

    if-gt v4, v5, :cond_4

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-gt v4, v5, :cond_4

    .line 321
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v5, 0x1000

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_3

    .line 322
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->cacheIndex:I

    move v5, v1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->cacheWidth:F

    move v0, v4

    .line 338
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 323
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 325
    .local v2, "x":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->cacheIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 326
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->cacheWidth:F

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->start:I

    move v7, v1

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    move v2, v4

    .line 332
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->cacheIndex:I

    .line 333
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->cacheWidth:F

    .line 334
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 328
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 329
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->start:I

    move v7, v3

    add-int/2addr v6, v7

    aget v5, v5, v6

    add-float/2addr v4, v5

    move v2, v4

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    .end local v2    # "x":F
    .end local v3    # "i":I
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    move v0, v4

    goto :goto_0

    .line 338
    :cond_4
    move v4, v1

    if-nez v4, :cond_5

    const/4 v4, 0x0

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v4

    goto :goto_2
.end method

.method public getPosY(I)F
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "glyphIndex":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x1000

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 346
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 343
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v2, 0x0

    move v3, v1

    if-gt v2, v3, :cond_1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-gt v2, v3, :cond_1

    .line 344
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0

    .line 346
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getScript()I
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->script:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getSlot()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->slot:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getStart()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->start:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0
.end method

.method public getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/text/TextRun;->span:Lcom/sun/javafx/scene/text/TextSpan;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v0
.end method

.method public getWidth()F
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->width:F

    move v0, v2

    .line 193
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 183
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->positions:[F

    if-eqz v2, :cond_3

    .line 184
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x1000

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_2

    .line 185
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->width:F

    .line 186
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_1
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v2, v3, :cond_1

    .line 187
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->width:F

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->start:I

    move v6, v1

    add-int/2addr v5, v6

    aget v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->width:F

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->width:F

    move v0, v2

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0

    .line 193
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getWrapIndex(F)I
    .locals 9

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "width":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 299
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_0
    return v0

    .line 260
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 261
    const/4 v5, 0x0

    move v2, v5

    .line 262
    .local v2, "gi":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v6, 0x1000

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_4

    .line 263
    const/4 v5, 0x0

    move v3, v5

    .line 264
    .local v3, "right":F
    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v5, v6, :cond_2

    .line 265
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/text/TextRun;->start:I

    move v8, v2

    add-int/2addr v7, v8

    aget v6, v6, v7

    add-float/2addr v5, v6

    move v3, v5

    .line 266
    move v5, v3

    move v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 267
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getCharOffset(I)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 269
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    .line 279
    .line 299
    .end local v3    # "right":F
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 276
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 272
    :cond_4
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-ge v5, v6, :cond_2

    .line 273
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 274
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getCharOffset(I)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 288
    .end local v2    # "gi":I
    :cond_5
    const/4 v5, 0x0

    move v2, v5

    .line 289
    .restart local v2    # "gi":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move v3, v5

    .line 290
    .local v3, "runWidth":F
    :goto_2
    move v5, v3

    move v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 291
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    move v4, v5

    .line 292
    .local v4, "glyphWidth":F
    move v5, v3

    move v6, v4

    sub-float/2addr v5, v6

    move v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    .line 293
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getCharOffset(I)I

    move-result v5

    move v0, v5

    goto/16 :goto_0

    .line 295
    :cond_6
    move v5, v3

    move v6, v4

    sub-float/2addr v5, v6

    move v3, v5

    .line 296
    add-int/lit8 v2, v2, 0x1

    .line 297
    goto :goto_2
.end method

.method public getXAtOffset(IZ)F
    .locals 8

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "leading":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v5

    move v3, v5

    .line 374
    .local v3, "ltr":Z
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->length:I

    if-ne v5, v6, :cond_1

    .line 375
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v5

    :goto_0
    move v0, v5

    .line 392
    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :goto_1
    return v0

    .line 375
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 377
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-lez v5, :cond_5

    .line 378
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getGlyphIndex(I)I

    move-result v5

    move v4, v5

    .line 379
    .local v4, "glyphIndex":I
    move v5, v3

    if-eqz v5, :cond_3

    .line 380
    move-object v5, v0

    move v6, v4

    move v7, v2

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getPosX(I)F

    move-result v5

    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    .line 382
    :cond_3
    move-object v5, v0

    move v6, v4

    move v7, v2

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getPosX(I)F

    move-result v5

    move v0, v5

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 385
    .end local v4    # "glyphIndex":I
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->isTab()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 386
    move v5, v3

    if-eqz v5, :cond_7

    .line 387
    move v5, v2

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_4
    move v0, v5

    goto :goto_1

    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v5

    goto :goto_4

    .line 389
    :cond_7
    move v5, v2

    if-eqz v5, :cond_8

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v5

    :goto_5
    move v0, v5

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 392
    :cond_9
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public isBreak()Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v2, 0x6

    and-int/lit8 v1, v1, 0x6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCanonical()Z
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x800

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmbedded()Z
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLeftBearing()Z
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLeftToRight()Z
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget-byte v1, v1, Lcom/sun/javafx/text/TextRun;->level:B

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLinebreak()Z
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNoLinkAfter()Z
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNoLinkBefore()Z
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRightBearing()Z
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSoftbreak()Z
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplit()Z
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitLast()Z
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTab()Z
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public justify(IF)V
    .locals 11

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "width":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    if-eqz v5, :cond_2

    .line 517
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->getGlyphIndex(I)I

    move-result v5

    move v3, v5

    .line 518
    .local v3, "glyphIndex":I
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 519
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    if-gt v5, v6, :cond_0

    .line 520
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v6, v4

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    move v8, v2

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    :cond_0
    move-object v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v5, Lcom/sun/javafx/text/TextRun;->width:F

    .line 528
    .end local v4    # "i":I
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/text/TextRun;->setComplex(Z)V

    .line 530
    .end local v3    # "glyphIndex":I
    :cond_2
    return-void
.end method

.method public merge(Lcom/sun/javafx/text/TextRun;)V
    .locals 6

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, p1

    .local v1, "run":Lcom/sun/javafx/text/TextRun;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 490
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->length:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->length:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->length:I

    .line 491
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    .line 492
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 493
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->width:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->width:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->width:F

    .line 498
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v4, -0x81

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 499
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v4, -0x101

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 500
    return-void

    .line 495
    :cond_1
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->width:F

    goto :goto_0
.end method

.method public setComplex(Z)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "complex":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 175
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v4, -0x21

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    goto :goto_0
.end method

.method public setEmbedded(Lcom/sun/javafx/geom/RectBounds;I)V
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move v2, p2

    .local v2, "length":I
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v4

    move v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->width:F

    .line 236
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->ascent:F

    .line 237
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->ascent:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->descent:F

    .line 238
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->length:I

    .line 239
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v5, 0x40

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 240
    return-void
.end method

.method public setLeftBearing()V
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x200

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 252
    return-void
.end method

.method public setLine(Lcom/sun/javafx/text/TextLine;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, p1

    .local v1, "line":Lcom/sun/javafx/text/TextLine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/text/TextRun;->line:Lcom/sun/javafx/text/TextLine;

    .line 103
    return-void
.end method

.method public setLinebreak()V
    .locals 5

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 244
    return-void
.end method

.method public setLocation(FF)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/Point2D;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    iput-object v4, v3, Lcom/sun/javafx/text/TextRun;->location:Lcom/sun/javafx/geom/Point2D;

    .line 224
    return-void
.end method

.method public setMetrics(FFF)V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "ascent":F
    move v2, p2

    .local v2, "descent":F
    move v3, p3

    .local v3, "leading":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->ascent:F

    .line 206
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->descent:F

    .line 207
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->leading:F

    .line 208
    return-void
.end method

.method public setRightBearing()V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v3, 0x400

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 256
    return-void
.end method

.method public setSoftbreak()V
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v3, 0x4

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 248
    return-void
.end method

.method public setTab()V
    .locals 5

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/text/TextRun;->flags:I

    const/4 v3, 0x1

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 232
    return-void
.end method

.method public setWidth(F)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "width":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/text/TextRun;->width:F

    .line 202
    return-void
.end method

.method public shape(I[I[F)V
    .locals 8

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "count":I
    move-object v2, p2

    .local v2, "glyphs":[I
    move-object v3, p3

    .local v3, "pos":[F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    .line 366
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/text/TextRun;->gids:[I

    .line 367
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/text/TextRun;->positions:[F

    .line 368
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    .line 369
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v6, 0x1000

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 370
    return-void
.end method

.method public shape(I[I[F[I)V
    .locals 7

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    move v1, p1

    .local v1, "count":I
    move-object v2, p2

    .local v2, "glyphs":[I
    move-object v3, p3

    .local v3, "pos":[F
    move-object v4, p4

    .local v4, "indices":[I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    .line 359
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/text/TextRun;->gids:[I

    .line 360
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/text/TextRun;->positions:[F

    .line 361
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/text/TextRun;->charIndices:[I

    .line 362
    return-void
.end method

.method public split(I)Lcom/sun/javafx/text/TextRun;
    .locals 22

    .prologue
    .line 443
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/text/TextRun;
    move/from16 v2, p1

    .local v2, "offset":I
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/text/TextRun;->length:I

    move v12, v2

    sub-int/2addr v11, v12

    move v3, v11

    .line 444
    .local v3, "newLength":I
    move-object v11, v1

    move v12, v2

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->length:I

    .line 445
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextRun;->isComplex()Z

    move-result v11

    move v4, v11

    .line 446
    .local v4, "complex":Z
    new-instance v11, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/text/TextRun;->start:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/text/TextRun;->length:I

    add-int/2addr v13, v14

    move v14, v3

    move-object v15, v1

    iget-byte v15, v15, Lcom/sun/javafx/text/TextRun;->level:B

    move/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/text/TextRun;->script:I

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/text/TextRun;->span:Lcom/sun/javafx/scene/text/TextSpan;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/text/TextRun;->slot:I

    move/from16 v19, v0

    move-object/from16 v20, v1

    .line 447
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/text/TextRun;->isCanonical()Z

    move-result v20

    invoke-direct/range {v12 .. v20}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object v5, v11

    .line 448
    .local v5, "newRun":Lcom/sun/javafx/text/TextRun;
    move-object v11, v1

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v13, 0x10

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 449
    move-object v11, v5

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v13, 0x8

    or-int/lit8 v12, v12, 0x8

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 450
    move-object v11, v1

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v13, 0x80

    or-int/lit16 v12, v12, 0x80

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 451
    move-object v11, v1

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v13, -0x101

    and-int/lit16 v12, v12, -0x101

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 452
    move-object v11, v5

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v13, 0x100

    or-int/lit16 v12, v12, 0x100

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 453
    move-object v11, v5

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->ascent:F

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/text/TextRun;->descent:F

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/text/TextRun;->leading:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/text/TextRun;->setMetrics(FFF)V

    .line 454
    move v11, v4

    if-nez v11, :cond_4

    .line 455
    move-object v11, v1

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->length:I

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    .line 458
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v12, 0x1000

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_2

    .line 459
    move-object v11, v5

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/text/TextRun;->gids:[I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/text/TextRun;->positions:[F

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/text/TextRun;->shape(I[I[F)V

    .line 460
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/text/TextRun;->width:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 461
    move v11, v3

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->length:I

    if-le v11, v12, :cond_1

    .line 462
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/text/TextRun;->width:F

    move v6, v11

    .line 463
    .local v6, "oldWidth":F
    move-object v11, v1

    const/high16 v12, -0x40800000    # -1.0f

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->width:F

    .line 464
    move-object v11, v5

    move v12, v6

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/sun/javafx/text/TextRun;->setWidth(F)V

    .line 465
    .line 484
    .end local v6    # "oldWidth":F
    :cond_0
    :goto_0
    move-object v11, v5

    move-object v1, v11

    .end local v1    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v1

    .line 466
    .restart local v1    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_1
    move-object v11, v1

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    iget v12, v12, Lcom/sun/javafx/text/TextRun;->width:F

    move-object v13, v5

    invoke-virtual {v13}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v13

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/sun/javafx/text/TextRun;->width:F

    goto :goto_0

    .line 470
    :cond_2
    move v11, v3

    new-array v11, v11, [I

    move-object v6, v11

    .line 471
    .local v6, "newGlyphs":[I
    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    new-array v11, v11, [F

    move-object v7, v11

    .line 472
    .local v7, "newPos":[F
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/text/TextRun;->gids:[I

    move v12, v2

    move-object v13, v6

    const/4 v14, 0x0

    move v15, v3

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v11

    move v8, v11

    .line 474
    .local v8, "width":F
    move v11, v2

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v9, v11

    .line 475
    .local v9, "delta":I
    const/4 v11, 0x2

    move v10, v11

    .local v10, "i":I
    :goto_1
    move v11, v10

    move-object v12, v7

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 476
    move-object v11, v7

    move v12, v10

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/text/TextRun;->positions:[F

    move v14, v10

    move v15, v9

    add-int/2addr v14, v15

    aget v13, v13, v14

    move v14, v8

    sub-float/2addr v13, v14

    aput v13, v11, v12

    .line 475
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 478
    :cond_3
    move-object v11, v5

    move v12, v3

    move-object v13, v6

    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/text/TextRun;->shape(I[I[F[I)V

    .line 479
    goto :goto_0

    .line 482
    .end local v6    # "newGlyphs":[I
    .end local v7    # "newPos":[F
    .end local v8    # "width":F
    .end local v9    # "delta":I
    .end local v10    # "i":I
    :cond_4
    move-object v11, v1

    invoke-direct {v11}, Lcom/sun/javafx/text/TextRun;->reset()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 558
    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string v3, "TextRun start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 559
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 560
    move-object v2, v1

    const-string v3, ", length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 561
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 562
    move-object v2, v1

    const-string v3, ", script="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 563
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->script:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 564
    move-object v2, v1

    const-string v3, ", linebreak="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 565
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 566
    move-object v2, v1

    const-string v3, ", softbreak="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 567
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isSoftbreak()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 568
    move-object v2, v1

    const-string v3, ", complex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 569
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isComplex()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 570
    move-object v2, v1

    const-string v3, ", tab="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 571
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isTab()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 572
    move-object v2, v1

    const-string v3, ", compact="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 573
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    const/16 v4, 0x1000

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 574
    move-object v2, v1

    const-string v3, ", ltr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 575
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isLeftToRight()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 576
    move-object v2, v1

    const-string v3, ", split="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 577
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/text/TextRun;->isSplit()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 578
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v0

    .line 573
    .restart local v0    # "this":Lcom/sun/javafx/text/TextRun;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public unwrap()Lcom/sun/javafx/text/TextRun;
    .locals 14

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/TextRun;
    new-instance v3, Lcom/sun/javafx/text/TextRun;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->start:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->length:I

    move-object v7, v0

    iget-byte v7, v7, Lcom/sun/javafx/text/TextRun;->level:B

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/text/TextRun;->isComplex()Z

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/text/TextRun;->script:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/text/TextRun;->span:Lcom/sun/javafx/scene/text/TextSpan;

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/text/TextRun;->slot:I

    move-object v12, v0

    .line 504
    invoke-virtual {v12}, Lcom/sun/javafx/text/TextRun;->isCanonical()Z

    move-result v12

    invoke-direct/range {v4 .. v12}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object v1, v3

    .line 505
    .local v1, "newRun":Lcom/sun/javafx/text/TextRun;
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->glyphCount:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/text/TextRun;->gids:[I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/text/TextRun;->positions:[F

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/text/TextRun;->shape(I[I[F)V

    .line 506
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->width:F

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/TextRun;->setWidth(F)V

    .line 507
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->ascent:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/text/TextRun;->descent:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/text/TextRun;->leading:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/text/TextRun;->setMetrics(FFF)V

    .line 509
    const/16 v3, 0x1c

    move v2, v3

    .line 510
    .local v2, "mask":I
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/text/TextRun;->flags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/text/TextRun;->flags:I

    .line 511
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/text/TextRun;
    return-object v0
.end method

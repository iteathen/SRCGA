.class public Lcom/sun/javafx/font/PrismMetrics;
.super Ljava/lang/Object;
.source "PrismMetrics.java"

# interfaces
.implements Lcom/sun/javafx/font/Metrics;


# static fields
.field static final CAPHEIGHT:I = 0x1

.field static final METRICS_TOTAL:I = 0x9

.field static final STRIKETHROUGH_OFFSET:I = 0x6

.field static final STRIKETHROUGH_THICKNESS:I = 0x5

.field static final TYPO_ASCENT:I = 0x2

.field static final TYPO_DESCENT:I = 0x3

.field static final TYPO_LINEGAP:I = 0x4

.field static final UNDERLINE_OFFSET:I = 0x8

.field static final UNDERLINE_THICKESS:I = 0x7

.field static final XHEIGHT:I


# instance fields
.field ascent:F

.field descent:F

.field fontResource:Lcom/sun/javafx/font/PrismFontFile;

.field linegap:F

.field size:F

.field private styleMetrics:[F


# direct methods
.method constructor <init>(FFFLcom/sun/javafx/font/PrismFontFile;F)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move v1, p1

    .local v1, "ascent":F
    move v2, p2

    .local v2, "descent":F
    move v3, p3

    .local v3, "linegap":F
    move-object v4, p4

    .local v4, "fontResource":Lcom/sun/javafx/font/PrismFontFile;
    move v5, p5

    .local v5, "size":F
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/javafx/font/PrismMetrics;->ascent:F

    .line 50
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/font/PrismMetrics;->descent:F

    .line 51
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/javafx/font/PrismMetrics;->linegap:F

    .line 52
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/font/PrismMetrics;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    .line 53
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/javafx/font/PrismMetrics;->size:F

    .line 54
    return-void
.end method

.method private checkStyleMetrics()V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    if-nez v1, :cond_0

    .line 74
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismMetrics;->fontResource:Lcom/sun/javafx/font/PrismFontFile;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismMetrics;->size:F

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->getStyleMetrics(F)[F

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public getAscent()F
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismMetrics;->ascent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getCapHeight()F
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getDescent()F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismMetrics;->descent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getLineGap()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismMetrics;->linegap:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getLineHeight()F
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismMetrics;->ascent:F

    neg-float v1, v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismMetrics;->descent:F

    add-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismMetrics;->linegap:F

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getStrikethroughOffset()F
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 105
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getStrikethroughThickness()F
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 110
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getTypoAscent()F
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getTypoDescent()F
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 85
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getTypoLineGap()F
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 90
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getUnderLineOffset()F
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getUnderLineThickness()F
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 120
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public getXHeight()F
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismMetrics;->checkStyleMetrics()V

    .line 100
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismMetrics;->styleMetrics:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ascent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 125
    invoke-virtual {v2}, Lcom/sun/javafx/font/PrismMetrics;->getAscent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 126
    invoke-virtual {v2}, Lcom/sun/javafx/font/PrismMetrics;->getDescent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " linegap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Lcom/sun/javafx/font/PrismMetrics;->getLineGap()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lineheight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 128
    invoke-virtual {v2}, Lcom/sun/javafx/font/PrismMetrics;->getLineHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismMetrics;
    return-object v0
.end method

.class public Lcom/sun/javafx/font/PrismFontUtils;
.super Ljava/lang/Object;
.source "PrismFontUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static computeStringWidth(Lcom/sun/javafx/font/PGFont;Ljava/lang/String;)D
    .locals 11

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "font":Lcom/sun/javafx/font/PGFont;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 49
    .end local v0    # "font":Lcom/sun/javafx/font/PGFont;
    :goto_0
    return-wide v0

    .line 43
    .restart local v0    # "font":Lcom/sun/javafx/font/PGFont;
    :cond_1
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v6

    move-object v2, v6

    .line 45
    .local v2, "strike":Lcom/sun/javafx/font/FontStrike;
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 46
    .local v3, "width":D
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 47
    move-wide v6, v3

    move-object v8, v2

    move-object v9, v1

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-interface {v8, v9}, Lcom/sun/javafx/font/FontStrike;->getCharAdvance(C)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    move-wide v3, v6

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 49
    :cond_2
    move-wide v6, v3

    move-wide v0, v6

    goto :goto_0
.end method

.method static getFontMetrics(Lcom/sun/javafx/font/PGFont;)Lcom/sun/javafx/font/Metrics;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "font":Lcom/sun/javafx/font/PGFont;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v2

    move-object v1, v2

    .line 38
    .local v1, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "font":Lcom/sun/javafx/font/PGFont;
    return-object v0
.end method

.class public Lcom/sun/javafx/font/FontStrikeDesc;
.super Ljava/lang/Object;
.source "FontStrikeDesc.java"


# instance fields
.field aaMode:I

.field private hash:I

.field matrix:[F

.field size:F


# direct methods
.method public constructor <init>(FLcom/sun/javafx/geom/transform/BaseTransform;I)V
    .locals 10

    .prologue
    .line 39
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/FontStrikeDesc;
    move v2, p1

    .local v2, "fontSize":F
    move-object v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v4, p3

    .local v4, "aaMode":I
    move-object v6, v1

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v6, v3

    move-object v5, v6

    .line 44
    .local v5, "tx2d":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v1

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/font/FontStrikeDesc;->size:F

    .line 45
    move-object v6, v1

    move v7, v4

    iput v7, v6, Lcom/sun/javafx/font/FontStrikeDesc;->aaMode:I

    .line 46
    move-object v6, v1

    const/4 v7, 0x4

    new-array v7, v7, [F

    iput-object v7, v6, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    .line 47
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v7, 0x0

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    .line 48
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v7, 0x1

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    .line 49
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v7, 0x2

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    .line 50
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v7, 0x3

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/FontStrikeDesc;

    move-object v2, v3

    .line 78
    .local v2, "other":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->aaMode:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->aaMode:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->size:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/font/FontStrikeDesc;->size:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontStrikeDesc;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/FontStrikeDesc;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/FontStrikeDesc;->hash:I

    if-nez v1, :cond_0

    .line 57
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/FontStrikeDesc;->aaMode:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->size:F

    .line 59
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 60
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 61
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 62
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontStrikeDesc;->matrix:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    .line 63
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/javafx/font/FontStrikeDesc;->hash:I

    .line 65
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/FontStrikeDesc;->hash:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontStrikeDesc;
    return v0
.end method

.class Lcom/sun/javafx/font/PrismFont;
.super Ljava/lang/Object;
.source "PrismFont.java"

# interfaces
.implements Lcom/sun/javafx/font/PGFont;


# instance fields
.field private features:I

.field protected fontResource:Lcom/sun/javafx/font/FontResource;

.field private fontSize:F

.field private hash:I

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, p1

    .local v1, "fontResource":Lcom/sun/javafx/font/FontResource;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "size":F
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    .line 40
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/font/PrismFont;->name:Ljava/lang/String;

    .line 41
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 88
    const/4 v3, 0x0

    move v0, v3

    .line 100
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    :goto_0
    return v0

    .line 90
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/font/PrismFont;

    if-nez v3, :cond_1

    .line 91
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 93
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/PrismFont;

    move-object v2, v3

    .line 98
    .local v2, "other":Lcom/sun/javafx/font/PrismFont;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getFeatures()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFont;->features:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return v0
.end method

.method public getFontResource()Lcom/sun/javafx/font/FontResource;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFont;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return v0
.end method

.method public getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/font/FontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "smoothingType":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Lcom/sun/javafx/font/FontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getStyleName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFont;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFont;->hash:I

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFont;->hash:I

    move v0, v1

    .line 112
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    :goto_0
    return v0

    .line 110
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFont;
    :cond_0
    move-object v1, v0

    const/16 v2, 0x1f1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismFont;->fontSize:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/javafx/font/PrismFont;->hash:I

    .line 111
    move-object v1, v0

    const/16 v2, 0x47

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/PrismFont;->hash:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFont;->fontResource:Lcom/sun/javafx/font/FontResource;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/javafx/font/PrismFont;->hash:I

    .line 112
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFont;->hash:I

    move v0, v1

    goto :goto_0
.end method

.class public Lcom/sun/scenario/effect/light/SpotLight;
.super Lcom/sun/scenario/effect/light/PointLight;
.source "SpotLight.java"


# instance fields
.field private pointsAtX:F

.field private pointsAtY:F

.field private pointsAtZ:F

.field private specularExponent:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/scenario/effect/Color4f;->WHITE:Lcom/sun/scenario/effect/Color4f;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/scenario/effect/light/SpotLight;-><init>(FFFLcom/sun/scenario/effect/Color4f;)V

    .line 48
    return-void
.end method

.method public constructor <init>(FFFLcom/sun/scenario/effect/Color4f;)V
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, p4

    .local v4, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v5, v0

    sget-object v6, Lcom/sun/scenario/effect/light/Light$Type;->SPOT:Lcom/sun/scenario/effect/light/Light$Type;

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sun/scenario/effect/light/PointLight;-><init>(Lcom/sun/scenario/effect/light/Light$Type;FFFLcom/sun/scenario/effect/Color4f;)V

    .line 63
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtX:F

    .line 64
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtY:F

    .line 65
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtZ:F

    .line 66
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/sun/scenario/effect/light/SpotLight;->specularExponent:F

    .line 67
    return-void
.end method


# virtual methods
.method public getNormalizedLightDirection()[F
    .locals 12

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtX:F

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/effect/light/SpotLight;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    move v1, v6

    .line 191
    .local v1, "sx":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtY:F

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/effect/light/SpotLight;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    move v2, v6

    .line 192
    .local v2, "sy":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtZ:F

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/scenario/effect/light/SpotLight;->getZ()F

    move-result v7

    sub-float/2addr v6, v7

    move v3, v6

    .line 194
    .local v3, "sz":F
    move v6, v1

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v2

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v7, v3

    move v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 195
    .local v4, "len":F
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v6

    .line 196
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [F

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move v9, v1

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move v9, v2

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x2

    move v9, v3

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v5, v6

    .line 197
    .local v5, "vec":[F
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return-object v0
.end method

.method public getNormalizedLightPosition()[F
    .locals 12

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/light/SpotLight;->getX()F

    move-result v6

    move v1, v6

    .line 175
    .local v1, "x":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/light/SpotLight;->getY()F

    move-result v6

    move v2, v6

    .line 176
    .local v2, "y":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/light/SpotLight;->getZ()F

    move-result v6

    move v3, v6

    .line 177
    .local v3, "z":F
    move v6, v1

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v2

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v7, v3

    move v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 178
    .local v4, "len":F
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v6

    .line 179
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [F

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move v9, v1

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move v9, v2

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x2

    move v9, v3

    move v10, v4

    div-float/2addr v9, v10

    aput v9, v7, v8

    move-object v5, v6

    .line 180
    .local v5, "pos":[F
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return-object v0
.end method

.method public getPointsAtX()F
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return v0
.end method

.method public getPointsAtY()F
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return v0
.end method

.method public getPointsAtZ()F
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtZ:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return v0
.end method

.method public getSpecularExponent()F
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/SpotLight;->specularExponent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/SpotLight;
    return v0
.end method

.method public setPointsAtX(F)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move v1, p1

    .local v1, "pointsAtX":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtX:F

    .line 91
    return-void
.end method

.method public setPointsAtY(F)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move v1, p1

    .local v1, "pointsAtY":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtY:F

    move v2, v3

    .line 115
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtY:F

    .line 116
    return-void
.end method

.method public setPointsAtZ(F)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move v1, p1

    .local v1, "pointsAtZ":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/SpotLight;->pointsAtZ:F

    .line 140
    return-void
.end method

.method public setSpecularExponent(F)V
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/SpotLight;
    move v1, p1

    .local v1, "specularExponent":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Specular exponent must be in the range [0,4]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/SpotLight;->specularExponent:F

    .line 169
    return-void
.end method

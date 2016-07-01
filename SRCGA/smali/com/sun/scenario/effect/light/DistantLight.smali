.class public Lcom/sun/scenario/effect/light/DistantLight;
.super Lcom/sun/scenario/effect/light/Light;
.source "DistantLight.java"


# instance fields
.field private azimuth:F

.field private elevation:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/scenario/effect/Color4f;->WHITE:Lcom/sun/scenario/effect/Color4f;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/light/DistantLight;-><init>(FFLcom/sun/scenario/effect/Color4f;)V

    .line 44
    return-void
.end method

.method public constructor <init>(FFLcom/sun/scenario/effect/Color4f;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move v1, p1

    .local v1, "azimuth":F
    move v2, p2

    .local v2, "elevation":F
    move-object v3, p3

    .local v3, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v4, v0

    sget-object v5, Lcom/sun/scenario/effect/light/Light$Type;->DISTANT:Lcom/sun/scenario/effect/light/Light$Type;

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/light/Light;-><init>(Lcom/sun/scenario/effect/light/Light$Type;Lcom/sun/scenario/effect/Color4f;)V

    .line 57
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/scenario/effect/light/DistantLight;->azimuth:F

    .line 58
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/scenario/effect/light/DistantLight;->elevation:F

    .line 59
    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/DistantLight;->azimuth:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/DistantLight;
    return v0
.end method

.method public getElevation()F
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/DistantLight;->elevation:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/DistantLight;
    return v0
.end method

.method public getNormalizedLightPosition()[F
    .locals 16

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/light/DistantLight;->azimuth:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    move-wide v1, v10

    .line 116
    .local v1, "a":D
    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/light/DistantLight;->elevation:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    move-wide v3, v10

    .line 117
    .local v3, "e":D
    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    move-wide v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move v5, v10

    .line 118
    .local v5, "x":F
    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move-wide v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move v6, v10

    .line 119
    .local v6, "y":F
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v7, v10

    .line 121
    .local v7, "z":F
    move v10, v5

    move v11, v5

    mul-float/2addr v10, v11

    move v11, v6

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v11, v7

    move v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v8, v10

    .line 122
    .local v8, "len":F
    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    move v8, v10

    .line 123
    :cond_0
    const/4 v10, 0x3

    new-array v10, v10, [F

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move v13, v5

    move v14, v8

    div-float/2addr v13, v14

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move v13, v6

    move v14, v8

    div-float/2addr v13, v14

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move v13, v7

    move v14, v8

    div-float/2addr v13, v14

    aput v13, v11, v12

    move-object v9, v10

    .line 124
    .local v9, "pos":[F
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/light/DistantLight;
    return-object v0
.end method

.method public setAzimuth(F)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move v1, p1

    .local v1, "azimuth":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/DistantLight;->azimuth:F

    .line 85
    return-void
.end method

.method public setElevation(F)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/DistantLight;
    move v1, p1

    .local v1, "elevation":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/DistantLight;->elevation:F

    .line 111
    return-void
.end method

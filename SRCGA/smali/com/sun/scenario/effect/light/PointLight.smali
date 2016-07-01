.class public Lcom/sun/scenario/effect/light/PointLight;
.super Lcom/sun/scenario/effect/light/Light;
.source "PointLight.java"


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/scenario/effect/Color4f;->WHITE:Lcom/sun/scenario/effect/Color4f;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/scenario/effect/light/PointLight;-><init>(FFFLcom/sun/scenario/effect/Color4f;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFLcom/sun/scenario/effect/Color4f;)V
    .locals 11

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, p4

    .local v4, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v5, v0

    sget-object v6, Lcom/sun/scenario/effect/light/Light$Type;->POINT:Lcom/sun/scenario/effect/light/Light$Type;

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sun/scenario/effect/light/PointLight;-><init>(Lcom/sun/scenario/effect/light/Light$Type;FFFLcom/sun/scenario/effect/Color4f;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/effect/light/Light$Type;FFFLcom/sun/scenario/effect/Color4f;)V
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v1, p1

    .local v1, "type":Lcom/sun/scenario/effect/light/Light$Type;
    move v2, p2

    .local v2, "x":F
    move v3, p3

    .local v3, "y":F
    move v4, p4

    .local v4, "z":F
    move-object v5, p5

    .local v5, "color":Lcom/sun/scenario/effect/Color4f;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/sun/scenario/effect/light/Light;-><init>(Lcom/sun/scenario/effect/light/Light$Type;Lcom/sun/scenario/effect/Color4f;)V

    .line 72
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/scenario/effect/light/PointLight;->x:F

    .line 73
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/scenario/effect/light/PointLight;->y:F

    .line 74
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/scenario/effect/light/PointLight;->z:F

    .line 75
    return-void
.end method


# virtual methods
.method public getNormalizedLightPosition()[F
    .locals 10

    .prologue
    .line 152
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/light/PointLight;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/scenario/effect/light/PointLight;->x:F

    mul-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Lcom/sun/scenario/effect/light/PointLight;->y:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/scenario/effect/light/PointLight;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Lcom/sun/scenario/effect/light/PointLight;->z:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/scenario/effect/light/PointLight;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 153
    .local v2, "len":F
    move v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v4

    .line 154
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [F

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v1

    iget v7, v7, Lcom/sun/scenario/effect/light/PointLight;->x:F

    move v8, v2

    div-float/2addr v7, v8

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v1

    iget v7, v7, Lcom/sun/scenario/effect/light/PointLight;->y:F

    move v8, v2

    div-float/2addr v7, v8

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x2

    move-object v7, v1

    iget v7, v7, Lcom/sun/scenario/effect/light/PointLight;->z:F

    move v8, v2

    div-float/2addr v7, v8

    aput v7, v5, v6

    move-object v3, v4

    .line 155
    .local v3, "pos":[F
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/scenario/effect/light/PointLight;
    return-object v1
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/PointLight;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/PointLight;
    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/PointLight;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/PointLight;
    return v0
.end method

.method public getZ()F
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/light/PointLight;->z:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/light/PointLight;
    return v0
.end method

.method public setX(F)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move v1, p1

    .local v1, "x":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/PointLight;->x:F

    .line 99
    return-void
.end method

.method public setY(F)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move v1, p1

    .local v1, "y":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/PointLight;->y:F

    .line 123
    return-void
.end method

.method public setZ(F)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/PointLight;
    move v1, p1

    .local v1, "z":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/light/PointLight;->z:F

    .line 147
    return-void
.end method

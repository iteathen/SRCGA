.class public Lcom/sun/javafx/geom/Vec2f;
.super Ljava/lang/Object;
.source "Vec2f.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 47
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 52
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 53
    return-void
.end method

.method public static distance(FFFF)F
    .locals 7

    .prologue
    .line 106
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, v0

    move v5, v2

    sub-float/2addr v4, v5

    move v0, v4

    .line 107
    move v4, v1

    move v5, v3

    sub-float/2addr v4, v5

    move v1, v4

    .line 108
    move v4, v0

    move v5, v0

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    .end local v0    # "x1":F
    return v0
.end method

.method public static distanceSq(FFFF)F
    .locals 7

    .prologue
    .line 90
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, v0

    move v5, v2

    sub-float/2addr v4, v5

    move v0, v4

    .line 91
    move v4, v1

    move v5, v3

    sub-float/2addr v4, v5

    move v1, v4

    .line 92
    move v4, v0

    move v5, v0

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v0, v4

    .end local v0    # "x1":F
    return v0
.end method


# virtual methods
.method public distance(FF)F
    .locals 7

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2f;
    move v2, p1

    .local v2, "vx":F
    move v3, p2

    .local v3, "vy":F
    move v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 156
    move v4, v3

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 157
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec2f;
    return v1
.end method

.method public distance(Lcom/sun/javafx/geom/Vec2f;)F
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 171
    .local v2, "vx":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 172
    .local v3, "vy":F
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    return v0
.end method

.method public distanceSq(FF)F
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move v1, p1

    .local v1, "vx":F
    move v2, p2

    .local v2, "vy":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v3, v4

    move v1, v3

    .line 124
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v3, v4

    move v2, v3

    .line 125
    move v3, v1

    move v4, v1

    mul-float/2addr v3, v4

    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    return v0
.end method

.method public distanceSq(Lcom/sun/javafx/geom/Vec2f;)F
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 139
    .local v2, "vx":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 140
    .local v3, "vy":F
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 204
    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    :goto_0
    return v0

    .line 200
    .restart local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Vec2f;

    if-eqz v3, :cond_2

    .line 201
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Vec2f;

    move-object v2, v3

    .line 202
    .local v2, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 204
    .end local v2    # "v":Lcom/sun/javafx/geom/Vec2f;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    const/4 v2, 0x7

    move v1, v2

    .line 182
    .local v1, "bits":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 183
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 184
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    return v0
.end method

.method public set(FF)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 76
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 77
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 64
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec2f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2f;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vec2f["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec2f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec2f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2f;
    return-object v0
.end method

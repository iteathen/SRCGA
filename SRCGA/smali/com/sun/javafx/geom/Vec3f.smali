.class public Lcom/sun/javafx/geom/Vec3f;
.super Ljava/lang/Object;
.source "Vec3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 52
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 53
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 58
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 60
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 122
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 123
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 124
    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "t2":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->x:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 111
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->y:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 112
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->z:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 113
    return-void
.end method

.method public cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 9

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "v1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "v2":Lcom/sun/javafx/geom/Vec3f;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v5, v6

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v3, v5

    .line 154
    .local v3, "tmpX":F
    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v4, v5

    .line 155
    .local v4, "tmpY":F
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 156
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 157
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 158
    return-void
.end method

.method public dot(Lcom/sun/javafx/geom/Vec3f;)F
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "v1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3f;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 195
    const/4 v3, 0x1

    move v0, v3

    .line 201
    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3f;
    :goto_0
    return v0

    .line 197
    .restart local v0    # "this":Lcom/sun/javafx/geom/Vec3f;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Vec3f;

    if-eqz v3, :cond_2

    .line 198
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v2, v3

    .line 199
    .local v2, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 201
    .end local v2    # "v":Lcom/sun/javafx/geom/Vec3f;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    const/4 v2, 0x7

    move v1, v2

    .line 176
    .local v1, "bits":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 177
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 178
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 179
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3f;
    return v0
.end method

.method public length()F
    .locals 5

    .prologue
    .line 131
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v2, v3

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec3f;
    return v1
.end method

.method public final mul(F)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move v1, p1

    .local v1, "s":F
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 76
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 77
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 78
    return-void
.end method

.method public normalize()V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v3

    div-float/2addr v2, v3

    move v1, v2

    .line 139
    .local v1, "norm":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 140
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 141
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 142
    return-void
.end method

.method public set(FFF)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 70
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 71
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 72
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 64
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 65
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 66
    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 99
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 100
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 101
    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "t2":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 88
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 89
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3f;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vec3f["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec3f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec3f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec3f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3f;
    return-object v0
.end method

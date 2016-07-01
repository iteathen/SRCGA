.class public Lcom/sun/javafx/geom/Vec3d;
.super Ljava/lang/Object;
.source "Vec3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 52
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 53
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 62
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 9

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p1

    .local v2, "t1":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 146
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 147
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 148
    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "t2":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 135
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 136
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 137
    return-void
.end method

.method public cross(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V
    .locals 15

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p1

    .local v2, "v1":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v3, p2

    .local v3, "v2":Lcom/sun/javafx/geom/Vec3d;
    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v8, v10

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 178
    .local v4, "tmpX":D
    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v8, v10

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v12, v2

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 179
    .local v6, "tmpY":D
    move-object v8, v1

    move-object v9, v2

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v11, v3

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v9, v11

    move-object v11, v2

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 180
    move-object v8, v1

    move-wide v9, v4

    iput-wide v9, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 181
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 182
    return-void
.end method

.method public dot(Lcom/sun/javafx/geom/Vec3d;)D
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, p1

    .local v1, "v1":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v2, v4

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3d;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 218
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 219
    const/4 v4, 0x1

    move v1, v4

    .line 225
    .end local v1    # "this":Lcom/sun/javafx/geom/Vec3d;
    :goto_0
    return v1

    .line 221
    .restart local v1    # "this":Lcom/sun/javafx/geom/Vec3d;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/geom/Vec3d;

    if-eqz v4, :cond_2

    .line 222
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/Vec3d;

    move-object v3, v4

    .line 223
    .local v3, "v":Lcom/sun/javafx/geom/Vec3d;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 225
    .end local v3    # "v":Lcom/sun/javafx/geom/Vec3d;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 200
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 201
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 202
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 203
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec3d;
    return v1
.end method

.method public length()D
    .locals 8

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec3d;
    return-wide v1
.end method

.method public mul(D)V
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-wide v1, p1

    .local v1, "scale":D
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 88
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 89
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 90
    return-void
.end method

.method public normalize()V
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Vec3d;->length()D

    move-result-wide v5

    div-double/2addr v3, v5

    move-wide v1, v3

    .line 163
    .local v1, "norm":D
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 164
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 165
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 166
    return-void
.end method

.method public set(DDD)V
    .locals 11

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 78
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 79
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 80
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 6

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 72
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 73
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 74
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 66
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 67
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 68
    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p1

    .local v2, "t1":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 123
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 124
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 125
    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)V
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "t2":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 112
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 113
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 114
    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
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

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 100
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 101
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec3d;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vec3d["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec3d;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec3d;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec3d;
    return-object v0
.end method

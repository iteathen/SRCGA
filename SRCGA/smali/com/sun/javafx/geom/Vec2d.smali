.class public Lcom/sun/javafx/geom/Vec2d;
.super Ljava/lang/Object;
.source "Vec2d.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec2d;->x:D

    .line 47
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec2d;->y:D

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec2d;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2d;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec2d;->set(Lcom/sun/javafx/geom/Vec2d;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec2d;->set(Lcom/sun/javafx/geom/Vec2f;)V

    .line 56
    return-void
.end method

.method public static distance(DDDD)D
    .locals 14

    .prologue
    .line 100
    move-wide v0, p0

    .local v0, "x1":D
    move-wide/from16 v2, p2

    .local v2, "y1":D
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-wide/from16 v6, p6

    .local v6, "y2":D
    move-wide v8, v0

    move-wide v10, v4

    sub-double/2addr v8, v10

    move-wide v0, v8

    .line 101
    move-wide v8, v2

    move-wide v10, v6

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 102
    move-wide v8, v0

    move-wide v10, v0

    mul-double/2addr v8, v10

    move-wide v10, v2

    move-wide v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "x1":D
    return-wide v0
.end method

.method public static distanceSq(DDDD)D
    .locals 14

    .prologue
    .line 84
    move-wide v0, p0

    .local v0, "x1":D
    move-wide/from16 v2, p2

    .local v2, "y1":D
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-wide/from16 v6, p6

    .local v6, "y2":D
    move-wide v8, v0

    move-wide v10, v4

    sub-double/2addr v8, v10

    move-wide v0, v8

    .line 85
    move-wide v8, v2

    move-wide v10, v6

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 86
    move-wide v8, v0

    move-wide v10, v0

    mul-double/2addr v8, v10

    move-wide v10, v2

    move-wide v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "x1":D
    return-wide v0
.end method


# virtual methods
.method public distance(DD)D
    .locals 13

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    move-wide v2, p1

    .local v2, "vx":D
    move-wide/from16 v4, p3

    .local v4, "vy":D
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->x:D

    sub-double/2addr v6, v8

    move-wide v2, v6

    .line 150
    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->y:D

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 151
    move-wide v6, v2

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec2d;
    return-wide v1
.end method

.method public distance(Lcom/sun/javafx/geom/Vec2d;)D
    .locals 12

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2d;
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->x:D

    sub-double/2addr v6, v8

    move-wide v2, v6

    .line 165
    .local v2, "vx":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->y:D

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 166
    .local v4, "vy":D
    move-wide v6, v2

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2d;
    return-wide v0
.end method

.method public distanceSq(DD)D
    .locals 13

    .prologue
    .line 117
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    move-wide v2, p1

    .local v2, "vx":D
    move-wide/from16 v4, p3

    .local v4, "vy":D
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->x:D

    sub-double/2addr v6, v8

    move-wide v2, v6

    .line 118
    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->y:D

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 119
    move-wide v6, v2

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec2d;
    return-wide v1
.end method

.method public distanceSq(Lcom/sun/javafx/geom/Vec2d;)D
    .locals 12

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec2d;
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->x:D

    sub-double/2addr v6, v8

    move-wide v2, v6

    .line 133
    .local v2, "vx":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec2d;->y:D

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 134
    .local v4, "vy":D
    move-wide v6, v2

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2d;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 194
    const/4 v4, 0x1

    move v1, v4

    .line 200
    .end local v1    # "this":Lcom/sun/javafx/geom/Vec2d;
    :goto_0
    return v1

    .line 196
    .restart local v1    # "this":Lcom/sun/javafx/geom/Vec2d;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/geom/Vec2d;

    if-eqz v4, :cond_2

    .line 197
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/Vec2d;

    move-object v3, v4

    .line 198
    .local v3, "v":Lcom/sun/javafx/geom/Vec2d;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->x:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->y:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 200
    .end local v3    # "v":Lcom/sun/javafx/geom/Vec2d;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 176
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 177
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec2d;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 178
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Vec2d;
    return v1
.end method

.method public set(DD)V
    .locals 9

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec2d;->x:D

    .line 70
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec2d;->y:D

    .line 71
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec2d;)V
    .locals 6

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec2d;
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec2d;->x:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec2d;->x:D

    .line 60
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec2d;->y:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec2d;->y:D

    .line 61
    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 6

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec2d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec2f;
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->x:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec2d;->x:D

    .line 65
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec2f;->y:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec2d;->y:D

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec2d;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vec2d["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec2d;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/Vec2d;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec2d;
    return-object v0
.end method

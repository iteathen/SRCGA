.class public Lcom/sun/javafx/geom/Quat4f;
.super Ljava/lang/Object;
.source "Quat4f.java"


# static fields
.field static final EPS2:D = 1.0E-30


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 62
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move v4, p4

    .local v4, "w":F
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move v8, v1

    move v9, v1

    mul-float/2addr v8, v9

    move v9, v2

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v9, v3

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v9, v4

    move v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v6, v6

    move v5, v6

    .line 74
    .local v5, "mag":F
    move-object v6, v0

    move v7, v1

    move v8, v5

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 75
    move-object v6, v0

    move v7, v2

    move v8, v5

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 76
    move-object v6, v0

    move v7, v3

    move v8, v5

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 77
    move-object v6, v0

    move v7, v4

    move v8, v5

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Quat4f;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v1, p1

    .local v1, "q1":Lcom/sun/javafx/geom/Quat4f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 100
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 101
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 102
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 103
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 104
    return-void
.end method

.method public constructor <init>([F)V
    .locals 10

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v2, p1

    .local v2, "q":[F
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float/2addr v6, v7

    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v2

    const/4 v8, 0x3

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    move v3, v4

    .line 88
    .local v3, "mag":F
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move v6, v3

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 89
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    move v6, v3

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 90
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x2

    aget v5, v5, v6

    move v6, v3

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 91
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x3

    aget v5, v5, v6

    move v6, v3

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 93
    return-void
.end method


# virtual methods
.method public final normalize()V
    .locals 7

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->x:F

    mul-float/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->y:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Quat4f;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->z:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Quat4f;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->w:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Quat4f;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v2, v3

    .line 114
    .local v2, "norm":F
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 115
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v3, v4

    move v2, v3

    .line 116
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->x:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 117
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->y:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 118
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->z:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 119
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->w:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 122
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 123
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 124
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    goto :goto_0
.end method

.method public final scale(F)V
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move v1, p1

    .local v1, "s":F
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 244
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 245
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 246
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    move v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 247
    return-void
.end method

.method public final set(Lcom/sun/javafx/geom/Matrix3f;)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v1, p1

    .local v1, "m1":Lcom/sun/javafx/geom/Matrix3f;
    const/high16 v3, 0x3e800000    # 0.25f

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    add-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 136
    .local v2, "ww":F
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 137
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 138
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 139
    const/high16 v3, 0x3e800000    # 0.25f

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->w:F

    div-float/2addr v3, v4

    move v2, v3

    .line 140
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 141
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 142
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 143
    .line 180
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 147
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 148
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 149
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 150
    goto :goto_0

    .line 153
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 154
    const/high16 v3, -0x41000000    # -0.5f

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 155
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 156
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 157
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 158
    const/high16 v3, 0x3f000000    # 0.5f

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->x:F

    div-float/2addr v3, v4

    move v2, v3

    .line 159
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 160
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 165
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 166
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 167
    goto :goto_0

    .line 170
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 171
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 172
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 173
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 174
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    const/high16 v5, 0x40000000    # 2.0f

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Quat4f;->y:F

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 175
    goto/16 :goto_0

    .line 178
    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 179
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 180
    goto/16 :goto_0
.end method

.method public final set([[F)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    move-object v1, p1

    .local v1, "m1":[[F
    const/high16 v3, 0x3e800000    # 0.25f

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 190
    .local v2, "ww":F
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 191
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 192
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 193
    const/high16 v3, 0x3e800000    # 0.25f

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->w:F

    div-float/2addr v3, v4

    move v2, v3

    .line 194
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 195
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 196
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 197
    .line 234
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 201
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 202
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 203
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 204
    goto :goto_0

    .line 207
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 208
    const/high16 v3, -0x41000000    # -0.5f

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 209
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 210
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 211
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 212
    const/high16 v3, 0x3f000000    # 0.5f

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Quat4f;->x:F

    div-float/2addr v3, v4

    move v2, v3

    .line 213
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 214
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 215
    goto :goto_0

    .line 218
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 219
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 220
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 221
    goto :goto_0

    .line 224
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->x:F

    .line 225
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v2, v3

    .line 226
    move v3, v2

    float-to-double v3, v3

    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 227
    move-object v3, v0

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 228
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Quat4f;->y:F

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 229
    goto/16 :goto_0

    .line 232
    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->y:F

    .line 233
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/javafx/geom/Quat4f;->z:F

    .line 234
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Quat4f;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quat4f["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Quat4f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Quat4f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Quat4f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Quat4f;->w:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Quat4f;
    return-object v0
.end method

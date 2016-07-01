.class public Lcom/sun/javafx/geom/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m20:F

.field public m21:F

.field public m22:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 164
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 166
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 169
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 172
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 173
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 174
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 176
    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 12

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move v1, p1

    .local v1, "m00":F
    move v2, p2

    .local v2, "m01":F
    move v3, p3

    .local v3, "m02":F
    move/from16 v4, p4

    .local v4, "m10":F
    move/from16 v5, p5

    .local v5, "m11":F
    move/from16 v6, p6

    .local v6, "m12":F
    move/from16 v7, p7

    .local v7, "m20":F
    move/from16 v8, p8

    .local v8, "m21":F
    move/from16 v9, p9

    .local v9, "m22":F
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v10, v0

    move v11, v1

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 87
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 88
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 90
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 91
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 92
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 94
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 95
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 96
    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Matrix3f;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move-object v1, p1

    .local v1, "m1":Lcom/sun/javafx/geom/Matrix3f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 147
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 148
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 150
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 151
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 152
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 154
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 155
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 156
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 158
    return-void
.end method

.method public constructor <init>([F)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move-object v1, p1

    .local v1, "v":[F
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 106
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 107
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 108
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 110
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 111
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 112
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 114
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 115
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 116
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 118
    return-void
.end method

.method public constructor <init>([Lcom/sun/javafx/geom/Vec3f;)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move-object v1, p1

    .local v1, "v":[Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 127
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 128
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 130
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 131
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 132
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 134
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 135
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 136
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 138
    return-void
.end method


# virtual methods
.method public final getRow(ILcom/sun/javafx/geom/Vec3f;)V
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "v":Lcom/sun/javafx/geom/Vec3f;
    move v3, v1

    if-nez v3, :cond_0

    .line 273
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 274
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 275
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 287
    :goto_0
    return-void

    .line 276
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 277
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 278
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 279
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    goto :goto_0

    .line 280
    :cond_1
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 281
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 282
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 283
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    goto :goto_0

    .line 285
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Matrix3f"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getRow(I[F)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "v":[F
    move v3, v1

    if-nez v3, :cond_0

    .line 296
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    aput v5, v3, v4

    .line 297
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    aput v5, v3, v4

    .line 298
    move-object v3, v2

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    aput v5, v3, v4

    .line 310
    :goto_0
    return-void

    .line 299
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 300
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    aput v5, v3, v4

    .line 301
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    aput v5, v3, v4

    .line 302
    move-object v3, v2

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    aput v5, v3, v4

    goto :goto_0

    .line 303
    :cond_1
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 304
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    aput v5, v3, v4

    .line 305
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    aput v5, v3, v4

    .line 306
    move-object v3, v2

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    aput v5, v3, v4

    goto :goto_0

    .line 308
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Matrix3f"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final setIdentity()V
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 195
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 198
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 199
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 203
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 204
    return-void
.end method

.method public final setRow(ILcom/sun/javafx/geom/Vec3f;)V
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "v":Lcom/sun/javafx/geom/Vec3f;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 262
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Matrix3f"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 245
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 246
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 247
    .line 264
    :goto_0
    return-void

    .line 250
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 251
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 252
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 253
    goto :goto_0

    .line 256
    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 257
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 258
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 259
    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setRow(I[F)V
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "v":[F
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 232
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Matrix3f"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    .line 215
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    .line 216
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    .line 217
    .line 234
    :goto_0
    return-void

    .line 220
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    .line 221
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    .line 222
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    .line 223
    goto :goto_0

    .line 226
    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    .line 227
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    .line 228
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    .line 229
    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Matrix3f;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m00:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m01:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m02:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m10:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m11:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m12:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m20:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m21:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Matrix3f;->m22:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Matrix3f;
    return-object v0
.end method

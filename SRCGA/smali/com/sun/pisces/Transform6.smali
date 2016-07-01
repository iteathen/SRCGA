.class public final Lcom/sun/pisces/Transform6;
.super Ljava/lang/Object;
.source "Transform6.java"


# instance fields
.field public m00:I

.field public m01:I

.field public m02:I

.field public m10:I

.field public m11:I

.field public m12:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    move-object v1, v0

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x10000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    .line 35
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    move v1, p1

    .local v1, "m00":I
    move v2, p2

    .local v2, "m01":I
    move v3, p3

    .local v3, "m10":I
    move v4, p4

    .local v4, "m11":I
    move v5, p5

    .local v5, "m02":I
    move v6, p6

    .local v6, "m12":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/pisces/Transform6;->initialize()V

    .line 43
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/pisces/Transform6;->m00:I

    .line 44
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/pisces/Transform6;->m01:I

    .line 45
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/pisces/Transform6;->m10:I

    .line 46
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/pisces/Transform6;->m11:I

    .line 47
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/pisces/Transform6;->m02:I

    .line 48
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/pisces/Transform6;->m12:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sun/pisces/Transform6;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    move-object v1, p1

    .local v1, "t":Lcom/sun/pisces/Transform6;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m00:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/pisces/Transform6;->m01:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/pisces/Transform6;->m10:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/pisces/Transform6;->m11:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/pisces/Transform6;->m02:I

    move-object v8, v1

    iget v8, v8, Lcom/sun/pisces/Transform6;->m12:I

    invoke-direct/range {v2 .. v8}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    .line 53
    return-void
.end method

.method private native initialize()V
.end method


# virtual methods
.method public inverse()Lcom/sun/pisces/Transform6;
    .locals 31

    .prologue
    .line 74
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/pisces/Transform6;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v3, v22

    .line 75
    .local v3, "fm00":F
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v4, v22

    .line 76
    .local v4, "fm01":F
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m02:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v5, v22

    .line 77
    .local v5, "fm02":F
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v6, v22

    .line 78
    .local v6, "fm10":F
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v7, v22

    .line 79
    .local v7, "fm11":F
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/pisces/Transform6;->m12:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x47800000    # 65536.0f

    div-float v22, v22, v23

    move/from16 v8, v22

    .line 80
    .local v8, "fm12":F
    move/from16 v22, v3

    move/from16 v23, v7

    mul-float v22, v22, v23

    move/from16 v23, v4

    move/from16 v24, v6

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v9, v22

    .line 82
    .local v9, "fdet":F
    move/from16 v22, v7

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v10, v22

    .line 83
    .local v10, "fa00":F
    move/from16 v22, v4

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v11, v22

    .line 84
    .local v11, "fa01":F
    move/from16 v22, v6

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v12, v22

    .line 85
    .local v12, "fa10":F
    move/from16 v22, v3

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v13, v22

    .line 86
    .local v13, "fa11":F
    move/from16 v22, v4

    move/from16 v23, v8

    mul-float v22, v22, v23

    move/from16 v23, v5

    move/from16 v24, v7

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v14, v22

    .line 87
    .local v14, "fa02":F
    move/from16 v22, v5

    move/from16 v23, v6

    mul-float v22, v22, v23

    move/from16 v23, v3

    move/from16 v24, v8

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v23, v9

    div-float v22, v22, v23

    move/from16 v15, v22

    .line 89
    .local v15, "fa12":F
    move/from16 v22, v10

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x40f0000000000000L    # 65536.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    .line 90
    .local v16, "a00":I
    move/from16 v22, v11

    const/high16 v23, 0x47800000    # 65536.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v17, v22

    .line 91
    .local v17, "a01":I
    move/from16 v22, v12

    const/high16 v23, 0x47800000    # 65536.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v18, v22

    .line 92
    .local v18, "a10":I
    move/from16 v22, v13

    const/high16 v23, 0x47800000    # 65536.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v19, v22

    .line 93
    .local v19, "a11":I
    move/from16 v22, v14

    const/high16 v23, 0x47800000    # 65536.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v20, v22

    .line 94
    .local v20, "a02":I
    move/from16 v22, v15

    const/high16 v23, 0x47800000    # 65536.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v21, v22

    .line 96
    .local v21, "a12":I
    new-instance v22, Lcom/sun/pisces/Transform6;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v21

    invoke-direct/range {v23 .. v29}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    move-object/from16 v2, v22

    .end local v2    # "this":Lcom/sun/pisces/Transform6;
    return-object v2
.end method

.method public isIdentity()Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m00:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m01:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m10:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m11:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m02:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/pisces/Transform6;->m12:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/pisces/Transform6;
    return v0

    .restart local v0    # "this":Lcom/sun/pisces/Transform6;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public postMultiply(Lcom/sun/pisces/Transform6;)V
    .locals 22

    .prologue
    .line 56
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/pisces/Transform6;
    move-object/from16 v3, p1

    .local v3, "t":Lcom/sun/pisces/Transform6;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v4, v16

    .line 57
    .local v4, "_m00":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v6, v16

    .line 58
    .local v6, "_m01":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 59
    .local v8, "_m10":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v10, v16

    .line 60
    .local v10, "_m11":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m02:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x10

    shl-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m00:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m02:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m01:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m12:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 62
    .local v12, "_m02":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/pisces/Transform6;->m12:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x10

    shl-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m10:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m02:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/pisces/Transform6;->m11:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/pisces/Transform6;->m12:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v18, 0x10

    shr-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 65
    .local v14, "_m12":J
    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m00:I

    .line 66
    move-object/from16 v16, v2

    move-wide/from16 v17, v6

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m01:I

    .line 67
    move-object/from16 v16, v2

    move-wide/from16 v17, v12

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m02:I

    .line 68
    move-object/from16 v16, v2

    move-wide/from16 v17, v8

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m10:I

    .line 69
    move-object/from16 v16, v2

    move-wide/from16 v17, v10

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m11:I

    .line 70
    move-object/from16 v16, v2

    move-wide/from16 v17, v14

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/pisces/Transform6;->m12:I

    .line 71
    return-void
.end method

.method public setTransform(Lcom/sun/pisces/Transform6;)Lcom/sun/pisces/Transform6;
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    move-object v1, p1

    .local v1, "Tx":Lcom/sun/pisces/Transform6;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m00:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m00:I

    .line 115
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m10:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m10:I

    .line 116
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m01:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m01:I

    .line 117
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m11:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m11:I

    .line 118
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m02:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m02:I

    .line 119
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/pisces/Transform6;->m12:I

    iput v3, v2, Lcom/sun/pisces/Transform6;->m12:I

    .line 120
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/pisces/Transform6;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/Transform6;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transform6[m00="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m00:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m01="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m01:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m02="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m02:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m10="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m10:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m11="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m11:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m12="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/Transform6;->m12:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/pisces/Transform6;
    return-object v0
.end method

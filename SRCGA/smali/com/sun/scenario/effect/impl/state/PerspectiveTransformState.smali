.class public Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
.super Ljava/lang/Object;
.source "PerspectiveTransformState.java"


# instance fields
.field private itx:[[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    return-void
.end method

.method private static get3x3Determinant([[F)F
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "m":[[F
    move-object v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v0

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move v0, v1

    .end local v0    # "m":[[F
    return v0
.end method


# virtual methods
.method public getITX()[[F
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    return-object v0
.end method

.method public updateTx([[F)V
    .locals 15

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;
    move-object/from16 v1, p1

    .local v1, "tx":[[F
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->get3x3Determinant([[F)F

    move-result v4

    move v2, v4

    .line 39
    .local v2, "det":F
    move v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 40
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    move-object v12, v6

    move v13, v7

    move v14, v8

    move v6, v14

    move-object v7, v12

    move v8, v13

    move v9, v14

    aput v9, v7, v8

    aput v6, v4, v5

    .line 41
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    move-object v12, v6

    move v13, v7

    move v14, v8

    move v6, v14

    move-object v7, v12

    move v8, v13

    move v9, v14

    aput v9, v7, v8

    aput v6, v4, v5

    .line 42
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    move-object v12, v6

    move v13, v7

    move v14, v8

    move v6, v14

    move-object v7, v12

    move v8, v13

    move v9, v14

    aput v9, v7, v8

    aput v6, v4, v5

    .line 43
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 60
    :goto_0
    return-void

    .line 45
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    div-float/2addr v4, v5

    move v3, v4

    .line 50
    .local v3, "invdet":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 52
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 53
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 54
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 55
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 56
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 57
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->itx:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v4, v5

    goto/16 :goto_0
.end method

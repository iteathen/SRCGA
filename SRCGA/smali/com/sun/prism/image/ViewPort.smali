.class public Lcom/sun/prism/image/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


# instance fields
.field public u0:F

.field public u1:F

.field public v0:F

.field public v1:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/ViewPort;
    move v1, p1

    .local v1, "u":F
    move v2, p2

    .local v2, "v":F
    move v3, p3

    .local v3, "du":F
    move v4, p4

    .local v4, "dv":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/prism/image/ViewPort;->u0:F

    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sun/prism/image/ViewPort;->u1:F

    .line 39
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/prism/image/ViewPort;->v0:F

    move-object v5, v0

    move v6, v2

    move v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sun/prism/image/ViewPort;->v1:F

    .line 40
    return-void
.end method


# virtual methods
.method public getClippedCoords(FFFF)Lcom/sun/prism/image/Coords;
    .locals 12

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/ViewPort;
    move v1, p1

    .local v1, "iw":F
    move v2, p2

    .local v2, "ih":F
    move v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    new-instance v6, Lcom/sun/prism/image/Coords;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v3

    move v9, v4

    move-object v10, v0

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/prism/image/Coords;-><init>(FFLcom/sun/prism/image/ViewPort;)V

    move-object v5, v6

    .line 66
    .local v5, "cr":Lcom/sun/prism/image/Coords;
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u1:F

    move v7, v1

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u0:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 67
    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u0:F

    move v7, v1

    cmpl-float v6, v6, v7

    if-gez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u1:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    .line 92
    .end local v0    # "this":Lcom/sun/prism/image/ViewPort;
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "this":Lcom/sun/prism/image/ViewPort;
    :cond_2
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u1:F

    move v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 70
    move-object v6, v5

    move v7, v3

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/prism/image/ViewPort;->getRelX(F)F

    move-result v8

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/prism/image/Coords;->x1:F

    .line 71
    move-object v6, v5

    move v7, v1

    iput v7, v6, Lcom/sun/prism/image/Coords;->u1:F

    .line 73
    :cond_3
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u0:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 74
    move-object v6, v5

    move v7, v3

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/prism/image/ViewPort;->getRelX(F)F

    move-result v8

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/prism/image/Coords;->x0:F

    .line 75
    move-object v6, v5

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/image/Coords;->u0:F

    .line 79
    :cond_4
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v1:F

    move v7, v2

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v0:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 80
    :cond_5
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v0:F

    move v7, v2

    cmpl-float v6, v6, v7

    if-gez v6, :cond_6

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v1:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_7

    :cond_6
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 82
    :cond_7
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v1:F

    move v7, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    .line 83
    move-object v6, v5

    move v7, v4

    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/prism/image/ViewPort;->getRelY(F)F

    move-result v8

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/prism/image/Coords;->y1:F

    .line 84
    move-object v6, v5

    move v7, v2

    iput v7, v6, Lcom/sun/prism/image/Coords;->v1:F

    .line 86
    :cond_8
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v0:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 87
    move-object v6, v5

    move v7, v4

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/prism/image/ViewPort;->getRelY(F)F

    move-result v8

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/prism/image/Coords;->y0:F

    .line 88
    move-object v6, v5

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/image/Coords;->v0:F

    .line 92
    :cond_9
    move-object v6, v5

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getRelX(F)F
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/ViewPort;
    move v1, p1

    .local v1, "u":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/ViewPort;->u0:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/ViewPort;->u1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/image/ViewPort;->u0:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/ViewPort;
    return v0
.end method

.method public getRelY(F)F
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/ViewPort;
    move v1, p1

    .local v1, "v":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/ViewPort;->v0:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/image/ViewPort;->v1:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/image/ViewPort;->v0:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/image/ViewPort;
    return v0
.end method

.method public getScaledVersion(F)Lcom/sun/prism/image/ViewPort;
    .locals 14

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/ViewPort;
    move v1, p1

    .local v1, "pixelScale":F
    move v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 44
    move-object v6, v0

    move-object v0, v6

    .line 50
    .end local v0    # "this":Lcom/sun/prism/image/ViewPort;
    :goto_0
    return-object v0

    .line 46
    .restart local v0    # "this":Lcom/sun/prism/image/ViewPort;
    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u0:F

    move v7, v1

    mul-float/2addr v6, v7

    move v2, v6

    .line 47
    .local v2, "newu0":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v0:F

    move v7, v1

    mul-float/2addr v6, v7

    move v3, v6

    .line 48
    .local v3, "newv0":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->u1:F

    move v7, v1

    mul-float/2addr v6, v7

    move v4, v6

    .line 49
    .local v4, "newu1":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/image/ViewPort;->v1:F

    move v7, v1

    mul-float/2addr v6, v7

    move v5, v6

    .line 50
    .local v5, "newv1":F
    new-instance v6, Lcom/sun/prism/image/ViewPort;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v2

    sub-float/2addr v10, v11

    move v11, v5

    move v12, v3

    sub-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/prism/image/ViewPort;-><init>(FFFF)V

    move-object v0, v6

    goto :goto_0
.end method

.class public Lcom/sun/prism/image/CompoundCoords;
.super Ljava/lang/Object;
.source "CompoundCoords.java"


# instance fields
.field private tileCoords:[Lcom/sun/prism/image/Coords;

.field private xImg0:I

.field private xImg1:I

.field private yImg0:I

.field private yImg1:I


# direct methods
.method public constructor <init>(Lcom/sun/prism/image/CompoundImage;Lcom/sun/prism/image/Coords;)V
    .locals 26

    .prologue
    .line 38
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/image/CompoundCoords;
    move-object/from16 v3, p1

    .local v3, "t":Lcom/sun/prism/image/CompoundImage;
    move-object/from16 v4, p2

    .local v4, "crd":Lcom/sun/prism/image/Coords;
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->u0:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/image/CompoundCoords;->fastFloor(F)I

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/image/CompoundCoords;->find1(I[I)I

    move-result v19

    move/from16 v5, v19

    .line 40
    .local v5, "xImg0":I
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->u1:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/image/CompoundCoords;->fastCeil(F)I

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/image/CompoundCoords;->find2(I[I)I

    move-result v19

    move/from16 v6, v19

    .line 41
    .local v6, "xImg1":I
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->v0:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/image/CompoundCoords;->fastFloor(F)I

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/image/CompoundCoords;->find1(I[I)I

    move-result v19

    move/from16 v7, v19

    .line 42
    .local v7, "yImg0":I
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->v1:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/image/CompoundCoords;->fastCeil(F)I

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/image/CompoundCoords;->find2(I[I)I

    move-result v19

    move/from16 v8, v19

    .line 45
    .local v8, "yImg1":I
    move/from16 v19, v5

    if-ltz v19, :cond_0

    move/from16 v19, v6

    if-ltz v19, :cond_0

    move/from16 v19, v7

    if-ltz v19, :cond_0

    move/from16 v19, v8

    if-gez v19, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/CompoundCoords;->xImg0:I

    move-object/from16 v19, v2

    move/from16 v20, v6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/CompoundCoords;->xImg1:I

    .line 48
    move-object/from16 v19, v2

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/CompoundCoords;->yImg0:I

    move-object/from16 v19, v2

    move/from16 v20, v8

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/CompoundCoords;->yImg1:I

    .line 49
    move-object/from16 v19, v2

    move/from16 v20, v6

    move/from16 v21, v5

    sub-int v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v21, v8

    move/from16 v22, v7

    sub-int v21, v21, v22

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    mul-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/prism/image/Coords;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/prism/image/CompoundCoords;->tileCoords:[Lcom/sun/prism/image/Coords;

    .line 51
    move/from16 v19, v6

    move/from16 v20, v5

    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 52
    .local v9, "xMedian":[F
    move/from16 v19, v8

    move/from16 v20, v7

    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 54
    .local v10, "yMedian":[F
    move/from16 v19, v5

    move/from16 v11, v19

    .local v11, "x":I
    :goto_1
    move/from16 v19, v11

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 55
    move-object/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v5

    sub-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move-object/from16 v22, v0

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sun/prism/image/Coords;->getX(F)F

    move-result v21

    aput v21, v19, v20

    .line 54
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 57
    :cond_2
    move/from16 v19, v7

    move/from16 v11, v19

    .local v11, "y":I
    :goto_2
    move/from16 v19, v11

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 58
    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v7

    sub-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move-object/from16 v22, v0

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sun/prism/image/Coords;->getY(F)F

    move-result v21

    aput v21, v19, v20

    .line 57
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 61
    :cond_3
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 62
    .local v11, "idx":I
    move/from16 v19, v7

    move/from16 v12, v19

    .local v12, "y":I
    :goto_3
    move/from16 v19, v12

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_d

    .line 63
    move/from16 v19, v12

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->v0:F

    move/from16 v19, v0

    :goto_4
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move-object/from16 v20, v0

    move/from16 v21, v12

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v13, v19

    .line 64
    .local v13, "v0":F
    move/from16 v19, v12

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->v1:F

    move/from16 v19, v0

    :goto_5
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->v0:[I

    move-object/from16 v20, v0

    move/from16 v21, v12

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v14, v19

    .line 65
    .local v14, "v1":F
    move/from16 v19, v12

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->y0:F

    move/from16 v19, v0

    :goto_6
    move/from16 v15, v19

    .line 66
    .local v15, "y0":F
    move/from16 v19, v12

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/image/Coords;->y1:F

    move/from16 v19, v0

    :goto_7
    move/from16 v16, v19

    .line 68
    .local v16, "y1":F
    move/from16 v19, v5

    move/from16 v17, v19

    .local v17, "x":I
    :goto_8
    move/from16 v19, v17

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_c

    .line 69
    new-instance v19, Lcom/sun/prism/image/Coords;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Lcom/sun/prism/image/Coords;-><init>()V

    move-object/from16 v18, v19

    .line 70
    .local v18, "segment":Lcom/sun/prism/image/Coords;
    move-object/from16 v19, v18

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->v0:F

    .line 71
    move-object/from16 v19, v18

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->v1:F

    .line 72
    move-object/from16 v19, v18

    move/from16 v20, v15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->y0:F

    .line 73
    move-object/from16 v19, v18

    move/from16 v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->y1:F

    .line 75
    move-object/from16 v19, v18

    move/from16 v20, v17

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/image/Coords;->u0:F

    move/from16 v20, v0

    :goto_9
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move-object/from16 v21, v0

    move/from16 v22, v17

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->u0:F

    .line 76
    move-object/from16 v19, v18

    move/from16 v20, v17

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/image/Coords;->u1:F

    move/from16 v20, v0

    :goto_a
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->u0:[I

    move-object/from16 v21, v0

    move/from16 v22, v17

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->u1:F

    .line 77
    move-object/from16 v19, v18

    move/from16 v20, v17

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/image/Coords;->x0:F

    move/from16 v20, v0

    :goto_b
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->x0:F

    .line 78
    move-object/from16 v19, v18

    move/from16 v20, v17

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/image/Coords;->x1:F

    move/from16 v20, v0

    :goto_c
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/prism/image/Coords;->x1:F

    .line 80
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/image/CompoundCoords;->tileCoords:[Lcom/sun/prism/image/Coords;

    move-object/from16 v19, v0

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v18

    aput-object v21, v19, v20

    .line 68
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 63
    .end local v13    # "v0":F
    .end local v14    # "v1":F
    .end local v15    # "y0":F
    .end local v16    # "y1":F
    .end local v17    # "x":I
    .end local v18    # "segment":Lcom/sun/prism/image/Coords;
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_4

    .line 64
    .restart local v13    # "v0":F
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->vSubdivision:[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_5

    .line 65
    .restart local v14    # "v1":F
    :cond_6
    move-object/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v7

    sub-int v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    aget v19, v19, v20

    goto/16 :goto_6

    .line 66
    .restart local v15    # "y0":F
    :cond_7
    move-object/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v7

    sub-int v20, v20, v21

    aget v19, v19, v20

    goto/16 :goto_7

    .line 75
    .restart local v16    # "y1":F
    .restart local v17    # "x":I
    .restart local v18    # "segment":Lcom/sun/prism/image/Coords;
    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move-object/from16 v20, v0

    move/from16 v21, v17

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_9

    .line 76
    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/image/CompoundImage;->uSubdivision:[I

    move-object/from16 v20, v0

    move/from16 v21, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_a

    .line 77
    :cond_a
    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v5

    sub-int v21, v21, v22

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    goto/16 :goto_b

    .line 78
    :cond_b
    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v5

    sub-int v21, v21, v22

    aget v20, v20, v21

    goto/16 :goto_c

    .line 62
    .end local v18    # "segment":Lcom/sun/prism/image/Coords;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 83
    .end local v13    # "v0":F
    .end local v14    # "v1":F
    .end local v15    # "y0":F
    .end local v16    # "y1":F
    .end local v17    # "x":I
    :cond_d
    goto/16 :goto_0
.end method

.method private static fastCeil(F)I
    .locals 4

    .prologue
    .line 132
    move v0, p0

    .local v0, "x":F
    move v2, v0

    float-to-int v2, v2

    move v1, v2

    .line 133
    .local v1, "ix":I
    move v2, v1

    int-to-float v2, v2

    move v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    :goto_0
    move v0, v2

    .end local v0    # "x":F
    return v0

    .restart local v0    # "x":F
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static fastFloor(F)I
    .locals 4

    .prologue
    .line 127
    move v0, p0

    .local v0, "x":F
    move v2, v0

    float-to-int v2, v2

    move v1, v2

    .line 128
    .local v1, "ix":I
    move v2, v1

    int-to-float v2, v2

    move v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    move v2, v1

    :goto_0
    move v0, v2

    .end local v0    # "x":F
    return v0

    .restart local v0    # "x":F
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private static find1(I[I)I
    .locals 7

    .prologue
    .line 105
    move v0, p0

    .local v0, "x":I
    move-object v1, p1

    .local v1, "array":[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 106
    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    move v4, v0

    if-gt v3, v4, :cond_0

    move v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 107
    move v3, v2

    move v0, v3

    .line 110
    .end local v0    # "x":I
    :goto_1
    return v0

    .line 105
    .restart local v0    # "x":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method private static find2(I[I)I
    .locals 7

    .prologue
    .line 118
    move v0, p0

    .local v0, "x":I
    move-object v1, p1

    .local v1, "array":[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 119
    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    move v4, v0

    if-ge v3, v4, :cond_0

    move v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_0

    .line 120
    move v3, v2

    move v0, v3

    .line 123
    .end local v0    # "x":I
    :goto_1
    return v0

    .line 118
    .restart local v0    # "x":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/sun/prism/Graphics;Lcom/sun/prism/image/CompoundImage;FF)V
    .locals 15

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundCoords;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v2, p2

    .local v2, "t":Lcom/sun/prism/image/CompoundImage;
    move/from16 v3, p3

    .local v3, "xS":F
    move/from16 v4, p4

    .local v4, "yS":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundCoords;->tileCoords:[Lcom/sun/prism/image/Coords;

    if-nez v10, :cond_0

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    move-object v5, v10

    .line 90
    .local v5, "factory":Lcom/sun/prism/ResourceFactory;
    const/4 v10, 0x0

    move v6, v10

    .line 91
    .local v6, "idx":I
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/image/CompoundCoords;->yImg0:I

    move v7, v10

    .local v7, "y":I
    :goto_1
    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/CompoundCoords;->yImg1:I

    if-gt v10, v11, :cond_2

    .line 92
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/image/CompoundCoords;->xImg0:I

    move v8, v10

    .local v8, "x":I
    :goto_2
    move v10, v8

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/image/CompoundCoords;->xImg1:I

    if-gt v10, v11, :cond_1

    .line 93
    move-object v10, v2

    move v11, v8

    move v12, v7

    move-object v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/prism/image/CompoundImage;->getTile(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Texture;

    move-result-object v10

    move-object v9, v10

    .line 94
    .local v9, "tex":Lcom/sun/prism/Texture;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/image/CompoundCoords;->tileCoords:[Lcom/sun/prism/image/Coords;

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v10, v10, v11

    move-object v11, v9

    move-object v12, v1

    move v13, v3

    move v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/prism/image/Coords;->draw(Lcom/sun/prism/Texture;Lcom/sun/prism/Graphics;FF)V

    .line 95
    move-object v10, v9

    invoke-interface {v10}, Lcom/sun/prism/Texture;->unlock()V

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 91
    .end local v9    # "tex":Lcom/sun/prism/Texture;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    .end local v8    # "x":I
    :cond_2
    goto :goto_0
.end method

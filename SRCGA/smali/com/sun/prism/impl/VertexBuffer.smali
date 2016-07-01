.class public Lcom/sun/prism/impl/VertexBuffer;
.super Ljava/lang/Object;
.source "VertexBuffer.java"


# static fields
.field protected static final BYTES_PER_VERT:I = 0x4

.field protected static final FLOATS_PER_TC:I = 0x2

.field protected static final FLOATS_PER_VC:I = 0x3

.field protected static final FLOATS_PER_VERT:I = 0x7

.field protected static final TC1OFF:I = 0x3

.field protected static final TC2OFF:I = 0x5

.field protected static final VCOFF:I = 0x0

.field protected static final VERTS_PER_QUAD:I = 0x4


# instance fields
.field protected a:B

.field protected b:B

.field protected capacity:I

.field protected colorArray:[B

.field protected coordArray:[F

.field protected g:B

.field protected index:I

.field protected r:B


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "maxQuads":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 57
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    .line 58
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    const/4 v4, 0x7

    mul-int/lit8 v3, v3, 0x7

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    .line 59
    return-void
.end method

.method private addVertNoCheck(FF)V
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    const/4 v4, 0x7

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v4, v5

    move v3, v4

    .line 171
    .local v3, "i":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move v6, v1

    aput v6, v4, v5

    .line 172
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    aput v6, v4, v5

    .line 173
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 174
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v4, v5}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 175
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 176
    return-void
.end method

.method private addVertNoCheck(FFFF)V
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "tx":F
    move v4, p4

    .local v4, "ty":F
    const/4 v6, 0x7

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v6, v7

    move v5, v6

    .line 181
    .local v5, "i":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 182
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 183
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 184
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move v8, v3

    aput v8, v6, v7

    .line 185
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    move v8, v4

    aput v8, v6, v7

    .line 186
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 187
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 188
    return-void
.end method

.method private addVertNoCheck(FFFFFF)V
    .locals 12

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "t0x":F
    move/from16 v4, p4

    .local v4, "t0y":F
    move/from16 v5, p5

    .local v5, "t1x":F
    move/from16 v6, p6

    .local v6, "t1y":F
    const/4 v8, 0x7

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v8, v9

    move v7, v8

    .line 193
    .local v7, "i":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move v10, v1

    aput v10, v8, v9

    .line 194
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    aput v10, v8, v9

    .line 195
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 196
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v10, v3

    aput v10, v8, v9

    .line 197
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    move v10, v4

    aput v10, v8, v9

    .line 198
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x5

    add-int/lit8 v9, v9, 0x5

    move v10, v5

    aput v10, v8, v9

    .line 199
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    move v10, v6

    aput v10, v8, v9

    .line 200
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v8, v9}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 201
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 202
    return-void
.end method

.method private ensureCapacityForQuad()V
    .locals 3

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v2, 0x4

    add-int/lit8 v1, v1, 0x4

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    if-le v1, v2, :cond_0

    .line 212
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 213
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 215
    :cond_0
    return-void
.end method

.method private grow()V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    .line 116
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    .line 117
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    const/4 v4, 0x7

    mul-int/lit8 v3, v3, 0x7

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, v1, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    .line 118
    return-void
.end method

.method private putColor(I)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "idx":I
    move v3, v1

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    move v2, v3

    .line 91
    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move v4, v2

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x0

    move-object v5, v0

    iget-byte v5, v5, Lcom/sun/prism/impl/VertexBuffer;->r:B

    aput-byte v5, v3, v4

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-byte v5, v5, Lcom/sun/prism/impl/VertexBuffer;->g:B

    aput-byte v5, v3, v4

    .line 93
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v0

    iget-byte v5, v5, Lcom/sun/prism/impl/VertexBuffer;->b:B

    aput-byte v5, v3, v4

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move v4, v2

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move-object v5, v0

    iget-byte v5, v5, Lcom/sun/prism/impl/VertexBuffer;->a:B

    aput-byte v5, v3, v4

    .line 95
    return-void
.end method


# virtual methods
.method public final addMappedPgram(FFFFFFFFFFFFFFFFFF)V
    .locals 35

    .prologue
    .line 449
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v3, p1

    .local v3, "dx11":F
    move/from16 v4, p2

    .local v4, "dy11":F
    move/from16 v5, p3

    .local v5, "dx21":F
    move/from16 v6, p4

    .local v6, "dy21":F
    move/from16 v7, p5

    .local v7, "dx12":F
    move/from16 v8, p6

    .local v8, "dy12":F
    move/from16 v9, p7

    .local v9, "dx22":F
    move/from16 v10, p8

    .local v10, "dy22":F
    move/from16 v11, p9

    .local v11, "ux11":F
    move/from16 v12, p10

    .local v12, "uy11":F
    move/from16 v13, p11

    .local v13, "ux21":F
    move/from16 v14, p12

    .local v14, "uy21":F
    move/from16 v15, p13

    .local v15, "ux12":F
    move/from16 v16, p14

    .local v16, "uy12":F
    move/from16 v17, p15

    .local v17, "ux22":F
    move/from16 v18, p16

    .local v18, "uy22":F
    move/from16 v19, p17

    .local v19, "vx":F
    move/from16 v20, p18

    .local v20, "vy":F
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v30, v0

    move/from16 v21, v30

    .line 450
    .local v21, "idx":I
    move/from16 v30, v21

    const/16 v31, 0x4

    add-int/lit8 v30, v30, 0x4

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 451
    move-object/from16 v30, v2

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 452
    move-object/from16 v30, v2

    const/16 v31, 0x0

    move-object/from16 v33, v30

    move/from16 v34, v31

    move/from16 v30, v34

    move-object/from16 v31, v33

    move/from16 v32, v34

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v21, v30

    .line 455
    :cond_0
    const/16 v30, 0x7

    move/from16 v31, v21

    mul-int v30, v30, v31

    move/from16 v22, v30

    .line 456
    .local v22, "i":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v30, v0

    move-object/from16 v23, v30

    .line 459
    .local v23, "farr":[F
    move-object/from16 v30, v23

    move/from16 v31, v22

    move/from16 v32, v3

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v4

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    const/16 v32, 0x0

    aput v32, v30, v31

    .line 460
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v11

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v12

    aput v32, v30, v31

    .line 461
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v19

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v20

    aput v32, v30, v31

    .line 464
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v7

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v8

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    const/16 v32, 0x0

    aput v32, v30, v31

    .line 465
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v15

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v16

    aput v32, v30, v31

    .line 466
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v19

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v20

    aput v32, v30, v31

    .line 469
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v5

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v6

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    const/16 v32, 0x0

    aput v32, v30, v31

    .line 470
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v13

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v14

    aput v32, v30, v31

    .line 471
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v19

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v20

    aput v32, v30, v31

    .line 474
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v9

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v10

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    const/16 v32, 0x0

    aput v32, v30, v31

    .line 475
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v17

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v18

    aput v32, v30, v31

    .line 476
    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v19

    aput v32, v30, v31

    move-object/from16 v30, v23

    add-int/lit8 v22, v22, 0x1

    move/from16 v31, v22

    move/from16 v32, v20

    aput v32, v30, v31

    .line 478
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object/from16 v30, v0

    move-object/from16 v24, v30

    .line 479
    .local v24, "barr":[B
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->r:B

    move/from16 v30, v0

    move/from16 v25, v30

    .local v25, "r":B
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->g:B

    move/from16 v30, v0

    move/from16 v26, v30

    .local v26, "g":B
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->b:B

    move/from16 v30, v0

    move/from16 v27, v30

    .local v27, "b":B
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->a:B

    move/from16 v30, v0

    move/from16 v28, v30

    .line 480
    .local v28, "a":B
    const/16 v30, 0x4

    move/from16 v31, v21

    mul-int v30, v30, v31

    move/from16 v29, v30

    .line 481
    .local v29, "j":I
    move-object/from16 v30, v24

    move/from16 v31, v29

    move/from16 v32, v25

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v26

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v27

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v28

    aput-byte v32, v30, v31

    .line 482
    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v25

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v26

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v27

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v28

    aput-byte v32, v30, v31

    .line 483
    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v25

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v26

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v27

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v28

    aput-byte v32, v30, v31

    .line 484
    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v25

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v26

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v27

    aput-byte v32, v30, v31

    move-object/from16 v30, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v31, v29

    move/from16 v32, v28

    aput-byte v32, v30, v31

    .line 486
    move-object/from16 v30, v2

    move/from16 v31, v21

    const/16 v32, 0x4

    add-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 487
    return-void
.end method

.method public final addMappedPgram(FFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 41

    .prologue
    .line 497
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v3, p1

    .local v3, "dx11":F
    move/from16 v4, p2

    .local v4, "dy11":F
    move/from16 v5, p3

    .local v5, "dx21":F
    move/from16 v6, p4

    .local v6, "dy21":F
    move/from16 v7, p5

    .local v7, "dx12":F
    move/from16 v8, p6

    .local v8, "dy12":F
    move/from16 v9, p7

    .local v9, "dx22":F
    move/from16 v10, p8

    .local v10, "dy22":F
    move/from16 v11, p9

    .local v11, "ux11":F
    move/from16 v12, p10

    .local v12, "uy11":F
    move/from16 v13, p11

    .local v13, "ux21":F
    move/from16 v14, p12

    .local v14, "uy21":F
    move/from16 v15, p13

    .local v15, "ux12":F
    move/from16 v16, p14

    .local v16, "uy12":F
    move/from16 v17, p15

    .local v17, "ux22":F
    move/from16 v18, p16

    .local v18, "uy22":F
    move/from16 v19, p17

    .local v19, "vx11":F
    move/from16 v20, p18

    .local v20, "vy11":F
    move/from16 v21, p19

    .local v21, "vx21":F
    move/from16 v22, p20

    .local v22, "vy21":F
    move/from16 v23, p21

    .local v23, "vx12":F
    move/from16 v24, p22

    .local v24, "vy12":F
    move/from16 v25, p23

    .local v25, "vx22":F
    move/from16 v26, p24

    .local v26, "vy22":F
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v36, v0

    move/from16 v27, v36

    .line 498
    .local v27, "idx":I
    move/from16 v36, v27

    const/16 v37, 0x4

    add-int/lit8 v36, v36, 0x4

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    .line 499
    move-object/from16 v36, v2

    move/from16 v37, v27

    invoke-virtual/range {v36 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 500
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move-object/from16 v39, v36

    move/from16 v40, v37

    move/from16 v36, v40

    move-object/from16 v37, v39

    move/from16 v38, v40

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v27, v36

    .line 503
    :cond_0
    const/16 v36, 0x7

    move/from16 v37, v27

    mul-int v36, v36, v37

    move/from16 v28, v36

    .line 504
    .local v28, "i":I
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 507
    .local v29, "farr":[F
    move-object/from16 v36, v29

    move/from16 v37, v28

    move/from16 v38, v3

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v4

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    const/16 v38, 0x0

    aput v38, v36, v37

    .line 508
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v11

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v12

    aput v38, v36, v37

    .line 509
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v19

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v20

    aput v38, v36, v37

    .line 512
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v7

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v8

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    const/16 v38, 0x0

    aput v38, v36, v37

    .line 513
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v15

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v16

    aput v38, v36, v37

    .line 514
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v23

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v24

    aput v38, v36, v37

    .line 517
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v5

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v6

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    const/16 v38, 0x0

    aput v38, v36, v37

    .line 518
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v13

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v14

    aput v38, v36, v37

    .line 519
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v21

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v22

    aput v38, v36, v37

    .line 522
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v9

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v10

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    const/16 v38, 0x0

    aput v38, v36, v37

    .line 523
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v17

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v18

    aput v38, v36, v37

    .line 524
    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v25

    aput v38, v36, v37

    move-object/from16 v36, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    move/from16 v38, v26

    aput v38, v36, v37

    .line 526
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    .line 527
    .local v30, "barr":[B
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->r:B

    move/from16 v36, v0

    move/from16 v31, v36

    .local v31, "r":B
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->g:B

    move/from16 v36, v0

    move/from16 v32, v36

    .local v32, "g":B
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->b:B

    move/from16 v36, v0

    move/from16 v33, v36

    .local v33, "b":B
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->a:B

    move/from16 v36, v0

    move/from16 v34, v36

    .line 528
    .local v34, "a":B
    const/16 v36, 0x4

    move/from16 v37, v27

    mul-int v36, v36, v37

    move/from16 v35, v36

    .line 529
    .local v35, "j":I
    move-object/from16 v36, v30

    move/from16 v37, v35

    move/from16 v38, v31

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v32

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v33

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v34

    aput-byte v38, v36, v37

    .line 530
    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v31

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v32

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v33

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v34

    aput-byte v38, v36, v37

    .line 531
    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v31

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v32

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v33

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v34

    aput-byte v38, v36, v37

    .line 532
    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v31

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v32

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v33

    aput-byte v38, v36, v37

    move-object/from16 v36, v30

    add-int/lit8 v35, v35, 0x1

    move/from16 v37, v35

    move/from16 v38, v34

    aput-byte v38, v36, v37

    .line 534
    move-object/from16 v36, v2

    move/from16 v37, v27

    const/16 v38, 0x4

    add-int/lit8 v37, v37, 0x4

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 535
    return-void
.end method

.method public final addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V
    .locals 49

    .prologue
    .line 428
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v2, p1

    .local v2, "dx11":F
    move/from16 v3, p2

    .local v3, "dy11":F
    move/from16 v4, p3

    .local v4, "dx21":F
    move/from16 v5, p4

    .local v5, "dy21":F
    move/from16 v6, p5

    .local v6, "dx12":F
    move/from16 v7, p6

    .local v7, "dy12":F
    move/from16 v8, p7

    .local v8, "dx22":F
    move/from16 v9, p8

    .local v9, "dy22":F
    move/from16 v10, p9

    .local v10, "ux11":F
    move/from16 v11, p10

    .local v11, "uy11":F
    move/from16 v12, p11

    .local v12, "ux21":F
    move/from16 v13, p12

    .local v13, "uy21":F
    move/from16 v14, p13

    .local v14, "ux12":F
    move/from16 v15, p14

    .local v15, "uy12":F
    move/from16 v16, p15

    .local v16, "ux22":F
    move/from16 v17, p16

    .local v17, "uy22":F
    move/from16 v18, p17

    .local v18, "vx11":F
    move/from16 v19, p18

    .local v19, "vy11":F
    move/from16 v20, p19

    .local v20, "vx22":F
    move/from16 v21, p20

    .local v21, "vy22":F
    move-object/from16 v22, p21

    .local v22, "tx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v19

    move/from16 v45, v18

    move/from16 v46, v21

    move/from16 v47, v20

    move/from16 v48, v21

    invoke-virtual/range {v24 .. v48}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFFFFF)V

    .line 432
    const/16 v24, 0x7

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    const/16 v25, 0x7

    add-int/lit8 v24, v24, -0x7

    move/from16 v23, v24

    .line 433
    .local v23, "i":I
    move-object/from16 v24, v22

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v25, v0

    move/from16 v26, v23

    const/16 v27, 0x5

    add-int/lit8 v26, v26, 0x5

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v27, v0

    move/from16 v28, v23

    const/16 v29, 0x5

    add-int/lit8 v28, v28, 0x5

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 434
    add-int/lit8 v23, v23, -0x7

    .line 435
    move-object/from16 v24, v22

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v25, v0

    move/from16 v26, v23

    const/16 v27, 0x5

    add-int/lit8 v26, v26, 0x5

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v27, v0

    move/from16 v28, v23

    const/16 v29, 0x5

    add-int/lit8 v28, v28, 0x5

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 436
    add-int/lit8 v23, v23, -0x7

    .line 437
    move-object/from16 v24, v22

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v25, v0

    move/from16 v26, v23

    const/16 v27, 0x5

    add-int/lit8 v26, v26, 0x5

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v27, v0

    move/from16 v28, v23

    const/16 v29, 0x5

    add-int/lit8 v28, v28, 0x5

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 438
    add-int/lit8 v23, v23, -0x7

    .line 439
    move-object/from16 v24, v22

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v25, v0

    move/from16 v26, v23

    const/16 v27, 0x5

    add-int/lit8 v26, v26, 0x5

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v27, v0

    move/from16 v28, v23

    const/16 v29, 0x5

    add-int/lit8 v28, v28, 0x5

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 440
    return-void
.end method

.method public final addMappedQuad(FFFFFFFFFFFF)V
    .locals 18

    .prologue
    .line 244
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v1, p1

    .local v1, "dx1":F
    move/from16 v2, p2

    .local v2, "dy1":F
    move/from16 v3, p3

    .local v3, "dx2":F
    move/from16 v4, p4

    .local v4, "dy2":F
    move/from16 v5, p5

    .local v5, "tx11":F
    move/from16 v6, p6

    .local v6, "ty11":F
    move/from16 v7, p7

    .local v7, "tx21":F
    move/from16 v8, p8

    .local v8, "ty21":F
    move/from16 v9, p9

    .local v9, "tx12":F
    move/from16 v10, p10

    .local v10, "ty12":F
    move/from16 v11, p11

    .local v11, "tx22":F
    move/from16 v12, p12

    .local v12, "ty22":F
    move-object v13, v0

    invoke-direct {v13}, Lcom/sun/prism/impl/VertexBuffer;->ensureCapacityForQuad()V

    .line 246
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v13 .. v17}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFF)V

    .line 247
    move-object v13, v0

    move v14, v1

    move v15, v4

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v13 .. v17}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFF)V

    .line 248
    move-object v13, v0

    move v14, v3

    move v15, v2

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFF)V

    .line 249
    move-object v13, v0

    move v14, v3

    move v15, v4

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-direct/range {v13 .. v17}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFF)V

    .line 250
    return-void
.end method

.method public final addMappedQuad(FFFFFFFFFFFFFFFFFFFF)V
    .locals 28

    .prologue
    .line 259
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v1, p1

    .local v1, "dx1":F
    move/from16 v2, p2

    .local v2, "dy1":F
    move/from16 v3, p3

    .local v3, "dx2":F
    move/from16 v4, p4

    .local v4, "dy2":F
    move/from16 v5, p5

    .local v5, "ux11":F
    move/from16 v6, p6

    .local v6, "uy11":F
    move/from16 v7, p7

    .local v7, "ux21":F
    move/from16 v8, p8

    .local v8, "uy21":F
    move/from16 v9, p9

    .local v9, "ux12":F
    move/from16 v10, p10

    .local v10, "uy12":F
    move/from16 v11, p11

    .local v11, "ux22":F
    move/from16 v12, p12

    .local v12, "uy22":F
    move/from16 v13, p13

    .local v13, "vx11":F
    move/from16 v14, p14

    .local v14, "vy11":F
    move/from16 v15, p15

    .local v15, "vx21":F
    move/from16 v16, p16

    .local v16, "vy21":F
    move/from16 v17, p17

    .local v17, "vx12":F
    move/from16 v18, p18

    .local v18, "vy12":F
    move/from16 v19, p19

    .local v19, "vx22":F
    move/from16 v20, p20

    .local v20, "vy22":F
    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v21}, Lcom/sun/prism/impl/VertexBuffer;->ensureCapacityForQuad()V

    .line 261
    move-object/from16 v21, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v13

    move/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 262
    move-object/from16 v21, v0

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v17

    move/from16 v27, v18

    invoke-direct/range {v21 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 263
    move-object/from16 v21, v0

    move/from16 v22, v3

    move/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v15

    move/from16 v27, v16

    invoke-direct/range {v21 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 264
    move-object/from16 v21, v0

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v19

    move/from16 v27, v20

    invoke-direct/range {v21 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 265
    return-void
.end method

.method public final addQuad(FFFF)V
    .locals 8

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "dx1":F
    move v2, p2

    .local v2, "dy1":F
    move v3, p3

    .local v3, "dx2":F
    move v4, p4

    .local v4, "dy2":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/prism/impl/VertexBuffer;->ensureCapacityForQuad()V

    .line 220
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FF)V

    .line 221
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FF)V

    .line 222
    move-object v5, v0

    move v6, v3

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FF)V

    .line 223
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FF)V

    .line 224
    return-void
.end method

.method public final addQuad(FFFFFFFF)V
    .locals 25

    .prologue
    .line 338
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v3, p1

    .local v3, "dx1":F
    move/from16 v4, p2

    .local v4, "dy1":F
    move/from16 v5, p3

    .local v5, "dx2":F
    move/from16 v6, p4

    .local v6, "dy2":F
    move/from16 v7, p5

    .local v7, "tx1":F
    move/from16 v8, p6

    .local v8, "ty1":F
    move/from16 v9, p7

    .local v9, "tx2":F
    move/from16 v10, p8

    .local v10, "ty2":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v20, v0

    move/from16 v11, v20

    .line 339
    .local v11, "idx":I
    move/from16 v20, v11

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 340
    move-object/from16 v20, v2

    move/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 341
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v24

    move-object/from16 v21, v23

    move/from16 v22, v24

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v11, v20

    .line 344
    :cond_0
    const/16 v20, 0x7

    move/from16 v21, v11

    mul-int v20, v20, v21

    move/from16 v12, v20

    .line 345
    .local v12, "i":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 348
    .local v13, "farr":[F
    move-object/from16 v20, v13

    move/from16 v21, v12

    move/from16 v22, v3

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v4

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 349
    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v7

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v8

    aput v22, v20, v21

    .line 350
    add-int/lit8 v12, v12, 0x3

    .line 352
    move-object/from16 v20, v13

    move/from16 v21, v12

    move/from16 v22, v3

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v6

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 353
    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v7

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v10

    aput v22, v20, v21

    .line 354
    add-int/lit8 v12, v12, 0x3

    .line 356
    move-object/from16 v20, v13

    move/from16 v21, v12

    move/from16 v22, v5

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v4

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 357
    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v9

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v8

    aput v22, v20, v21

    .line 358
    add-int/lit8 v12, v12, 0x3

    .line 360
    move-object/from16 v20, v13

    move/from16 v21, v12

    move/from16 v22, v5

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v6

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 361
    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v9

    aput v22, v20, v21

    move-object/from16 v20, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v12

    move/from16 v22, v10

    aput v22, v20, v21

    .line 363
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 364
    .local v14, "barr":[B
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->r:B

    move/from16 v20, v0

    move/from16 v15, v20

    .local v15, "r":B
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->g:B

    move/from16 v20, v0

    move/from16 v16, v20

    .local v16, "g":B
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->b:B

    move/from16 v20, v0

    move/from16 v17, v20

    .local v17, "b":B
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->a:B

    move/from16 v20, v0

    move/from16 v18, v20

    .line 365
    .local v18, "a":B
    const/16 v20, 0x4

    move/from16 v21, v11

    mul-int v20, v20, v21

    move/from16 v19, v20

    .line 366
    .local v19, "j":I
    move-object/from16 v20, v14

    move/from16 v21, v19

    move/from16 v22, v15

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v16

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v17

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 367
    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v15

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v16

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v17

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 368
    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v15

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v16

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v17

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 369
    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v15

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v16

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v17

    aput-byte v22, v20, v21

    move-object/from16 v20, v14

    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v19

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 371
    move-object/from16 v20, v2

    move/from16 v21, v11

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 372
    return-void
.end method

.method public final addQuad(FFFFFFFFFFFF)V
    .locals 20

    .prologue
    .line 231
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v1, p1

    .local v1, "dx1":F
    move/from16 v2, p2

    .local v2, "dy1":F
    move/from16 v3, p3

    .local v3, "dx2":F
    move/from16 v4, p4

    .local v4, "dy2":F
    move/from16 v5, p5

    .local v5, "t1x1":F
    move/from16 v6, p6

    .local v6, "t1y1":F
    move/from16 v7, p7

    .local v7, "t1x2":F
    move/from16 v8, p8

    .local v8, "t1y2":F
    move/from16 v9, p9

    .local v9, "t2x1":F
    move/from16 v10, p10

    .local v10, "t2y1":F
    move/from16 v11, p11

    .local v11, "t2x2":F
    move/from16 v12, p12

    .local v12, "t2y2":F
    move-object v13, v0

    invoke-direct {v13}, Lcom/sun/prism/impl/VertexBuffer;->ensureCapacityForQuad()V

    .line 233
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 234
    move-object v13, v0

    move v14, v1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 235
    move-object v13, v0

    move v14, v3

    move v15, v2

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 236
    move-object v13, v0

    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/sun/prism/impl/VertexBuffer;->addVertNoCheck(FFFFFF)V

    .line 237
    return-void
.end method

.method public final addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V
    .locals 20

    .prologue
    .line 272
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v1, p1

    .local v1, "dx1":F
    move/from16 v2, p2

    .local v2, "dy1":F
    move/from16 v3, p3

    .local v3, "dx2":F
    move/from16 v4, p4

    .local v4, "dy2":F
    move/from16 v5, p5

    .local v5, "tx1":F
    move/from16 v6, p6

    .local v6, "ty1":F
    move/from16 v7, p7

    .local v7, "tx2":F
    move/from16 v8, p8

    .local v8, "ty2":F
    move-object/from16 v9, p9

    .local v9, "tx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v11 .. v19}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 274
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 275
    const/4 v11, 0x7

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v11, v12

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    move v10, v11

    .line 276
    .local v10, "i":I
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v13, v10

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v15, v10

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x5

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 277
    add-int/lit8 v10, v10, -0x7

    .line 278
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v13, v10

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v15, v10

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x5

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 279
    add-int/lit8 v10, v10, -0x7

    .line 280
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v13, v10

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v15, v10

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x5

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 281
    add-int/lit8 v10, v10, -0x7

    .line 282
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v13, v10

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v15, v10

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x5

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sun/javafx/geom/transform/AffineBase;->transform([FI[FII)V

    .line 284
    .end local v10    # "i":I
    :cond_0
    return-void
.end method

.method public final addQuadVO(FFFFFFFFFF)V
    .locals 25

    .prologue
    .line 378
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v3, p1

    .local v3, "topopacity":F
    move/from16 v4, p2

    .local v4, "botopacity":F
    move/from16 v5, p3

    .local v5, "dx1":F
    move/from16 v6, p4

    .local v6, "dy1":F
    move/from16 v7, p5

    .local v7, "dx2":F
    move/from16 v8, p6

    .local v8, "dy2":F
    move/from16 v9, p7

    .local v9, "tx1":F
    move/from16 v10, p8

    .local v10, "ty1":F
    move/from16 v11, p9

    .local v11, "tx2":F
    move/from16 v12, p10

    .local v12, "ty2":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v20, v0

    move/from16 v13, v20

    .line 379
    .local v13, "idx":I
    move/from16 v20, v13

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 380
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 381
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v24

    move-object/from16 v21, v23

    move/from16 v22, v24

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v13, v20

    .line 384
    :cond_0
    const/16 v20, 0x7

    move/from16 v21, v13

    mul-int v20, v20, v21

    move/from16 v14, v20

    .line 385
    .local v14, "i":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v20, v0

    move-object/from16 v15, v20

    .line 388
    .local v15, "farr":[F
    move-object/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v5

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v6

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 389
    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v9

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v10

    aput v22, v20, v21

    .line 390
    add-int/lit8 v14, v14, 0x3

    .line 393
    move-object/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v5

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v8

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 394
    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v9

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v12

    aput v22, v20, v21

    .line 395
    add-int/lit8 v14, v14, 0x3

    .line 398
    move-object/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v7

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v6

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 399
    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v11

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v10

    aput v22, v20, v21

    .line 400
    add-int/lit8 v14, v14, 0x3

    .line 403
    move-object/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v7

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v8

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 404
    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v11

    aput v22, v20, v21

    move-object/from16 v20, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v14

    move/from16 v22, v12

    aput v22, v20, v21

    .line 406
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object/from16 v20, v0

    move-object/from16 v16, v20

    .line 407
    .local v16, "barr":[B
    const/16 v20, 0x4

    move/from16 v21, v13

    mul-int v20, v20, v21

    move/from16 v17, v20

    .line 409
    .local v17, "j":I
    move/from16 v20, v3

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v18, v20

    .line 410
    .local v18, "to":B
    move/from16 v20, v4

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v19, v20

    .line 412
    .local v19, "bo":B
    move-object/from16 v20, v16

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 413
    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    .line 414
    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    aput-byte v22, v20, v21

    .line 415
    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    move-object/from16 v20, v16

    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v17

    move/from16 v22, v19

    aput-byte v22, v20, v21

    .line 417
    move-object/from16 v20, v2

    move/from16 v21, v13

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 418
    return-void
.end method

.method public final addSuperQuad(FFFFFFFFZ)V
    .locals 28

    .prologue
    .line 292
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v3, p1

    .local v3, "dx1":F
    move/from16 v4, p2

    .local v4, "dy1":F
    move/from16 v5, p3

    .local v5, "dx2":F
    move/from16 v6, p4

    .local v6, "dy2":F
    move/from16 v7, p5

    .local v7, "tx1":F
    move/from16 v8, p6

    .local v8, "ty1":F
    move/from16 v9, p7

    .local v9, "tx2":F
    move/from16 v10, p8

    .local v10, "ty2":F
    move/from16 v11, p9

    .local v11, "isText":Z
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v23, v0

    move/from16 v12, v23

    .line 293
    .local v12, "idx":I
    move/from16 v23, v12

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 295
    move-object/from16 v23, v2

    move/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 296
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move-object/from16 v26, v23

    move/from16 v27, v24

    move/from16 v23, v27

    move-object/from16 v24, v26

    move/from16 v25, v27

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move/from16 v12, v23

    .line 299
    :cond_0
    const/16 v23, 0x7

    move/from16 v24, v12

    mul-int v23, v23, v24

    move/from16 v13, v23

    .line 300
    .local v13, "i":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object/from16 v23, v0

    move-object/from16 v14, v23

    .line 302
    .local v14, "farr":[F
    move/from16 v23, v11

    if-eqz v23, :cond_1

    const/high16 v23, 0x3f800000    # 1.0f

    :goto_0
    move/from16 v15, v23

    .line 303
    .local v15, "text":F
    move/from16 v23, v11

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    :goto_1
    move/from16 v16, v23

    .line 306
    .local v16, "image":F
    move-object/from16 v23, v14

    move/from16 v24, v13

    move/from16 v25, v3

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v4

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 307
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v7

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v8

    aput v25, v23, v24

    .line 308
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v16

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v15

    aput v25, v23, v24

    add-int/lit8 v13, v13, 0x1

    .line 310
    move-object/from16 v23, v14

    move/from16 v24, v13

    move/from16 v25, v3

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v6

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 311
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v7

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v10

    aput v25, v23, v24

    .line 312
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v16

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v15

    aput v25, v23, v24

    add-int/lit8 v13, v13, 0x1

    .line 314
    move-object/from16 v23, v14

    move/from16 v24, v13

    move/from16 v25, v5

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v4

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 315
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v9

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v8

    aput v25, v23, v24

    .line 316
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v16

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v15

    aput v25, v23, v24

    add-int/lit8 v13, v13, 0x1

    .line 318
    move-object/from16 v23, v14

    move/from16 v24, v13

    move/from16 v25, v5

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v6

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 319
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v9

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v10

    aput v25, v23, v24

    .line 320
    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v16

    aput v25, v23, v24

    move-object/from16 v23, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v24, v13

    move/from16 v25, v15

    aput v25, v23, v24

    add-int/lit8 v13, v13, 0x1

    .line 322
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    move-object/from16 v23, v0

    move-object/from16 v17, v23

    .line 323
    .local v17, "barr":[B
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->r:B

    move/from16 v23, v0

    move/from16 v18, v23

    .local v18, "r":B
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->g:B

    move/from16 v23, v0

    move/from16 v19, v23

    .local v19, "g":B
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->b:B

    move/from16 v23, v0

    move/from16 v20, v23

    .local v20, "b":B
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/sun/prism/impl/VertexBuffer;->a:B

    move/from16 v23, v0

    move/from16 v21, v23

    .line 324
    .local v21, "a":B
    const/16 v23, 0x4

    move/from16 v24, v12

    mul-int v23, v23, v24

    move/from16 v22, v23

    .line 325
    .local v22, "j":I
    move-object/from16 v23, v17

    move/from16 v24, v22

    move/from16 v25, v18

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v19

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v20

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v21

    aput-byte v25, v23, v24

    .line 326
    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v18

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v19

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v20

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v21

    aput-byte v25, v23, v24

    .line 327
    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v18

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v19

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v20

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v21

    aput-byte v25, v23, v24

    .line 328
    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v18

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v19

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v20

    aput-byte v25, v23, v24

    move-object/from16 v23, v17

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v22

    move/from16 v25, v21

    aput-byte v25, v23, v24

    .line 330
    move-object/from16 v23, v2

    move/from16 v24, v12

    const/16 v25, 0x4

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 331
    return-void

    .line 302
    .end local v15    # "text":F
    .end local v16    # "image":F
    .end local v17    # "barr":[B
    .end local v18    # "r":B
    .end local v19    # "g":B
    .end local v20    # "b":B
    .end local v21    # "a":B
    .end local v22    # "j":I
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 303
    .restart local v15    # "text":F
    :cond_2
    const/high16 v23, 0x3f800000    # 1.0f

    goto/16 :goto_1
.end method

.method public final addVert(FF)V
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    if-ne v4, v5, :cond_0

    .line 123
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/prism/impl/VertexBuffer;->grow()V

    .line 126
    :cond_0
    const/4 v4, 0x7

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v4, v5

    move v3, v4

    .line 127
    .local v3, "i":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move v6, v1

    aput v6, v4, v5

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    aput v6, v4, v5

    .line 129
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 130
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v4, v5}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 131
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 132
    return-void
.end method

.method public final addVert(FFFF)V
    .locals 10

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "tx":F
    move v4, p4

    .local v4, "ty":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    if-ne v6, v7, :cond_0

    .line 137
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/prism/impl/VertexBuffer;->grow()V

    .line 140
    :cond_0
    const/4 v6, 0x7

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v6, v7

    move v5, v6

    .line 141
    .local v5, "i":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 142
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 143
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 144
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move v8, v3

    aput v8, v6, v7

    .line 145
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v7, v5

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    move v8, v4

    aput v8, v6, v7

    .line 146
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v6, v7}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 147
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 148
    return-void
.end method

.method public final addVert(FFFFFF)V
    .locals 12

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "t0x":F
    move/from16 v4, p4

    .local v4, "t0y":F
    move/from16 v5, p5

    .local v5, "t1x":F
    move/from16 v6, p6

    .local v6, "t1y":F
    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/VertexBuffer;->index:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->capacity:I

    if-ne v8, v9, :cond_0

    .line 153
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/prism/impl/VertexBuffer;->grow()V

    .line 156
    :cond_0
    const/4 v8, 0x7

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    mul-int/2addr v8, v9

    move v7, v8

    .line 157
    .local v7, "i":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move v10, v1

    aput v10, v8, v9

    .line 158
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    aput v10, v8, v9

    .line 159
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 160
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v10, v3

    aput v10, v8, v9

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    move v10, v4

    aput v10, v8, v9

    .line 162
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x5

    add-int/lit8 v9, v9, 0x5

    move v10, v5

    aput v10, v8, v9

    .line 163
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move v9, v7

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    move v10, v6

    aput v10, v8, v9

    .line 164
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-direct {v8, v9}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 165
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Lcom/sun/prism/impl/VertexBuffer;->index:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 166
    return-void
.end method

.method public final addVerts(Lcom/sun/prism/impl/VertexBuffer;I)V
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, p1

    .local v1, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move v2, p2

    .local v2, "numVerts":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/VertexBuffer;->flush()V

    .line 207
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x3

    div-int/lit8 v4, v4, 0x3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/VertexBuffer;->coordArray:[F

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/prism/impl/VertexBuffer;->colorArray:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/impl/VertexBuffer;->drawTriangles(I[F[B)V

    .line 208
    return-void
.end method

.method protected drawQuads(I)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "numVertices":I
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "flush not implemented for lightweight"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected drawTriangles(I[F[B)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "numTriangles":I
    move-object v2, p2

    .local v2, "fData":[F
    move-object v3, p3

    .local v3, "cData":[B
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "flush not implemented for lightweight"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final flush()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    if-lez v1, :cond_0

    .line 105
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/VertexBuffer;->index:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/VertexBuffer;->drawQuads(I)V

    .line 106
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 108
    :cond_0
    return-void
.end method

.method public final rewind()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/VertexBuffer;->index:I

    .line 112
    return-void
.end method

.method public final setPerVertexColor(F)V
    .locals 10

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "extraAlpha":F
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move v6, v1

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-byte v7, v6, Lcom/sun/prism/impl/VertexBuffer;->a:B

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput-byte v6, v5, Lcom/sun/prism/impl/VertexBuffer;->b:B

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-byte v5, v4, Lcom/sun/prism/impl/VertexBuffer;->g:B

    iput-byte v3, v2, Lcom/sun/prism/impl/VertexBuffer;->r:B

    .line 81
    return-void
.end method

.method public final setPerVertexColor(Lcom/sun/prism/paint/Color;F)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move-object v1, p1

    .local v1, "c":Lcom/sun/prism/paint/Color;
    move v2, p2

    .local v2, "extraAlpha":F
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v4

    move v5, v2

    mul-float/2addr v4, v5

    move v3, v4

    .line 73
    .local v3, "ca":F
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v5

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/sun/prism/impl/VertexBuffer;->r:B

    .line 74
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v5

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/sun/prism/impl/VertexBuffer;->g:B

    .line 75
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v5

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/sun/prism/impl/VertexBuffer;->b:B

    .line 76
    move-object v4, v0

    move v5, v3

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/sun/prism/impl/VertexBuffer;->a:B

    .line 77
    return-void
.end method

.method public final updateVertexColors(I)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/VertexBuffer;
    move v1, p1

    .local v1, "numVerts":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 85
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/VertexBuffer;->putColor(I)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

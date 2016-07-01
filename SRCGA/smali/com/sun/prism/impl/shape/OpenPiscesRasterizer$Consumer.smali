.class Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
.super Ljava/lang/Object;
.source "OpenPiscesRasterizer.java"

# interfaces
.implements Lcom/sun/openpisces/AlphaConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Consumer"
.end annotation


# static fields
.field static savedAlphaMap:[B


# instance fields
.field alphaMap:[B

.field alphabuffer:Ljava/nio/ByteBuffer;

.field alphas:[B

.field height:I

.field maskdata:Lcom/sun/prism/impl/shape/MaskData;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move v1, p1

    .local v1, "alphalen":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 116
    move-object v2, v0

    new-instance v3, Lcom/sun/prism/impl/shape/MaskData;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/prism/impl/shape/MaskData;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->maskdata:Lcom/sun/prism/impl/shape/MaskData;

    .line 119
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    .line 120
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphabuffer:Ljava/nio/ByteBuffer;

    .line 121
    return-void
.end method


# virtual methods
.method public getAlphaLength()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return v0
.end method

.method public getAlphasNoClone()[B
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return v0
.end method

.method public getMaskData()Lcom/sun/prism/impl/shape/MaskData;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->maskdata:Lcom/sun/prism/impl/shape/MaskData;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return-object v0
.end method

.method public getOriginX()I
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->x:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return v0
.end method

.method public getOriginY()I
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->y:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    return v0
.end method

.method public setAndClearRelativeAlphas([IIII)V
    .locals 15

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object/from16 v1, p1

    .local v1, "alphaRow":[I
    move/from16 v2, p2

    .local v2, "pix_y":I
    move/from16 v3, p3

    .local v3, "pix_from":I
    move/from16 v4, p4

    .local v4, "pix_to":I
    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->width:I

    move v5, v11

    .line 183
    .local v5, "w":I
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->y:I

    sub-int/2addr v11, v12

    move v12, v5

    mul-int/2addr v11, v12

    move v6, v11

    .line 184
    .local v6, "off":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    move-object v7, v11

    .line 185
    .local v7, "out":[B
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphaMap:[B

    move-object v8, v11

    .line 186
    .local v8, "map":[B
    const/4 v11, 0x0

    move v9, v11

    .line 187
    .local v9, "a":I
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move v12, v5

    if-ge v11, v12, :cond_0

    .line 188
    move v11, v9

    move-object v12, v1

    move v13, v10

    aget v12, v12, v13

    add-int/2addr v11, v12

    move v9, v11

    .line 189
    move-object v11, v1

    move v12, v10

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 190
    move-object v11, v7

    move v12, v6

    move v13, v10

    add-int/2addr v12, v13

    move-object v13, v8

    move v14, v9

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 187
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public setAndClearRelativeAlphas2([IIII)V
    .locals 17

    .prologue
    .line 197
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object/from16 v1, p1

    .local v1, "alphaDeltas":[I
    move/from16 v2, p2

    .local v2, "pix_y":I
    move/from16 v3, p3

    .local v3, "pix_from":I
    move/from16 v4, p4

    .local v4, "pix_to":I
    move v14, v4

    move v15, v3

    if-lt v14, v15, :cond_3

    .line 198
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphas:[B

    move-object v5, v14

    .line 199
    .local v5, "out":[B
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphaMap:[B

    move-object v6, v14

    .line 200
    .local v6, "map":[B
    move v14, v3

    move-object v15, v0

    iget v15, v15, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->x:I

    sub-int/2addr v14, v15

    move v7, v14

    .line 201
    .local v7, "from":I
    move v14, v4

    move-object v15, v0

    iget v15, v15, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->x:I

    sub-int/2addr v14, v15

    move v8, v14

    .line 202
    .local v8, "to":I
    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->width:I

    move v9, v14

    .line 203
    .local v9, "w":I
    move v14, v2

    move-object v15, v0

    iget v15, v15, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->y:I

    sub-int/2addr v14, v15

    move v15, v9

    mul-int/2addr v14, v15

    move v10, v14

    .line 205
    .local v10, "off":I
    const/4 v14, 0x0

    move v11, v14

    .line 206
    .local v11, "i":I
    :goto_0
    move v14, v11

    move v15, v7

    if-ge v14, v15, :cond_0

    .line 207
    move-object v14, v5

    move v15, v10

    move/from16 v16, v11

    add-int v15, v15, v16

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const/4 v14, 0x0

    move v12, v14

    .line 211
    .local v12, "curAlpha":I
    :goto_1
    move v14, v11

    move v15, v8

    if-gt v14, v15, :cond_1

    .line 212
    move v14, v12

    move-object v15, v1

    move/from16 v16, v11

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v12, v14

    .line 213
    move-object v14, v1

    move v15, v11

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 214
    move-object v14, v6

    move v15, v12

    aget-byte v14, v14, v15

    move v13, v14

    .line 215
    .local v13, "a":B
    move-object v14, v5

    move v15, v10

    move/from16 v16, v11

    add-int v15, v15, v16

    move/from16 v16, v13

    aput-byte v16, v14, v15

    .line 216
    add-int/lit8 v11, v11, 0x1

    .line 217
    goto :goto_1

    .line 218
    .end local v13    # "a":B
    :cond_1
    move-object v14, v1

    move v15, v11

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 219
    :goto_2
    move v14, v11

    move v15, v9

    if-ge v14, v15, :cond_2

    .line 220
    move-object v14, v5

    move v15, v10

    move/from16 v16, v11

    add-int v15, v15, v16

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    .line 221
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 223
    .line 226
    .end local v5    # "out":[B
    .end local v6    # "map":[B
    .end local v7    # "from":I
    .end local v8    # "to":I
    .end local v9    # "w":I
    .end local v10    # "off":I
    .end local v11    # "i":I
    .end local v12    # "curAlpha":I
    :cond_2
    :goto_3
    return-void

    .line 224
    :cond_3
    move-object v14, v1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    goto :goto_3
.end method

.method public setBoundsNoClone(IIII)V
    .locals 11

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move v4, p4

    .local v4, "h":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->x:I

    .line 125
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->y:I

    .line 126
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->width:I

    .line 127
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->height:I

    .line 128
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->maskdata:Lcom/sun/prism/impl/shape/MaskData;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphabuffer:Ljava/nio/ByteBuffer;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/prism/impl/shape/MaskData;->update(Ljava/nio/ByteBuffer;IIII)V

    .line 129
    return-void
.end method

.method public setMaxAlpha(I)V
    .locals 9

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move v1, p1

    .local v1, "maxalpha":I
    sget-object v4, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->savedAlphaMap:[B

    move-object v2, v4

    .line 166
    .local v2, "map":[B
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2

    .line 167
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    move-object v2, v4

    .line 168
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-gt v4, v5, :cond_1

    .line 169
    move-object v4, v2

    move v5, v3

    move v6, v3

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v1

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    move-object v4, v2

    sput-object v4, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->savedAlphaMap:[B

    .line 173
    .end local v3    # "i":I
    :cond_2
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->alphaMap:[B

    .line 174
    return-void
.end method

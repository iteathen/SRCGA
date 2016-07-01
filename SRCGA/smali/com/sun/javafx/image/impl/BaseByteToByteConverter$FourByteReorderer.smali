.class Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "BaseByteToByteConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FourByteReorderer"
.end annotation


# instance fields
.field private final c0:I

.field private final c1:I

.field private final c2:I

.field private final c3:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;IIII)V
    .locals 10

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move v3, p3

    .local v3, "c0":I
    move v4, p4

    .local v4, "c1":I
    move v5, p5

    .local v5, "c2":I
    move/from16 v6, p6

    .local v6, "c3":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 225
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c0:I

    .line 226
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c1:I

    .line 227
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c2:I

    .line 228
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c3:I

    .line 229
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    move v11, v2

    move v12, v3

    move-object v13, v4

    check-cast v13, Ljava/nio/ByteBuffer;

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->convert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 18

    .prologue
    .line 262
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object/from16 v2, p1

    .local v2, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v3, p2

    .local v3, "srcoff":I
    move/from16 v4, p3

    .local v4, "srcscanbytes":I
    move-object/from16 v5, p4

    .local v5, "dstbuf":Ljava/nio/ByteBuffer;
    move/from16 v6, p5

    .local v6, "dstoff":I
    move/from16 v7, p6

    .local v7, "dstscanbytes":I
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move v15, v4

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v4, v15

    .line 263
    move v15, v7

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v7, v15

    .line 264
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v15, v9

    if-ltz v15, :cond_1

    .line 265
    const/4 v15, 0x0

    move v10, v15

    .local v10, "x":I
    :goto_1
    move v15, v10

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 268
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c0:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v11, v15

    .line 269
    .local v11, "b0":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c1:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v12, v15

    .line 270
    .local v12, "b1":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c2:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v13, v15

    .line 271
    .local v13, "b2":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c3:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v14, v15

    .line 272
    .local v14, "b3":B
    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 273
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 274
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    move/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 275
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    move/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 276
    add-int/lit8 v3, v3, 0x4

    .line 277
    add-int/lit8 v6, v6, 0x4

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 279
    .end local v11    # "b0":B
    .end local v12    # "b1":B
    .end local v13    # "b2":B
    .end local v14    # "b3":B
    :cond_0
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move v3, v15

    .line 280
    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move v6, v15

    goto/16 :goto_0

    .line 282
    .end local v10    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 18

    .prologue
    .line 236
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object/from16 v2, p1

    .local v2, "srcarr":[B
    move/from16 v3, p2

    .local v3, "srcoff":I
    move/from16 v4, p3

    .local v4, "srcscanbytes":I
    move-object/from16 v5, p4

    .local v5, "dstarr":[B
    move/from16 v6, p5

    .local v6, "dstoff":I
    move/from16 v7, p6

    .local v7, "dstscanbytes":I
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move v15, v4

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v4, v15

    .line 237
    move v15, v7

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v7, v15

    .line 238
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v15, v9

    if-ltz v15, :cond_1

    .line 239
    const/4 v15, 0x0

    move v10, v15

    .local v10, "x":I
    :goto_1
    move v15, v10

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 242
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c0:I

    move/from16 v17, v0

    add-int v16, v16, v17

    aget-byte v15, v15, v16

    move v11, v15

    .line 243
    .local v11, "b0":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c1:I

    move/from16 v17, v0

    add-int v16, v16, v17

    aget-byte v15, v15, v16

    move v12, v15

    .line 244
    .local v12, "b1":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c2:I

    move/from16 v17, v0

    add-int v16, v16, v17

    aget-byte v15, v15, v16

    move v13, v15

    .line 245
    .local v13, "b2":B
    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;->c3:I

    move/from16 v17, v0

    add-int v16, v16, v17

    aget-byte v15, v15, v16

    move v14, v15

    .line 246
    .local v14, "b3":B
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v11

    aput-byte v17, v15, v16

    .line 247
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v12

    aput-byte v17, v15, v16

    .line 248
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v13

    aput-byte v17, v15, v16

    .line 249
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v14

    aput-byte v17, v15, v16

    .line 250
    add-int/lit8 v3, v3, 0x4

    .line 239
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 252
    .end local v11    # "b0":B
    .end local v12    # "b1":B
    .end local v13    # "b2":B
    .end local v14    # "b3":B
    :cond_0
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move v3, v15

    .line 253
    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move v6, v15

    goto/16 :goto_0

    .line 255
    .end local v10    # "x":I
    :cond_1
    return-void
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;
    return-object v0
.end method

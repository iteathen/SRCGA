.class public Lcom/sun/javafx/iio/gif/GIFImageLoader2;
.super Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.source "GIFImageLoader2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    }
.end annotation


# static fields
.field static final DEFAULT_FPS:I = 0x19

.field static final FILE_SIG87:[B

.field static final FILE_SIG89:[B

.field static final NETSCAPE_SIG:[B


# instance fields
.field bgColor:I

.field globalPalette:[[B

.field image:[B

.field loopCount:I

.field screenH:I

.field screenW:I

.field stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->FILE_SIG87:[B

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->FILE_SIG89:[B

    .line 47
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->NETSCAPE_SIG:[B

    return-void

    .line 45
    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    .line 46
    nop

    :array_1
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    .line 47
    nop

    :array_2
    .array-data 1
        0x4et
        0x45t
        0x54t
        0x53t
        0x43t
        0x41t
        0x50t
        0x45t
        0x32t
        0x2et
        0x30t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    move-object v2, v0

    invoke-static {}, Lcom/sun/javafx/iio/gif/GIFDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->loopCount:I

    .line 58
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    .line 59
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readGlobalHeader()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->consumeAnExtension()V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/iio/gif/GIFImageLoader2;[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, p1

    .local v1, "x1":[B
    move v2, p2

    .local v2, "x2":I
    move v3, p3

    .local v3, "x3":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([BII)[B

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0
.end method

.method private computeInterlaceReIndex(I)[I
    .locals 8

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move v1, p1

    .local v1, "h":I
    move v5, v1

    new-array v5, v5, [I

    move-object v2, v5

    .local v2, "data":[I
    const/4 v5, 0x0

    move v3, v5

    .line 193
    .local v3, "pos":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 194
    :cond_0
    const/4 v5, 0x4

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_1

    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 195
    :cond_1
    const/4 v5, 0x2

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_2

    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 196
    :cond_2
    const/4 v5, 0x1

    move v4, v5

    :goto_3
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_3

    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 197
    :cond_3
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0
.end method

.method private consumeAnExtension()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v2

    move v1, v2

    .local v1, "blSize":I
    :goto_0
    move v2, v1

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->skipBytes(I)V

    .line 95
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private decodeImage([BII[I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object/from16 v1, p1

    .local v1, "image":[B
    move/from16 v2, p2

    .local v2, "w":I
    move/from16 v3, p3

    .local v3, "h":I
    move-object/from16 v4, p4

    .local v4, "interlace":[I
    new-instance v14, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;-><init>(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)V

    move-object v5, v14

    .line 164
    .local v5, "dec":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->getString()[B

    move-result-object v14

    move-object v6, v14

    .line 165
    .local v6, "data":[B
    const/4 v14, 0x0

    move v7, v14

    .local v7, "y":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "iPos":I
    move v14, v2

    move v9, v14

    .line 167
    .local v9, "xr":I
    :goto_0
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->readString()I

    move-result v14

    move v10, v14

    .line 168
    .local v10, "len":I
    move v14, v10

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    .line 169
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->waitForTerminator()V

    .line 170
    .line 180
    :goto_1
    return-void

    .line 172
    :cond_0
    const/4 v14, 0x0

    move v11, v14

    .local v11, "pos":I
    :goto_2
    move v14, v11

    move v15, v10

    if-eq v14, v15, :cond_5

    .line 173
    move v14, v9

    move v15, v10

    move/from16 v16, v11

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_1

    move v14, v9

    :goto_3
    move v12, v14

    .line 174
    .local v12, "ax":I
    move-object v14, v6

    move v15, v11

    move-object/from16 v16, v1

    move/from16 v17, v8

    move/from16 v18, v12

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    move v14, v8

    move v15, v12

    add-int/2addr v14, v15

    move v8, v14

    .line 176
    move v14, v11

    move v15, v12

    add-int/2addr v14, v15

    move v11, v14

    .line 177
    move v14, v9

    move v15, v12

    sub-int/2addr v14, v15

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v9, v15

    if-nez v14, :cond_3

    .line 178
    add-int/lit8 v7, v7, 0x1

    move v14, v7

    move v15, v3

    if-ne v14, v15, :cond_2

    .line 179
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->waitForTerminator()V

    .line 180
    goto :goto_1

    .line 173
    .end local v12    # "ax":I
    :cond_1
    move v14, v10

    move v15, v11

    sub-int/2addr v14, v15

    goto :goto_3

    .line 182
    .restart local v12    # "ax":I
    :cond_2
    move-object v14, v4

    if-nez v14, :cond_4

    move v14, v7

    :goto_4
    move v13, v14

    .line 183
    .local v13, "iY":I
    move v14, v13

    move v15, v2

    mul-int/2addr v14, v15

    move v8, v14

    .line 184
    move v14, v2

    move v9, v14

    .line 186
    .end local v13    # "iY":I
    :cond_3
    goto :goto_2

    .line 182
    :cond_4
    move-object v14, v4

    move v15, v7

    aget v14, v14, v15

    goto :goto_4

    .line 187
    .end local v12    # "ax":I
    :cond_5
    goto :goto_0
.end method

.method private decodePalette([B[[BIIIIII)Ljava/nio/ByteBuffer;
    .locals 23

    .prologue
    .line 297
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object/from16 v3, p1

    .local v3, "srcImage":[B
    move-object/from16 v4, p2

    .local v4, "palette":[[B
    move/from16 v5, p3

    .local v5, "trnsIndex":I
    move/from16 v6, p4

    .local v6, "left":I
    move/from16 v7, p5

    .local v7, "top":I
    move/from16 v8, p6

    .local v8, "w":I
    move/from16 v9, p7

    .local v9, "h":I
    move/from16 v10, p8

    .local v10, "disposalCode":I
    move/from16 v17, v10

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->image:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, [B->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    :goto_0
    move-object/from16 v11, v17

    .line 299
    .local v11, "img":[B
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "y":I
    :goto_1
    move/from16 v17, v12

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 300
    move/from16 v17, v7

    move/from16 v18, v12

    add-int v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v18, v6

    add-int v17, v17, v18

    const/16 v18, 0x4

    mul-int/lit8 v17, v17, 0x4

    move/from16 v13, v17

    .line 301
    .local v13, "iPos":I
    move/from16 v17, v12

    move/from16 v18, v8

    mul-int v17, v17, v18

    move/from16 v14, v17

    .line 302
    .local v14, "i":I
    move/from16 v17, v5

    if-gez v17, :cond_2

    .line 303
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "x":I
    :goto_2
    move/from16 v17, v15

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 304
    const/16 v17, 0xff

    move-object/from16 v18, v3

    move/from16 v19, v14

    move/from16 v20, v15

    add-int v19, v19, v20

    aget-byte v18, v18, v19

    and-int v17, v17, v18

    move/from16 v16, v17

    .line 305
    .local v16, "index":I
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    move-object/from16 v19, v4

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 306
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v4

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 307
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v19, v4

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 308
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v19, v4

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 303
    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 297
    .end local v11    # "img":[B
    .end local v12    # "y":I
    .end local v13    # "iPos":I
    .end local v14    # "i":I
    .end local v15    # "x":I
    .end local v16    # "index":I
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->image:[B

    move-object/from16 v17, v0

    goto/16 :goto_0

    .line 303
    .line 299
    .restart local v11    # "img":[B
    .restart local v12    # "y":I
    .restart local v13    # "iPos":I
    .restart local v14    # "i":I
    .restart local v15    # "x":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 311
    .end local v15    # "x":I
    :cond_2
    const/16 v17, 0x0

    move/from16 v15, v17

    .restart local v15    # "x":I
    :goto_3
    move/from16 v17, v15

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 312
    const/16 v17, 0xff

    move-object/from16 v18, v3

    move/from16 v19, v14

    move/from16 v20, v15

    add-int v19, v19, v20

    aget-byte v18, v18, v19

    and-int v17, v17, v18

    move/from16 v16, v17

    .line 313
    .restart local v16    # "index":I
    move/from16 v17, v16

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 314
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    move-object/from16 v19, v4

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 315
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v4

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 316
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v19, v4

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 317
    move-object/from16 v17, v11

    move/from16 v18, v13

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v19, v4

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move/from16 v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v17, v18

    .line 311
    :cond_3
    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 323
    .end local v13    # "iPos":I
    .end local v14    # "i":I
    .end local v15    # "x":I
    .end local v16    # "index":I
    :cond_4
    move/from16 v17, v10

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, [B->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v11, v17

    .line 324
    :cond_5
    move/from16 v17, v10

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->image:[B

    move-object/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-direct/range {v17 .. v22}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->restoreToBackground([BIIII)V

    .line 326
    :cond_6
    move-object/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v2
.end method

.method private readAppExtension()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v6

    move v1, v6

    .line 102
    .local v1, "size":I
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [B

    invoke-direct {v6, v7}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([B)[B

    move-result-object v6

    move-object v2, v6

    .line 103
    .local v2, "buf":[B
    sget-object v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->NETSCAPE_SIG:[B

    move-object v7, v2

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v6

    move v3, v6

    .local v3, "subBlockSize":I
    :goto_0
    move v6, v3

    if-eqz v6, :cond_1

    .line 105
    move-object v6, v0

    move v7, v3

    new-array v7, v7, [B

    invoke-direct {v6, v7}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([B)[B

    move-result-object v6

    move-object v4, v6

    .line 106
    .local v4, "subBlock":[B
    move-object v6, v4

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    move v5, v6

    .line 107
    .local v5, "subBlockId":I
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 108
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move-object v8, v4

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    iput v7, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->loopCount:I

    .line 104
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v6

    move v3, v6

    goto :goto_0

    .line 114
    .end local v3    # "subBlockSize":I
    .end local v4    # "subBlock":[B
    .end local v5    # "subBlockId":I
    :cond_1
    :goto_1
    return-void

    .line 112
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->consumeAnExtension()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    move v1, v2

    .line 249
    .local v1, "ch":I
    move v2, v1

    if-gez v2, :cond_0

    .line 250
    new-instance v2, Ljava/io/EOFException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 252
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return v0
.end method

.method private readBytes([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([BII)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0
.end method

.method private readBytes([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "offs":I
    move v3, p3

    .local v3, "size":I
    :goto_0
    move v5, v3

    if-lez v5, :cond_1

    .line 266
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 267
    .local v4, "sz":I
    move v5, v4

    if-gez v5, :cond_0

    .line 268
    new-instance v5, Ljava/io/EOFException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 270
    :cond_0
    move v5, v2

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 271
    move v5, v3

    move v6, v4

    sub-int/2addr v5, v6

    move v3, v5

    .line 272
    goto :goto_0

    .line 273
    .end local v4    # "sz":I
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0
.end method

.method private readControlCode()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v5

    move v1, v5

    .line 120
    .local v1, "size":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v5

    move v2, v5

    .line 121
    .local v2, "pField":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v5

    move v3, v5

    .line 122
    .local v3, "frameDelay":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v5

    move v4, v5

    .line 124
    .local v4, "trnsIndex":I
    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    :cond_0
    new-instance v5, Ljava/io/IOException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Bad GIF GraphicControlExtension"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_1
    move v5, v2

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v4

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    move v6, v3

    add-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return v0
.end method

.method private readGlobalHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v4, v0

    const/4 v5, 0x6

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([B)[B

    move-result-object v4

    move-object v1, v4

    .line 65
    .local v1, "signature":[B
    sget-object v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->FILE_SIG87:[B

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->FILE_SIG89:[B

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Bad GIF signature!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_0
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    .line 69
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    .line 70
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v4

    move v2, v4

    .line 71
    .local v2, "cInfo":I
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->bgColor:I

    .line 72
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v4

    move v3, v4

    .line 74
    .local v3, "aspectR":I
    move v4, v2

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 75
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x2

    move v7, v2

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readPalete(II)[[B

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->globalPalette:[[B

    .line 77
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    mul-int/2addr v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->image:[B

    .line 78
    return-void
.end method

.method private readPalete(II)[[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "trnsIndex":I
    const/4 v8, 0x4

    move v9, v1

    filled-new-array {v8, v9}, [I

    move-result-object v9

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    move-object v3, v8

    .line 83
    .local v3, "palette":[[B
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x3

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [B

    invoke-direct {v8, v9}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readBytes([B)[B

    move-result-object v8

    move-object v4, v8

    .line 84
    .local v4, "paletteData":[B
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "idx":I
    :goto_0
    move v8, v5

    move v9, v1

    if-eq v8, v9, :cond_2

    .line 85
    const/4 v8, 0x0

    move v7, v8

    .local v7, "k":I
    :goto_1
    move v8, v7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 86
    move-object v8, v3

    move v9, v7

    aget-object v8, v8, v9

    move v9, v5

    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 85
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 88
    :cond_0
    move-object v8, v3

    const/4 v9, 0x3

    aget-object v8, v8, v9

    move v9, v5

    move v10, v5

    move v11, v2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    :goto_2
    aput-byte v10, v8, v9

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v10, -0x1

    goto :goto_2

    .line 90
    .end local v7    # "k":I
    :cond_2
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0
.end method

.method private readShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v3

    move v1, v3

    .local v1, "lsb":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v3

    move v2, v3

    .line 257
    .local v2, "msb":I
    move v3, v1

    move v4, v2

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return v0
.end method

.method private restoreToBackground([BIIII)V
    .locals 12

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v1, p1

    .local v1, "img":[B
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "y":I
    :goto_0
    move v9, v6

    move v10, v5

    if-eq v9, v10, :cond_1

    .line 286
    move v9, v3

    move v10, v6

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    mul-int/2addr v9, v10

    move v10, v2

    add-int/2addr v9, v10

    const/4 v10, 0x4

    mul-int/lit8 v9, v9, 0x4

    move v7, v9

    .line 287
    .local v7, "iPos":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "x":I
    :goto_1
    move v9, v8

    move v10, v4

    if-eq v9, v10, :cond_0

    .line 288
    move-object v9, v1

    move v10, v7

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    .line 287
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 285
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v7    # "iPos":I
    .end local v8    # "x":I
    :cond_1
    return-void
.end method

.method private skipBytes(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move v2, p1

    .local v2, "n":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    move v4, v2

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/iio/common/ImageTools;->skipFully(Ljava/io/InputStream;J)V

    .line 278
    return-void
.end method

.method private updateMetadata(III)Lcom/sun/javafx/iio/ImageMetadata;
    .locals 20

    .prologue
    .line 331
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move/from16 v1, p1

    .local v1, "w":I
    move/from16 v2, p2

    .local v2, "h":I
    move/from16 v3, p3

    .local v3, "delayTime":I
    new-instance v5, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v19

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    if-eqz v12, :cond_0

    move v12, v3

    const/16 v13, 0xa

    mul-int/lit8 v12, v12, 0xa

    .line 332
    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->loopCount:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move v14, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v18}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v4, v5

    .line 333
    .local v4, "metaData":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 334
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    return-object v0

    .line 331
    .end local v4    # "metaData":Lcom/sun/javafx/iio/ImageMetadata;
    .restart local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    :cond_0
    const/16 v12, 0x28

    goto :goto_0
.end method

.method private waitForImageFrame()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    const/4 v3, 0x0

    move v1, v3

    .line 136
    .local v1, "controlData":I
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    .line 137
    .local v2, "ch":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 155
    new-instance v3, Ljava/io/IOException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected GIF control characher 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v2

    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :sswitch_0
    move v3, v1

    move v0, v3

    .line 153
    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    :goto_1
    return v0

    .line 141
    .restart local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    :sswitch_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 149
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->consumeAnExtension()V

    .line 151
    .line 158
    :goto_2
    goto :goto_0

    .line 143
    :sswitch_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readControlCode()I

    move-result v3

    move v1, v3

    .line 144
    goto :goto_2

    .line 146
    :sswitch_3
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readAppExtension()V

    .line 147
    goto :goto_2

    .line 153
    :sswitch_4
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 141
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_2
        0xff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move/from16 v3, p1

    .local v3, "imageIndex":I
    move/from16 v4, p2

    .local v4, "width":I
    move/from16 v5, p3

    .local v5, "height":I
    move/from16 v6, p4

    .local v6, "preserveAspectRatio":Z
    move/from16 v7, p5

    .local v7, "smooth":Z
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->waitForImageFrame()I

    move-result v24

    move/from16 v8, v24

    .line 204
    .local v8, "imageControlCode":I
    move/from16 v24, v8

    if-gez v24, :cond_0

    .line 205
    const/16 v24, 0x0

    move-object/from16 v2, v24

    .line 242
    .end local v2    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    :goto_0
    return-object v2

    .line 208
    .restart local v2    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    :cond_0
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v24

    move/from16 v9, v24

    .local v9, "left":I
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v24

    move/from16 v10, v24

    .local v10, "top":I
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v24

    move/from16 v11, v24

    .local v11, "w":I
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readShort()I

    move-result v24

    move/from16 v12, v24

    .line 211
    .local v12, "h":I
    move/from16 v24, v9

    move/from16 v25, v11

    add-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_1

    move/from16 v24, v10

    move/from16 v25, v12

    add-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 212
    :cond_1
    new-instance v24, Ljava/io/IOException;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    const-string v26, "Wrong GIF image frame size"

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 215
    :cond_2
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readByte()I

    move-result v24

    move/from16 v13, v24

    .line 217
    .local v13, "imgCtrl":I
    move/from16 v24, v8

    const/16 v25, 0x18

    ushr-int/lit8 v24, v24, 0x18

    const/16 v25, 0x1

    and-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v24, 0x1

    :goto_1
    move/from16 v14, v24

    .line 218
    .local v14, "isTRNS":Z
    move/from16 v24, v14

    if-eqz v24, :cond_6

    move/from16 v24, v8

    const/16 v25, 0x10

    ushr-int/lit8 v24, v24, 0x10

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    :goto_2
    move/from16 v15, v24

    .line 219
    .local v15, "trnsIndex":I
    move/from16 v24, v13

    const/16 v25, 0x80

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-eqz v24, :cond_7

    const/16 v24, 0x1

    :goto_3
    move/from16 v16, v24

    .line 220
    .local v16, "localPalette":Z
    move/from16 v24, v13

    const/16 v25, 0x40

    and-int/lit8 v24, v24, 0x40

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    :goto_4
    move/from16 v17, v24

    .line 222
    .local v17, "isInterlaced":Z
    move/from16 v24, v16

    if-eqz v24, :cond_9

    move-object/from16 v24, v2

    const/16 v25, 0x2

    move/from16 v26, v13

    const/16 v27, 0x7

    and-int/lit8 v26, v26, 0x7

    shl-int v25, v25, v26

    move/from16 v26, v15

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->readPalete(II)[[B

    move-result-object v24

    :goto_5
    move-object/from16 v18, v24

    .line 224
    .local v18, "palette":[[B
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    move/from16 v25, v0

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    invoke-static/range {v24 .. v28}, Lcom/sun/javafx/iio/common/ImageTools;->computeDimensions(IIIIZ)[I

    move-result-object v24

    move-object/from16 v19, v24

    .line 225
    .local v19, "outWH":[I
    move-object/from16 v24, v19

    const/16 v25, 0x0

    aget v24, v24, v25

    move/from16 v4, v24

    .line 226
    move-object/from16 v24, v19

    const/16 v25, 0x1

    aget v24, v24, v25

    move/from16 v5, v24

    .line 228
    move-object/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v8

    const v28, 0xffff

    and-int v27, v27, v28

    invoke-direct/range {v24 .. v27}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->updateMetadata(III)Lcom/sun/javafx/iio/ImageMetadata;

    move-result-object v24

    move-object/from16 v20, v24

    .line 230
    .local v20, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move/from16 v24, v8

    const/16 v25, 0x1a

    ushr-int/lit8 v24, v24, 0x1a

    const/16 v25, 0x7

    and-int/lit8 v24, v24, 0x7

    move/from16 v21, v24

    .line 231
    .local v21, "disposalCode":I
    move/from16 v24, v11

    move/from16 v25, v12

    mul-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v22, v24

    .line 232
    .local v22, "pImage":[B
    move-object/from16 v24, v2

    move-object/from16 v25, v22

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v17

    if-eqz v28, :cond_a

    move-object/from16 v28, v2

    move/from16 v29, v12

    invoke-direct/range {v28 .. v29}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->computeInterlaceReIndex(I)[I

    move-result-object v28

    :goto_6
    invoke-direct/range {v24 .. v28}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->decodeImage([BII[I)V

    .line 234
    move-object/from16 v24, v2

    move-object/from16 v25, v22

    move-object/from16 v26, v18

    move/from16 v27, v15

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v21

    invoke-direct/range {v24 .. v32}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->decodePalette([B[[BIIIIII)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v23, v24

    .line 237
    .local v23, "img":Ljava/nio/ByteBuffer;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move/from16 v24, v0

    move/from16 v25, v4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    move/from16 v24, v0

    move/from16 v25, v5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 238
    :cond_3
    move-object/from16 v24, v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenW:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->screenH:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v7

    invoke-static/range {v24 .. v30}, Lcom/sun/javafx/iio/common/ImageTools;->scaleImage(Ljava/nio/ByteBuffer;IIIIIZ)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v23, v24

    .line 242
    :cond_4
    new-instance v24, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    sget-object v26, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v27, v23

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v4

    const/16 v31, 0x4

    mul-int/lit8 v30, v30, 0x4

    const/16 v31, 0x0

    check-cast v31, [[B

    move-object/from16 v32, v20

    invoke-direct/range {v25 .. v32}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 217
    .end local v14    # "isTRNS":Z
    .end local v15    # "trnsIndex":I
    .end local v16    # "localPalette":Z
    .end local v17    # "isInterlaced":Z
    .end local v18    # "palette":[[B
    .end local v19    # "outWH":[I
    .end local v20    # "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    .end local v21    # "disposalCode":I
    .end local v22    # "pImage":[B
    .end local v23    # "img":Ljava/nio/ByteBuffer;
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 218
    .restart local v14    # "isTRNS":Z
    :cond_6
    const/16 v24, -0x1

    goto/16 :goto_2

    .line 219
    .restart local v15    # "trnsIndex":I
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 220
    .restart local v16    # "localPalette":Z
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 222
    .restart local v17    # "isInterlaced":Z
    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->globalPalette:[[B

    move-object/from16 v24, v0

    goto/16 :goto_5

    .line 232
    .restart local v18    # "palette":[[B
    .restart local v19    # "outWH":[I
    .restart local v20    # "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    .restart local v21    # "disposalCode":I
    .restart local v22    # "pImage":[B
    :cond_a
    const/16 v28, 0x0

    goto/16 :goto_6
.end method

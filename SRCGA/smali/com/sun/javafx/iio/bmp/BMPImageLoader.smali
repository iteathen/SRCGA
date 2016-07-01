.class final Lcom/sun/javafx/iio/bmp/BMPImageLoader;
.super Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.source "BMPImageLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;
    }
.end annotation


# static fields
.field static final BFH_SIZE:I = 0xe

.field static final BM:S = 0x4d42s


# instance fields
.field bfOffBits:I

.field bfSize:I

.field bgra_palette:[B

.field bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

.field bitMasks:[I

.field bitOffsets:[I

.field final data:Lcom/sun/javafx/iio/bmp/LEInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 179
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/iio/bmp/LEInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/bmp/LEInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v2, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    invoke-virtual {v2}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readShort()S

    move-result v2

    const/16 v3, 0x4d42

    if-eq v2, v3, :cond_0

    .line 181
    new-instance v2, Ljava/io/IOException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Invalid BMP file signature"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readHeader()V

    .line 184
    return-void
.end method

.method static BGRtoRGB([BII)V
    .locals 9

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "data":[B
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "size":I
    move v6, v2

    const/4 v7, 0x3

    div-int/lit8 v6, v6, 0x3

    move v3, v6

    .local v3, "sz":I
    :goto_0
    move v6, v3

    if-eqz v6, :cond_0

    .line 462
    move-object v6, v0

    move v7, v1

    aget-byte v6, v6, v7

    move v4, v6

    .local v4, "b":B
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    move v5, v6

    .line 463
    .local v5, "r":B
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v4

    aput-byte v8, v6, v7

    move-object v6, v0

    move v7, v1

    move v8, v5

    aput-byte v8, v6, v7

    .line 464
    add-int/lit8 v1, v1, 0x3

    .line 461
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 466
    .end local v4    # "b":B
    .end local v5    # "r":B
    :cond_0
    return-void
.end method

.method static synthetic access$lambda$0(III)B
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->convertFromXTo8Bit(III)B

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$lambda$1(III)B
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->convertFrom5To8Bit(III)B

    move-result v3

    move v0, v3

    return v0
.end method

.method static checkDisjointMasks(III)Z
    .locals 6

    .prologue
    .line 243
    move v0, p0

    .local v0, "m1":I
    move v1, p1

    .local v1, "m2":I
    move v2, p2

    .local v2, "m3":I
    move v3, v0

    move v4, v1

    and-int/2addr v3, v4

    move v4, v0

    move v5, v2

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v4, v1

    move v5, v2

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "m1":I
    return v0

    .restart local v0    # "m1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static convertFrom5To8Bit(III)B
    .locals 7

    .prologue
    .line 381
    move v0, p0

    .local v0, "i":I
    move v1, p1

    .local v1, "mask":I
    move v2, p2

    .local v2, "offset":I
    move v4, v0

    move v5, v1

    and-int/2addr v4, v5

    move v5, v2

    ushr-int/2addr v4, v5

    move v3, v4

    .line 382
    .local v3, "b":I
    move v4, v3

    const/4 v5, 0x3

    shl-int/lit8 v4, v4, 0x3

    move v5, v3

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    move v0, v4

    .end local v0    # "i":I
    return v0
.end method

.method private static convertFromXTo8Bit(III)B
    .locals 8

    .prologue
    .line 386
    move v0, p0

    .local v0, "i":I
    move v1, p1

    .local v1, "mask":I
    move v2, p2

    .local v2, "offset":I
    move v4, v0

    move v5, v1

    and-int/2addr v4, v5

    move v5, v2

    ushr-int/2addr v4, v5

    move v3, v4

    .line 387
    .local v3, "b":I
    move v4, v3

    int-to-double v4, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    move v6, v1

    move v7, v2

    ushr-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    move v0, v4

    .end local v0    # "i":I
    return v0
.end method

.method private static getByte([BI)I
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "buf":[B
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    .end local v0    # "buf":[B
    return v0
.end method

.method private static getDWord([BI)I
    .locals 6

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "buf":[B
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "buf":[B
    return v0
.end method

.method private static getWord([BI)I
    .locals 6

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "buf":[B
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "buf":[B
    return v0
.end method

.method static isPow2Minus1(I)Z
    .locals 4

    .prologue
    .line 247
    move v0, p0

    .local v0, "i":I
    move v1, v0

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "i":I
    return v0

    .restart local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseBitfields()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    array-length v4, v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    .line 218
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid bit masks"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_0
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    .line 221
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitOffsets:[I

    .line 222
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    :goto_0
    move v4, v1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 223
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    move v5, v1

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getDWord([BI)I

    move-result v4

    move v2, v4

    .line 224
    .local v2, "mask":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    move v5, v1

    move v6, v2

    aput v6, v4, v5

    .line 225
    const/4 v4, 0x0

    move v3, v4

    .line 226
    .local v3, "offset":I
    move v4, v2

    if-eqz v4, :cond_2

    .line 227
    :goto_1
    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 229
    move v4, v2

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_1

    .line 231
    :cond_1
    move v4, v2

    invoke-static {v4}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->isPow2Minus1(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Bit mask is not contiguous"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitOffsets:[I

    move v5, v1

    move v6, v3

    aput v6, v4, v5

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "mask":I
    .end local v3    # "offset":I
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->checkDisjointMasks(III)Z

    move-result v4

    if-nez v4, :cond_4

    .line 238
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Bit masks overlap"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_4
    return-void
.end method

.method private read16Bit([BIILcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object/from16 v2, p1

    .local v2, "image":[B
    move/from16 v3, p2

    .local v3, "rowLength":I
    move/from16 v4, p3

    .local v4, "hght":I
    move-object/from16 v5, p4

    .local v5, "converter":Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v15, v15, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    move v6, v15

    .line 394
    .local v6, "bytesPerLine":I
    move v15, v6

    const/16 v16, 0x3

    add-int/lit8 v15, v15, 0x3

    const/16 v16, -0x4

    and-int/lit8 v15, v15, -0x4

    move v7, v15

    .line 395
    .local v7, "srcStride":I
    move v15, v7

    new-array v15, v15, [B

    move-object v8, v15

    .line 396
    .local v8, "lineBuf":[B
    const/4 v15, 0x0

    move v9, v15

    .local v9, "i":I
    :goto_0
    move v15, v9

    move/from16 v16, v4

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 397
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    iget-object v15, v15, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v16, v8

    invoke-static/range {v15 .. v16}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v15

    .line 398
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v15, v15, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    if-gez v15, :cond_0

    move v15, v9

    :goto_1
    move v10, v15

    .line 399
    .local v10, "line":I
    move v15, v10

    move/from16 v16, v3

    mul-int v15, v15, v16

    move v11, v15

    .line 401
    .local v11, "dstOffset":I
    const/4 v15, 0x0

    move v12, v15

    .local v12, "x":I
    :goto_2
    move v15, v12

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 402
    move-object v15, v8

    move/from16 v16, v12

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getWord([BI)I

    move-result v15

    move v13, v15

    .line 403
    .local v13, "element":I
    const/4 v15, 0x0

    move v14, v15

    .local v14, "j":I
    :goto_3
    move v15, v14

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 404
    move-object v15, v2

    move/from16 v16, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v17, v5

    move/from16 v18, v13

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    move-object/from16 v19, v0

    move/from16 v20, v14

    aget v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitOffsets:[I

    move-object/from16 v20, v0

    move/from16 v21, v14

    aget v20, v20, v21

    .line 405
    invoke-interface/range {v17 .. v20}, Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;->convert(III)B

    move-result v17

    aput-byte v17, v15, v16

    .line 403
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 398
    .end local v10    # "line":I
    .end local v11    # "dstOffset":I
    .end local v12    # "x":I
    .end local v13    # "element":I
    .end local v14    # "j":I
    :cond_0
    move v15, v4

    move/from16 v16, v9

    sub-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 401
    .restart local v10    # "line":I
    .restart local v11    # "dstOffset":I
    .restart local v12    # "x":I
    .restart local v13    # "element":I
    .restart local v14    # "j":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 396
    .end local v13    # "element":I
    .end local v14    # "j":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 409
    .end local v10    # "line":I
    .end local v11    # "dstOffset":I
    .end local v12    # "x":I
    :cond_3
    return-void
.end method

.method private read24Bit([BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object v1, p1

    .local v1, "image":[B
    move v2, p2

    .local v2, "rowLength":I
    move/from16 v3, p3

    .local v3, "hght":I
    move v9, v2

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    const/4 v10, -0x4

    and-int/lit8 v9, v9, -0x4

    move v4, v9

    .line 449
    .local v4, "bmpStride":I
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v5, v9

    .line 451
    .local v5, "padding":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v3

    if-eq v9, v10, :cond_1

    .line 452
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v9, v9, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    if-gez v9, :cond_0

    move v9, v6

    :goto_1
    move v7, v9

    .line 453
    .local v7, "line":I
    move v9, v7

    move v10, v2

    mul-int/2addr v9, v10

    move v8, v9

    .line 454
    .local v8, "lineOffset":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    iget-object v9, v9, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object v10, v1

    move v11, v8

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    .line 455
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    move v10, v5

    invoke-virtual {v9, v10}, Lcom/sun/javafx/iio/bmp/LEInputStream;->skipBytes(I)V

    .line 456
    move-object v9, v1

    move v10, v8

    move v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->BGRtoRGB([BII)V

    .line 451
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 452
    .end local v7    # "line":I
    .end local v8    # "lineOffset":I
    :cond_0
    move v9, v3

    move v10, v6

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 458
    :cond_1
    return-void
.end method

.method private read32BitBF([BII)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object/from16 v2, p1

    .local v2, "image":[B
    move/from16 v3, p2

    .local v3, "rowLength":I
    move/from16 v4, p3

    .local v4, "hght":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v14, v14, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    move v5, v14

    .line 430
    .local v5, "bytesPerLine":I
    move v14, v5

    new-array v14, v14, [B

    move-object v6, v14

    .line 431
    .local v6, "lineBuf":[B
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    :goto_0
    move v14, v7

    move v15, v4

    if-eq v14, v15, :cond_3

    .line 432
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    iget-object v14, v14, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object v15, v6

    invoke-static {v14, v15}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v14

    .line 433
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v14, v14, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    if-gez v14, :cond_0

    move v14, v7

    :goto_1
    move v8, v14

    .line 434
    .local v8, "line":I
    move v14, v8

    move v15, v3

    mul-int/2addr v14, v15

    move v9, v14

    .line 436
    .local v9, "dstOff":I
    const/4 v14, 0x0

    move v10, v14

    .local v10, "x":I
    :goto_2
    move v14, v10

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v15, v15, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    if-eq v14, v15, :cond_2

    .line 437
    move v14, v10

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    move v11, v14

    .line 438
    .local v11, "srcOff":I
    move-object v14, v6

    move v15, v11

    invoke-static {v14, v15}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getDWord([BI)I

    move-result v14

    move v12, v14

    .line 439
    .local v12, "element":I
    const/4 v14, 0x0

    move v13, v14

    .local v13, "j":I
    :goto_3
    move v14, v13

    const/4 v15, 0x3

    if-ge v14, v15, :cond_1

    .line 440
    move-object v14, v2

    move v15, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    move-object/from16 v17, v0

    move/from16 v18, v13

    aget v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitOffsets:[I

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget v18, v18, v19

    .line 441
    invoke-static/range {v16 .. v18}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->convertFromXTo8Bit(III)B

    move-result v16

    aput-byte v16, v14, v15

    .line 439
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 433
    .end local v8    # "line":I
    .end local v9    # "dstOff":I
    .end local v10    # "x":I
    .end local v11    # "srcOff":I
    .end local v12    # "element":I
    .end local v13    # "j":I
    :cond_0
    move v14, v4

    move v15, v7

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 436
    .restart local v8    # "line":I
    .restart local v9    # "dstOff":I
    .restart local v10    # "x":I
    .restart local v11    # "srcOff":I
    .restart local v12    # "element":I
    .restart local v13    # "j":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 431
    .end local v11    # "srcOff":I
    .end local v12    # "element":I
    .end local v13    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 445
    .end local v8    # "line":I
    .end local v9    # "dstOff":I
    .end local v10    # "x":I
    :cond_3
    return-void
.end method

.method private read32BitRGB([BII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object/from16 v1, p1

    .local v1, "image":[B
    move/from16 v2, p2

    .local v2, "rowLength":I
    move/from16 v3, p3

    .local v3, "hght":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v11, v11, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    move v4, v11

    .line 413
    .local v4, "bytesPerLine":I
    move v11, v4

    new-array v11, v11, [B

    move-object v5, v11

    .line 414
    .local v5, "lineBuf":[B
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_0
    move v11, v6

    move v12, v3

    if-eq v11, v12, :cond_2

    .line 415
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    iget-object v11, v11, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object v12, v5

    invoke-static {v11, v12}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v11

    .line 416
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v11, v11, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    if-gez v11, :cond_0

    move v11, v6

    :goto_1
    move v7, v11

    .line 417
    .local v7, "line":I
    move v11, v7

    move v12, v2

    mul-int/2addr v11, v12

    move v8, v11

    .line 419
    .local v8, "dstOff":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_2
    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v12, v12, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    if-eq v11, v12, :cond_1

    .line 420
    move v11, v9

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    move v10, v11

    .line 421
    .local v10, "srcOff":I
    move-object v11, v1

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v5

    move v14, v10

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 422
    move-object v11, v1

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v5

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 423
    move-object v11, v1

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v5

    move v14, v10

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 419
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 416
    .end local v7    # "line":I
    .end local v8    # "dstOff":I
    .end local v9    # "x":I
    .end local v10    # "srcOff":I
    :cond_0
    move v11, v3

    move v12, v6

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 414
    .restart local v7    # "line":I
    .restart local v8    # "dstOff":I
    .restart local v9    # "x":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 426
    .end local v7    # "line":I
    .end local v8    # "dstOff":I
    .end local v9    # "x":I
    :cond_2
    return-void
.end method

.method private readHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    invoke-virtual {v5}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfSize:I

    .line 188
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sun/javafx/iio/bmp/LEInputStream;->skipBytes(I)V

    .line 189
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    invoke-virtual {v5}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfOffBits:I

    .line 190
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    invoke-direct {v6, v7}, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;-><init>(Lcom/sun/javafx/iio/bmp/LEInputStream;)V

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    .line 191
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfOffBits:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v5, v5, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v6, 0xe

    add-int/lit8 v5, v5, 0xe

    if-ge v4, v5, :cond_0

    .line 192
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Invalid bitmap bits offset"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v4, v4, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v5, 0xe

    add-int/lit8 v4, v4, 0xe

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfOffBits:I

    if-eq v4, v5, :cond_1

    .line 196
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfOffBits:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v5, v5, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    sub-int/2addr v4, v5

    const/16 v5, 0xe

    add-int/lit8 v4, v4, -0xe

    move v1, v4

    .line 197
    .local v1, "length":I
    move v4, v1

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    move v2, v4

    .line 198
    .local v2, "paletteSize":I
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    .line 199
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    .line 201
    .local v3, "read":I
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 202
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/iio/bmp/LEInputStream;->skipBytes(I)V

    .line 206
    .end local v1    # "length":I
    .end local v2    # "paletteSize":I
    .end local v3    # "read":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v4, v4, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 207
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->parseBitfields()V

    .line 214
    :cond_2
    :goto_0
    return-void

    .line 208
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v4, v4, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget-short v4, v4, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    .line 211
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitMasks:[I

    .line 212
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    iput-object v5, v4, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bitOffsets:[I

    goto :goto_0

    .line 211
    nop

    :array_0
    .array-data 4
        0x7c00
        0x3e0
        0x1f
    .end array-data

    .line 212
    :array_1
    .array-data 4
        0xa
        0x5
        0x0
    .end array-data
.end method

.method private readPackedBits([BII)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object/from16 v3, p1

    .local v3, "image":[B
    move/from16 v4, p2

    .local v4, "rowLength":I
    move/from16 v5, p3

    .local v5, "hght":I
    const/16 v19, 0x8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    move/from16 v20, v0

    div-int v19, v19, v20

    move/from16 v6, v19

    .line 339
    .local v6, "pixPerByte":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move/from16 v19, v0

    move/from16 v20, v6

    add-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v6

    div-int v19, v19, v20

    move/from16 v7, v19

    .line 340
    .local v7, "bytesPerLine":I
    move/from16 v19, v7

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    const/16 v20, -0x4

    and-int/lit8 v19, v19, -0x4

    move/from16 v8, v19

    .line 341
    .local v8, "srcStride":I
    const/16 v19, 0x1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    move/from16 v20, v0

    shl-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v9, v19

    .line 343
    .local v9, "bitMask":I
    move/from16 v19, v8

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 344
    .local v10, "lineBuf":[B
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i":I
    :goto_0
    move/from16 v19, v11

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 345
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v19

    .line 346
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    move/from16 v19, v0

    if-gez v19, :cond_0

    move/from16 v19, v11

    :goto_1
    move/from16 v12, v19

    .line 347
    .local v12, "line":I
    move/from16 v19, v12

    move/from16 v20, v4

    mul-int v19, v19, v20

    move/from16 v13, v19

    .line 349
    .local v13, "dstOffset":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "x":I
    :goto_2
    move/from16 v19, v14

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 350
    move/from16 v19, v14

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v15, v19

    .line 351
    .local v15, "bitnum":I
    move-object/from16 v19, v10

    move/from16 v20, v15

    const/16 v21, 0x8

    div-int/lit8 v20, v20, 0x8

    aget-byte v19, v19, v20

    move/from16 v16, v19

    .line 352
    .local v16, "element":I
    const/16 v19, 0x8

    move/from16 v20, v15

    const/16 v21, 0x7

    and-int/lit8 v20, v20, 0x7

    rsub-int/lit8 v19, v20, 0x8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 353
    .local v17, "shift":I
    move/from16 v19, v16

    move/from16 v20, v17

    shr-int v19, v19, v20

    move/from16 v20, v9

    and-int v19, v19, v20

    move/from16 v18, v19

    .line 354
    .local v18, "index":I
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v18

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->setRGBFromPalette([BII)I

    move-result v19

    move/from16 v13, v19

    .line 349
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 346
    .end local v12    # "line":I
    .end local v13    # "dstOffset":I
    .end local v14    # "x":I
    .end local v15    # "bitnum":I
    .end local v16    # "element":I
    .end local v17    # "shift":I
    .end local v18    # "index":I
    :cond_0
    move/from16 v19, v5

    move/from16 v20, v11

    sub-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_1

    .line 344
    .restart local v12    # "line":I
    .restart local v13    # "dstOffset":I
    .restart local v14    # "x":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 357
    .end local v12    # "line":I
    .end local v13    # "dstOffset":I
    .end local v14    # "x":I
    :cond_2
    return-void
.end method

.method private readRLE([BIIZ)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object/from16 v3, p1

    .local v3, "image":[B
    move/from16 v4, p2

    .local v4, "rowLength":I
    move/from16 v5, p3

    .local v5, "hght":I
    move/from16 v6, p4

    .local v6, "isRLE4":Z
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSizeImage:I

    move/from16 v20, v0

    move/from16 v7, v20

    .line 258
    .local v7, "imgSize":I
    move/from16 v20, v7

    if-nez v20, :cond_0

    .line 259
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfSize:I

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bfOffBits:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v7, v20

    .line 261
    :cond_0
    move/from16 v20, v7

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 262
    .local v8, "imgData":[B
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->data:Lcom/sun/javafx/iio/bmp/LEInputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v20

    .line 264
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    const/16 v20, 0x1

    :goto_0
    move/from16 v9, v20

    .line 265
    .local v9, "isBottomUp":Z
    move/from16 v20, v9

    if-eqz v20, :cond_2

    move/from16 v20, v5

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    :goto_1
    move/from16 v10, v20

    .line 266
    .local v10, "line":I
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 267
    .local v11, "i":I
    move/from16 v20, v10

    move/from16 v21, v4

    mul-int v20, v20, v21

    move/from16 v12, v20

    .line 268
    .local v12, "dstOffset":I
    :goto_2
    move/from16 v20, v11

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 269
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v13, v20

    .line 270
    .local v13, "b1":I
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v14, v20

    .line 271
    .local v14, "b2":I
    move/from16 v20, v13

    if-nez v20, :cond_a

    .line 272
    move/from16 v20, v14

    packed-switch v20, :pswitch_data_0

    .line 287
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 289
    .local v17, "indexData":I
    const/16 v20, 0x0

    move/from16 v19, v20

    .local v19, "p":I
    :goto_3
    move/from16 v20, v19

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 290
    move/from16 v20, v6

    if-eqz v20, :cond_6

    .line 291
    move/from16 v20, v19

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_5

    .line 292
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v17, v20

    .line 293
    move/from16 v20, v17

    const/16 v21, 0xf0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    const/16 v21, 0x4

    shr-int/lit8 v20, v20, 0x4

    move/from16 v18, v20

    .line 300
    .local v18, "index":I
    :goto_4
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v12

    move/from16 v23, v18

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->setRGBFromPalette([BII)I

    move-result v20

    move/from16 v12, v20

    .line 289
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 264
    .end local v9    # "isBottomUp":Z
    .end local v10    # "line":I
    .end local v11    # "i":I
    .end local v12    # "dstOffset":I
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v17    # "indexData":I
    .end local v18    # "index":I
    .end local v19    # "p":I
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 265
    .restart local v9    # "isBottomUp":Z
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 274
    .restart local v10    # "line":I
    .restart local v11    # "i":I
    .restart local v12    # "dstOffset":I
    .restart local v13    # "b1":I
    .restart local v14    # "b2":I
    :pswitch_0
    move/from16 v20, v10

    move/from16 v21, v9

    if-eqz v21, :cond_4

    const/16 v21, -0x1

    :goto_5
    add-int v20, v20, v21

    move/from16 v10, v20

    .line 275
    move/from16 v20, v10

    move/from16 v21, v4

    mul-int v20, v20, v21

    move/from16 v12, v20

    .line 307
    .line 323
    :cond_3
    :goto_6
    goto/16 :goto_2

    .line 274
    :cond_4
    const/16 v21, 0x1

    goto :goto_5

    .line 278
    .line 325
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    :goto_7
    :pswitch_1
    return-void

    .line 280
    .restart local v13    # "b1":I
    .restart local v14    # "b2":I
    :pswitch_2
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v15, v20

    .line 281
    .local v15, "deltaX":I
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v16, v20

    .line 282
    .local v16, "deltaY":I
    move/from16 v20, v10

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v10, v20

    .line 283
    move/from16 v20, v12

    move/from16 v21, v16

    move/from16 v22, v4

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 284
    move/from16 v20, v12

    move/from16 v21, v15

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 285
    goto :goto_6

    .line 295
    .end local v15    # "deltaX":I
    .end local v16    # "deltaY":I
    .restart local v17    # "indexData":I
    .restart local v19    # "p":I
    :cond_5
    move/from16 v20, v17

    const/16 v21, 0xf

    and-int/lit8 v20, v20, 0xf

    move/from16 v18, v20

    .restart local v18    # "index":I
    goto :goto_4

    .line 298
    .end local v18    # "index":I
    :cond_6
    move-object/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->getByte([BI)I

    move-result v20

    move/from16 v18, v20

    .restart local v18    # "index":I
    goto/16 :goto_4

    .line 302
    .end local v18    # "index":I
    :cond_7
    move/from16 v20, v6

    if-eqz v20, :cond_9

    .line 303
    move/from16 v20, v14

    const/16 v21, 0x3

    and-int/lit8 v20, v20, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move/from16 v20, v14

    const/16 v21, 0x3

    and-int/lit8 v20, v20, 0x3

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 305
    :cond_9
    move/from16 v20, v14

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 310
    .end local v17    # "indexData":I
    .end local v19    # "p":I
    :cond_a
    move/from16 v20, v6

    if-eqz v20, :cond_d

    .line 311
    move/from16 v20, v14

    const/16 v21, 0xf0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    const/16 v21, 0x4

    shr-int/lit8 v20, v20, 0x4

    move/from16 v15, v20

    .line 312
    .local v15, "index1":I
    move/from16 v20, v14

    const/16 v21, 0xf

    and-int/lit8 v20, v20, 0xf

    move/from16 v16, v20

    .line 313
    .local v16, "index2":I
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "p":I
    :goto_8
    move/from16 v20, v17

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 314
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v12

    move/from16 v23, v17

    const/16 v24, 0x1

    and-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_b

    move/from16 v23, v15

    :goto_9
    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->setRGBFromPalette([BII)I

    move-result v20

    move/from16 v12, v20

    .line 313
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 314
    :cond_b
    move/from16 v23, v16

    goto :goto_9

    .line 317
    :cond_c
    goto/16 :goto_6

    .line 318
    .end local v15    # "index1":I
    .end local v16    # "index2":I
    .end local v17    # "p":I
    :cond_d
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "p":I
    :goto_a
    move/from16 v20, v15

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 319
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v12

    move/from16 v23, v14

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->setRGBFromPalette([BII)I

    move-result v20

    move/from16 v12, v20

    .line 318
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 325
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "p":I
    :cond_e
    goto/16 :goto_7

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRGBFromPalette([BII)I
    .locals 9

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move-object v1, p1

    .local v1, "image":[B
    move v2, p2

    .local v2, "dstOffset":I
    move v3, p3

    .local v3, "index":I
    move v4, v3

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 329
    move-object v4, v1

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 330
    move-object v4, v1

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 331
    move-object v4, v1

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bgra_palette:[B

    move v7, v3

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 332
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    move/from16 v1, p1

    .local v1, "imageIndex":I
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveAspectRatio":Z
    move/from16 v5, p5

    .local v5, "smooth":Z
    const/4 v13, 0x0

    move v14, v1

    if-eq v13, v14, :cond_0

    .line 472
    const/4 v13, 0x0

    move-object v0, v13

    .line 537
    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    :goto_0
    return-object v0

    .line 475
    .restart local v0    # "this":Lcom/sun/javafx/iio/bmp/BMPImageLoader;
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move v6, v13

    .line 477
    .local v6, "hght":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move v14, v6

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v13 .. v17}, Lcom/sun/javafx/iio/common/ImageTools;->computeDimensions(IIIIZ)[I

    move-result-object v13

    move-object v7, v13

    .line 478
    .local v7, "outWH":[I
    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    move v2, v13

    .line 479
    move-object v13, v7

    const/4 v14, 0x1

    aget v13, v13, v14

    move v3, v13

    .line 482
    new-instance v13, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v2

    .line 483
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v23, v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v14 .. v26}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v8, v13

    .line 485
    .local v8, "imageMetadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 487
    const/4 v13, 0x3

    move v9, v13

    .line 488
    .local v9, "bpp":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move v14, v9

    mul-int/2addr v13, v14

    move v10, v13

    .line 490
    .local v10, "stride":I
    move v13, v10

    move v14, v6

    mul-int/2addr v13, v14

    new-array v13, v13, [B

    move-object v11, v13

    .line 492
    .local v11, "image":[B
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget-short v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    sparse-switch v13, :sswitch_data_0

    .line 528
    new-instance v13, Ljava/io/IOException;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    const-string v15, "Unknown BMP bit depth"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 494
    :sswitch_0
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readPackedBits([BII)V

    .line 495
    .line 531
    :goto_1
    move-object v13, v11

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v12, v13

    .line 532
    .local v12, "img":Ljava/nio/ByteBuffer;
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move v14, v2

    if-ne v13, v14, :cond_1

    move v13, v6

    move v14, v3

    if-eq v13, v14, :cond_2

    .line 533
    :cond_1
    move-object v13, v12

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v14, v14, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    move v15, v6

    move/from16 v16, v9

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-static/range {v13 .. v19}, Lcom/sun/javafx/iio/common/ImageTools;->scaleImage(Ljava/nio/ByteBuffer;IIIIIZ)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v12, v13

    .line 537
    :cond_2
    new-instance v13, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    sget-object v15, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v16, v12

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v2

    move/from16 v20, v9

    mul-int v19, v19, v20

    const/16 v20, 0x0

    check-cast v20, [[B

    move-object/from16 v21, v8

    invoke-direct/range {v14 .. v21}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object v0, v13

    goto/16 :goto_0

    .line 497
    .end local v12    # "img":Ljava/nio/ByteBuffer;
    :sswitch_1
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 498
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    const/16 v17, 0x1

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readRLE([BIIZ)V

    goto :goto_1

    .line 500
    :cond_3
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readPackedBits([BII)V

    .line 502
    goto :goto_1

    .line 504
    :sswitch_2
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 505
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readRLE([BIIZ)V

    goto :goto_1

    .line 507
    :cond_4
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->readPackedBits([BII)V

    .line 509
    goto :goto_1

    .line 511
    :sswitch_3
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 512
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-static {}, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->read16Bit([BIILcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;)V

    goto/16 :goto_1

    .line 514
    :cond_5
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-static {}, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$2;->lambdaFactory$()Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->read16Bit([BIILcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;)V

    .line 516
    goto/16 :goto_1

    .line 518
    :sswitch_4
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->bih:Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;

    iget v13, v13, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 519
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->read32BitBF([BII)V

    goto/16 :goto_1

    .line 521
    :cond_6
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->read32BitRGB([BII)V

    .line 523
    goto/16 :goto_1

    .line 525
    :sswitch_5
    move-object v13, v0

    move-object v14, v11

    move v15, v10

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->read24Bit([BII)V

    .line 526
    goto/16 :goto_1

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x18 -> :sswitch_5
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

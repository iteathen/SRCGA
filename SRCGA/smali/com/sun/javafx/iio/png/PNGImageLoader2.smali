.class public final Lcom/sun/javafx/iio/png/PNGImageLoader2;
.super Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.source "PNGImageLoader2.java"


# static fields
.field static final FILE_SIG:[B

.field static final IDAT_TYPE:I = 0x49444154

.field static final IEND_TYPE:I = 0x49454e44

.field static final IHDR_TYPE:I = 0x49484452

.field static final PLTE_TYPE:I = 0x504c5445

.field static final PNG_COLOR_GRAY:I = 0x0

.field static final PNG_COLOR_GRAY_ALPHA:I = 0x4

.field static final PNG_COLOR_PALETTE:I = 0x3

.field static final PNG_COLOR_RGB:I = 0x2

.field static final PNG_COLOR_RGB_ALPHA:I = 0x6

.field static final PNG_FILTER_AVERAGE:I = 0x3

.field static final PNG_FILTER_NONE:I = 0x0

.field static final PNG_FILTER_PAETH:I = 0x4

.field static final PNG_FILTER_SUB:I = 0x1

.field static final PNG_FILTER_UP:I = 0x2

.field private static final increment_x:[I

.field private static final increment_y:[I

.field static final numBandsPerColorType:[I

.field private static final starting_x:[I

.field private static final starting_y:[I

.field static final tRNS_TYPE:I = 0x74524e53


# instance fields
.field private bitDepth:I

.field private colorType:I

.field private height:I

.field private isInterlaced:Z

.field private palette:[[B

.field private final stream:Ljava/io/DataInputStream;

.field private tRNS_GRAY_RGB:Z

.field private tRNS_present:Z

.field private trnsB:I

.field private trnsG:I

.field private trnsR:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->FILE_SIG:[B

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->numBandsPerColorType:[I

    .line 519
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_y:[I

    .line 520
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_x:[I

    .line 521
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_y:[I

    .line 522
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_x:[I

    return-void

    .line 42
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        -0x1
        0x3
        0x1
        0x2
        -0x1
        0x4
    .end array-data

    .line 519
    :array_2
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    .line 520
    :array_3
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
        0x0
    .end array-data

    .line 521
    :array_4
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    .line 522
    :array_5
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/iio/png/PNGDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    .line 78
    move-object v3, v0

    new-instance v4, Ljava/io/DataInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    .line 80
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readBytes([B)[B

    move-result-object v3

    move-object v2, v3

    .line 82
    .local v2, "signature":[B
    sget-object v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->FILE_SIG:[B

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Bad PNG signature!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readHeader()V

    .line 87
    return-void
.end method

.method private bpp()I
    .locals 3

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    sget-object v1, Lcom/sun/javafx/iio/png/PNGImageLoader2;->numBandsPerColorType:[I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    aget v1, v1, v2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private bytesPerColor()I
    .locals 3

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private copy([B[BIII)V
    .locals 12

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "image":[B
    move v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move/from16 v5, p5

    .local v5, "resultBpp":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    if-nez v6, :cond_2

    .line 455
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 456
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    move v9, v3

    move-object v10, v1

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->copy_plain([B[BIII)V

    goto :goto_0

    .line 460
    :cond_2
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    if-nez v6, :cond_3

    .line 461
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->copyTrns_gray([B[BII)V

    goto :goto_0

    .line 462
    :cond_3
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 463
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->copyTrns_rgb([B[BII)V

    goto :goto_0
.end method

.method private copyTrns_gray([B[BII)V
    .locals 14

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    int-to-byte v10, v10

    move v5, v10

    .line 425
    .local v5, "tG":B
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    move v10, v3

    move v7, v10

    .local v7, "oPos":I
    move-object v10, v1

    array-length v10, v10

    move v8, v10

    .local v8, "l":I
    :goto_0
    move v10, v6

    move v11, v8

    if-ge v10, v11, :cond_1

    .line 426
    move-object v10, v1

    move v11, v6

    aget-byte v10, v10, v11

    move v9, v10

    .line 427
    .local v9, "gray":B
    move-object v10, v2

    move v11, v7

    move v12, v9

    aput-byte v12, v10, v11

    .line 428
    move-object v10, v2

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v9

    move v13, v5

    if-ne v12, v13, :cond_0

    const/4 v12, 0x0

    :goto_1
    aput-byte v12, v10, v11

    .line 425
    move v10, v7

    const/4 v11, 0x2

    move v12, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 428
    :cond_0
    const/4 v12, -0x1

    goto :goto_1

    .line 430
    .end local v9    # "gray":B
    :cond_1
    return-void
.end method

.method private copyTrns_rgb([B[BII)V
    .locals 20

    .prologue
    .line 433
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v3, p1

    .local v3, "line":[B
    move-object/from16 v4, p2

    .local v4, "image":[B
    move/from16 v5, p3

    .local v5, "pos":I
    move/from16 v6, p4

    .local v6, "step":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsR:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    .local v7, "tR":B
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v8, v16

    .local v8, "tG":B
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsB:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    .line 434
    .local v9, "tB":B
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    div-int/lit8 v16, v16, 0x3

    move/from16 v10, v16

    .line 435
    .local v10, "l":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    move/from16 v16, v5

    move/from16 v12, v16

    .local v12, "oPos":I
    :goto_0
    move/from16 v16, v11

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 436
    move-object/from16 v16, v3

    move/from16 v17, v11

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    aget-byte v16, v16, v17

    move/from16 v13, v16

    .local v13, "r":B
    move-object/from16 v16, v3

    move/from16 v17, v11

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget-byte v16, v16, v17

    move/from16 v14, v16

    .local v14, "g":B
    move-object/from16 v16, v3

    move/from16 v17, v11

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget-byte v16, v16, v17

    move/from16 v15, v16

    .line 437
    .local v15, "b":B
    move-object/from16 v16, v4

    move/from16 v17, v12

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v18, v13

    aput-byte v18, v16, v17

    .line 438
    move-object/from16 v16, v4

    move/from16 v17, v12

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v14

    aput-byte v18, v16, v17

    .line 439
    move-object/from16 v16, v4

    move/from16 v17, v12

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v15

    aput-byte v18, v16, v17

    .line 440
    move-object/from16 v16, v4

    move/from16 v17, v12

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v13

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move/from16 v18, v14

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x0

    :goto_1
    aput-byte v18, v16, v17

    .line 435
    move/from16 v16, v12

    move/from16 v17, v6

    const/16 v18, 0x4

    mul-int/lit8 v17, v17, 0x4

    add-int v16, v16, v17

    move/from16 v12, v16

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 440
    :cond_0
    const/16 v18, -0x1

    goto :goto_1

    .line 442
    .end local v13    # "r":B
    .end local v14    # "g":B
    .end local v15    # "b":B
    :cond_1
    return-void
.end method

.method private copy_plain([B[BIII)V
    .locals 16

    .prologue
    .line 445
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move/from16 v5, p5

    .local v5, "bpp":I
    move-object v11, v1

    array-length v11, v11

    move v6, v11

    .local v6, "l":I
    move v11, v4

    move v12, v5

    mul-int/2addr v11, v12

    move v7, v11

    .line 446
    .local v7, "stepBpp":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    move v11, v3

    move v9, v11

    .local v9, "oPos":I
    :goto_0
    move v11, v8

    move v12, v6

    if-eq v11, v12, :cond_1

    .line 447
    const/4 v11, 0x0

    move v10, v11

    .local v10, "b":I
    :goto_1
    move v11, v10

    move v12, v5

    if-eq v11, v12, :cond_0

    .line 448
    move-object v11, v2

    move v12, v9

    move v13, v10

    add-int/2addr v12, v13

    move-object v13, v1

    move v14, v8

    move v15, v10

    add-int/2addr v14, v15

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 447
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 446
    :cond_0
    move v11, v9

    move v12, v7

    add-int/2addr v11, v12

    move v9, v11

    move v11, v8

    move v12, v5

    add-int/2addr v11, v12

    move v8, v11

    goto :goto_0

    .line 451
    .end local v10    # "b":I
    :cond_1
    return-void
.end method

.method private decodePalette([BLcom/sun/javafx/iio/ImageMetadata;)Lcom/sun/javafx/iio/ImageFrame;
    .locals 19

    .prologue
    .line 587
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v1, p1

    .local v1, "srcImage":[B
    move-object/from16 v2, p2

    .local v2, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    :goto_0
    move v3, v9

    .line 588
    .local v3, "bpp":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    mul-int/2addr v9, v10

    move v10, v3

    mul-int/2addr v9, v10

    new-array v9, v9, [B

    move-object v4, v9

    .line 589
    .local v4, "newImage":[B
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    mul-int/2addr v9, v10

    move v5, v9

    .line 591
    .local v5, "l":I
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    if-eqz v9, :cond_2

    .line 592
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "j":I
    :goto_1
    move v9, v6

    move v10, v5

    if-eq v9, v10, :cond_1

    .line 593
    const/16 v9, 0xff

    move-object v10, v1

    move v11, v6

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    move v8, v9

    .line 594
    .local v8, "index":I
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 595
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 596
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 597
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x3

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 592
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 587
    .end local v3    # "bpp":I
    .end local v4    # "newImage":[B
    .end local v5    # "l":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "index":I
    :cond_0
    const/4 v9, 0x3

    goto :goto_0

    .line 592
    .line 608
    .restart local v3    # "bpp":I
    .restart local v4    # "newImage":[B
    .restart local v5    # "l":I
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_1
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    :goto_2
    move-object v6, v9

    .line 612
    .local v6, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    new-instance v9, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v6

    move-object v12, v4

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v16, v3

    mul-int v15, v15, v16

    const/16 v16, 0x0

    check-cast v16, [[B

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return-object v0

    .line 600
    .end local v6    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .end local v7    # "j":I
    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    const/4 v9, 0x0

    move v7, v9

    .restart local v7    # "j":I
    :goto_3
    move v9, v6

    move v10, v5

    if-eq v9, v10, :cond_1

    .line 601
    const/16 v9, 0xff

    move-object v10, v1

    move v11, v6

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    move v8, v9

    .line 602
    .restart local v8    # "index":I
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 603
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 604
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move v12, v8

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 600
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 608
    .end local v8    # "index":I
    :cond_3
    sget-object v9, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    goto :goto_2
.end method

.method private doAvrgFilter([B[BI)V
    .locals 12

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "pline":[B
    move v3, p3

    .local v3, "bpp":I
    move-object v6, v1

    array-length v6, v6

    move v4, v6

    .line 335
    .local v4, "l":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-eq v6, v7, :cond_0

    .line 336
    move-object v6, v1

    move v7, v5

    move-object v8, v1

    move v9, v5

    aget-byte v8, v8, v9

    move-object v9, v2

    move v10, v5

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 335
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    :cond_0
    move v6, v3

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 339
    move-object v6, v1

    move v7, v5

    move-object v8, v1

    move v9, v5

    aget-byte v8, v8, v9

    move-object v9, v1

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move-object v10, v2

    move v11, v5

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 342
    :cond_1
    return-void
.end method

.method private doFilter([B[BII)V
    .locals 9

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "pline":[B
    move v3, p3

    .local v3, "fType":I
    move v4, p4

    .local v4, "bpp":I
    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 366
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->doSubFilter([BI)V

    .line 367
    goto :goto_0

    .line 369
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->doUpFilter([B[B)V

    .line 370
    goto :goto_0

    .line 372
    :pswitch_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->doAvrgFilter([B[BI)V

    .line 373
    goto :goto_0

    .line 375
    :pswitch_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->doPaethFilter([B[BI)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doPaethFilter([B[BI)V
    .locals 14

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "pline":[B
    move/from16 v3, p3

    .local v3, "bpp":I
    move-object v6, v1

    array-length v6, v6

    move v4, v6

    .line 354
    .local v4, "l":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-eq v6, v7, :cond_0

    .line 355
    move-object v6, v1

    move v7, v5

    move-object v8, v1

    move v9, v5

    aget-byte v8, v8, v9

    move-object v9, v2

    move v10, v5

    aget-byte v9, v9, v10

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 354
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    :cond_0
    move v6, v3

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 358
    move-object v6, v1

    move v7, v5

    move-object v8, v1

    move v9, v5

    aget-byte v8, v8, v9

    move-object v9, v1

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move-object v10, v2

    move v11, v5

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move-object v11, v2

    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    .line 359
    invoke-static {v9, v10, v11}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->paethPr(III)I

    move-result v9

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 361
    :cond_1
    return-void
.end method

.method private doSubFilter([BI)V
    .locals 11

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move v2, p2

    .local v2, "bpp":I
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 321
    .local v3, "l":I
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 322
    move-object v5, v1

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-byte v7, v7, v8

    move-object v8, v1

    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    aget-byte v8, v8, v9

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method private doUpFilter([B[B)V
    .locals 10

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "pline":[B
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 328
    .local v3, "l":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 329
    move-object v5, v1

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-byte v7, v7, v8

    move-object v8, v2

    move v9, v4

    aget-byte v8, v8, v9

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method private downsample16to8([B[BIII)V
    .locals 12

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "image":[B
    move v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move/from16 v5, p5

    .local v5, "bpp":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    if-nez v6, :cond_1

    .line 415
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->downsample16to8_plain([B[BIII)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    if-nez v6, :cond_2

    .line 417
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->downsample16to8trns_gray([B[BII)V

    goto :goto_0

    .line 418
    :cond_2
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 419
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->downsample16to8trns_rgb([B[BII)V

    goto :goto_0
.end method

.method private downsample16to8_plain([B[BIII)V
    .locals 16

    .prologue
    .line 405
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move/from16 v5, p5

    .local v5, "bpp":I
    move-object v11, v1

    array-length v11, v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    move v12, v5

    div-int/2addr v11, v12

    move v12, v5

    mul-int/2addr v11, v12

    move v6, v11

    .local v6, "l":I
    move v11, v4

    move v12, v5

    mul-int/2addr v11, v12

    move v7, v11

    .line 406
    .local v7, "stepBpp":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    move v11, v3

    move v9, v11

    .local v9, "oPos":I
    :goto_0
    move v11, v8

    move v12, v6

    if-eq v11, v12, :cond_1

    .line 407
    const/4 v11, 0x0

    move v10, v11

    .local v10, "b":I
    :goto_1
    move v11, v10

    move v12, v5

    if-eq v11, v12, :cond_0

    .line 408
    move-object v11, v2

    move v12, v9

    move v13, v10

    add-int/2addr v12, v13

    move-object v13, v1

    move v14, v8

    move v15, v10

    add-int/2addr v14, v15

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    .line 407
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 406
    :cond_0
    move v11, v9

    move v12, v7

    add-int/2addr v11, v12

    move v9, v11

    move v11, v8

    move v12, v5

    add-int/2addr v11, v12

    move v8, v11

    goto :goto_0

    .line 411
    .end local v10    # "b":I
    :cond_1
    return-void
.end method

.method private downsample16to8trns_gray([B[BII)V
    .locals 14

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v5, v9

    .line 382
    .local v5, "l":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    move v9, v3

    move v7, v9

    .local v7, "oPos":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 383
    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x100

    mul-int/lit16 v9, v9, 0x100

    move-object v10, v1

    move v11, v6

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    int-to-short v9, v9

    move v8, v9

    .line 384
    .local v8, "gray16":I
    move-object v9, v2

    move v10, v7

    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x0

    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 385
    move-object v9, v2

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v8

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    :goto_1
    aput-byte v11, v9, v10

    .line 382
    move v9, v7

    move v10, v4

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    move v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    :cond_0
    const/4 v11, -0x1

    goto :goto_1

    .line 387
    .end local v8    # "gray16":I
    :cond_1
    return-void
.end method

.method private downsample16to8trns_rgb([B[BII)V
    .locals 17

    .prologue
    .line 390
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "step":I
    move-object v12, v1

    array-length v12, v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x3

    div-int/lit8 v12, v12, 0x3

    move v5, v12

    .line 391
    .local v5, "l":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    move v12, v3

    move v7, v12

    .local v7, "oPos":I
    :goto_0
    move v12, v6

    move v13, v5

    if-ge v12, v13, :cond_1

    .line 392
    move v12, v6

    const/4 v13, 0x6

    mul-int/lit8 v12, v12, 0x6

    move v8, v12

    .line 393
    .local v8, "iPos":I
    move-object v12, v1

    move v13, v8

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x100

    mul-int/lit16 v12, v12, 0x100

    move-object v13, v1

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    int-to-short v12, v12

    move v9, v12

    .line 394
    .local v9, "r16":I
    move-object v12, v1

    move v13, v8

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x100

    mul-int/lit16 v12, v12, 0x100

    move-object v13, v1

    move v14, v8

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    int-to-short v12, v12

    move v10, v12

    .line 395
    .local v10, "g16":I
    move-object v12, v1

    move v13, v8

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x100

    mul-int/lit16 v12, v12, 0x100

    move-object v13, v1

    move v14, v8

    const/4 v15, 0x5

    add-int/lit8 v14, v14, 0x5

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    int-to-short v12, v12

    move v11, v12

    .line 396
    .local v11, "b16":I
    move-object v12, v2

    move v13, v7

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move-object v14, v1

    move v15, v8

    const/16 v16, 0x0

    add-int/lit8 v15, v15, 0x0

    aget-byte v14, v14, v15

    aput-byte v14, v12, v13

    .line 397
    move-object v12, v2

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v14, v1

    move v15, v8

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-byte v14, v14, v15

    aput-byte v14, v12, v13

    .line 398
    move-object v12, v2

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move-object v14, v1

    move v15, v8

    const/16 v16, 0x4

    add-int/lit8 v15, v15, 0x4

    aget-byte v14, v14, v15

    aput-byte v14, v12, v13

    .line 399
    move-object v12, v2

    move v13, v7

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v9

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsR:I

    if-ne v14, v15, :cond_0

    move v14, v10

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    if-ne v14, v15, :cond_0

    move v14, v11

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsB:I

    if-ne v14, v15, :cond_0

    const/4 v14, 0x0

    :goto_1
    aput-byte v14, v12, v13

    .line 391
    move v12, v7

    move v13, v4

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    move v7, v12

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 399
    :cond_0
    const/4 v14, -0x1

    goto :goto_1

    .line 402
    .end local v8    # "iPos":I
    .end local v9    # "r16":I
    .end local v10    # "g16":I
    .end local v11    # "b16":I
    :cond_1
    return-void
.end method

.method private getType()Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    packed-switch v1, :pswitch_data_0

    .line 315
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 301
    :pswitch_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    :goto_0
    move-object v0, v1

    .line 313
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_1
    return-object v0

    .line 301
    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    goto :goto_0

    .line 305
    :pswitch_2
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    goto :goto_2

    .line 309
    :pswitch_3
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v0, v1

    goto :goto_1

    .line 311
    :pswitch_4
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v0, v1

    goto :goto_1

    .line 313
    :pswitch_5
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v0, v1

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private load([BLjava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "image":[B
    move-object v2, p2

    .local v2, "data":Ljava/io/InputStream;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->isInterlaced:Z

    if-eqz v4, :cond_2

    .line 576
    const/4 v4, 0x0

    move v3, v4

    .local v3, "mip":I
    :goto_0
    move v4, v3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 577
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    sget-object v5, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_x:[I

    move v6, v3

    aget v5, v5, v6

    if-le v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    sget-object v5, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_y:[I

    move v6, v3

    aget v5, v5, v6

    if-le v4, v5, :cond_0

    .line 578
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->loadMip([BLjava/io/InputStream;I)V

    .line 576
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "mip":I
    :cond_1
    :goto_1
    return-void

    .line 582
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->loadMip([BLjava/io/InputStream;I)V

    goto :goto_1
.end method

.method private loadMip([BLjava/io/InputStream;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v3, p1

    .local v3, "image":[B
    move-object/from16 v4, p2

    .local v4, "data":Ljava/io/InputStream;
    move/from16 v5, p3

    .local v5, "mip":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v18, v0

    move/from16 v19, v5

    sget-object v20, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_x:[I

    sget-object v21, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_x:[I

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->mipSize(II[I[I)I

    move-result v18

    move/from16 v6, v18

    .line 535
    .local v6, "mipWidth":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move/from16 v18, v0

    move/from16 v19, v5

    sget-object v20, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_y:[I

    sget-object v21, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_y:[I

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->mipSize(II[I[I)I

    move-result v18

    move/from16 v7, v18

    .line 537
    .local v7, "mipHeight":I
    move/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    sget-object v19, Lcom/sun/javafx/iio/png/PNGImageLoader2;->numBandsPerColorType:[I

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    move/from16 v20, v0

    aget v19, v19, v20

    mul-int v18, v18, v19

    const/16 v19, 0x7

    add-int/lit8 v18, v18, 0x7

    const/16 v19, 0x8

    div-int/lit8 v18, v18, 0x8

    move/from16 v8, v18

    .line 538
    .local v8, "scanLineSize":I
    move/from16 v18, v8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 539
    .local v9, "scanLine0":[B
    move/from16 v18, v8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 543
    .local v10, "scanLine1":[B
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bpp()I

    move-result v18

    move/from16 v11, v18

    .local v11, "resultBpp":I
    sget-object v18, Lcom/sun/javafx/iio/png/PNGImageLoader2;->numBandsPerColorType:[I

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    move/from16 v19, v0

    aget v18, v18, v19

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bytesPerColor()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v12, v18

    .line 545
    .local v12, "srcBpp":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "y":I
    :goto_0
    move/from16 v18, v13

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 546
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v14, v18

    .line 547
    .local v14, "filterByte":I
    move/from16 v18, v14

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 548
    new-instance v18, Ljava/io/EOFException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/io/EOFException;-><init>()V

    throw v18

    .line 551
    :cond_0
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/io/InputStream;->read([B)I

    move-result v18

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 552
    new-instance v18, Ljava/io/EOFException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/io/EOFException;-><init>()V

    throw v18

    .line 555
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v14

    move/from16 v22, v12

    invoke-direct/range {v18 .. v22}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->doFilter([B[BII)V

    .line 557
    move/from16 v18, v13

    move/from16 v19, v5

    sget-object v20, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_y:[I

    sget-object v21, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_y:[I

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->mipPos(II[I[I)I

    move-result v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    sget-object v19, Lcom/sun/javafx/iio/png/PNGImageLoader2;->starting_x:[I

    move/from16 v20, v5

    aget v19, v19, v20

    add-int v18, v18, v19

    move/from16 v19, v11

    mul-int v18, v18, v19

    move/from16 v15, v18

    .line 558
    .local v15, "pos":I
    sget-object v18, Lcom/sun/javafx/iio/png/PNGImageLoader2;->increment_x:[I

    move/from16 v19, v5

    aget v18, v18, v19

    move/from16 v16, v18

    .line 560
    .local v16, "step":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 561
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v11

    invoke-direct/range {v18 .. v23}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->downsample16to8([B[BIII)V

    .line 568
    :goto_1
    move-object/from16 v18, v9

    move-object/from16 v17, v18

    .line 569
    .local v17, "scanLineSwp":[B
    move-object/from16 v18, v10

    move-object/from16 v9, v18

    .line 570
    move-object/from16 v18, v17

    move-object/from16 v10, v18

    .line 545
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 562
    .end local v17    # "scanLineSwp":[B
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 563
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move/from16 v21, v15

    move/from16 v22, v6

    move/from16 v23, v16

    move/from16 v24, v11

    invoke-direct/range {v18 .. v24}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->upsampleTo8([B[BIIII)V

    goto :goto_1

    .line 565
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v11

    invoke-direct/range {v18 .. v23}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->copy([B[BIII)V

    goto :goto_1

    .line 572
    .end local v14    # "filterByte":I
    .end local v15    # "pos":I
    .end local v16    # "step":I
    :cond_4
    return-void
.end method

.method private static mipPos(II[I[I)I
    .locals 8

    .prologue
    .line 529
    move v0, p0

    .local v0, "pos":I
    move v1, p1

    .local v1, "mip":I
    move-object v2, p2

    .local v2, "start":[I
    move-object v3, p3

    .local v3, "increment":[I
    move-object v4, v2

    move v5, v1

    aget v4, v4, v5

    move v5, v0

    move-object v6, v3

    move v7, v1

    aget v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    move v0, v4

    .end local v0    # "pos":I
    return v0
.end method

.method private static mipSize(II[I[I)I
    .locals 7

    .prologue
    .line 525
    move v0, p0

    .local v0, "size":I
    move v1, p1

    .local v1, "mip":I
    move-object v2, p2

    .local v2, "start":[I
    move-object v3, p3

    .local v3, "increment":[I
    move v4, v0

    move-object v5, v2

    move v6, v1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    move-object v5, v3

    move v6, v1

    aget v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v3

    move v6, v1

    aget v5, v5, v6

    div-int/2addr v4, v5

    move v0, v4

    .end local v0    # "size":I
    return v0
.end method

.method private static paethPr(III)I
    .locals 8

    .prologue
    .line 346
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, p2

    .local v2, "c":I
    move v6, v1

    move v7, v2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v3, v6

    .line 347
    .local v3, "pa":I
    move v6, v0

    move v7, v2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v4, v6

    .line 348
    .local v4, "pb":I
    move v6, v1

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v0

    add-int/2addr v6, v7

    move v7, v2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v5, v6

    .line 349
    .local v5, "pc":I
    move v6, v3

    move v7, v4

    if-gt v6, v7, :cond_0

    move v6, v3

    move v7, v5

    if-gt v6, v7, :cond_0

    move v6, v0

    :goto_0
    move v0, v6

    .end local v0    # "a":I
    return v0

    .restart local v0    # "a":I
    :cond_0
    move v6, v4

    move v7, v5

    if-gt v6, v7, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0
.end method

.method private parsePaletteChunk(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    if-eqz v2, :cond_0

    .line 183
    move-object v2, v0

    const-string v3, "A PNG image may not contain more than one PLTE chunk.\nThe chunk wil be ignored."

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    .line 186
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 187
    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    packed-switch v2, :pswitch_data_0

    .line 200
    :goto_1
    :pswitch_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 202
    goto :goto_0

    .line 192
    :pswitch_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readPaletteChunk(I)V

    .line 193
    goto :goto_0

    .line 196
    :pswitch_2
    move-object v2, v0

    const-string v3, "A PNG gray or gray alpha image cannot have a PLTE chunk.\nThe chunk wil be ignored."

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parsePngMeta()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readChunk()[I

    move-result-object v3

    move-object v1, v3

    .line 274
    .local v1, "chunk":[I
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gez v3, :cond_0

    .line 275
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid chunk length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_0
    move-object v3, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 289
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 291
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v2, v3

    .line 292
    goto :goto_0

    .line 279
    :sswitch_0
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move v0, v3

    .line 281
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_2
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :sswitch_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2

    .line 283
    :sswitch_2
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->parsePaletteChunk(I)V

    .line 284
    goto :goto_1

    .line 286
    :sswitch_3
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->parseTransparencyChunk(I)V

    .line 287
    goto :goto_1

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x49444154 -> :sswitch_0
        0x49454e44 -> :sswitch_1
        0x504c5445 -> :sswitch_2
        0x74524e53 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseTransparencyChunk(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    packed-switch v2, :pswitch_data_0

    .line 264
    :pswitch_0
    move-object v2, v0

    const-string v3, "TransparencyChunk may not present when alpha explicitly defined"

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    .line 265
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 267
    :goto_0
    return-void

    .line 255
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readPaletteTransparency(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readGrayTransparency(I)Z

    move-result v4

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput-boolean v5, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    iput-boolean v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    .line 259
    goto :goto_0

    .line 261
    :pswitch_3
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readRgbTransparency(I)Z

    move-result v4

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput-boolean v5, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_present:Z

    iput-boolean v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    .line 262
    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private readBytes([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readBytes([BII)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return-object v0
.end method

.method private readBytes([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "offs":I
    move v3, p3

    .local v3, "size":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 153
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return-object v0
.end method

.method private readChunk()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    return-object v0
.end method

.method private readGrayTransparency(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 236
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    .line 237
    const/4 v2, 0x1

    move v0, v2

    .line 239
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private readHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readChunk()[I

    move-result-object v6

    move-object v1, v6

    .line 92
    .local v1, "hdrData":[I
    move-object v6, v1

    const/4 v7, 0x1

    aget v6, v6, v7

    const v7, 0x49484452

    if-eq v6, v7, :cond_0

    move-object v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    .line 93
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG header!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    .line 97
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    .line 99
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    if-nez v6, :cond_2

    .line 100
    :cond_1
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG image size!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    .line 104
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/16 v7, 0x10

    if-eq v6, v7, :cond_3

    .line 106
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG bit depth"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 109
    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    .line 111
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x6

    if-gt v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 112
    :cond_4
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG color type"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_5
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    if-eqz v6, :cond_6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_7

    :cond_6
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_8

    .line 119
    :cond_7
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad color type/bit depth combination!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v2, v6

    .line 123
    .local v2, "compressionMethod":B
    move v6, v2

    if-eqz v6, :cond_9

    .line 124
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG comression!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v3, v6

    .line 128
    .local v3, "filterMethod":B
    move v6, v3

    if-eqz v6, :cond_a

    .line 129
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Bad PNG filter method!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v4, v6

    .line 134
    .local v4, "interlaceMethod":B
    move v6, v4

    if-eqz v6, :cond_b

    move v6, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    .line 135
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Unknown interlace method (not 0 or 1)!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_b
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v5, v6

    .line 140
    .local v5, "crc":I
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->isInterlaced:Z

    .line 141
    return-void

    .line 140
    :cond_c
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private readPaletteChunk(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move v8, v1

    const/4 v9, 0x3

    div-int/lit8 v8, v8, 0x3

    move v2, v8

    .line 164
    .local v2, "numEntries":I
    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    shl-int/2addr v8, v9

    move v3, v8

    .line 165
    .local v3, "paletteEntries":I
    move v8, v2

    move v9, v3

    if-le v8, v9, :cond_0

    .line 166
    move-object v8, v0

    const-string v9, "PLTE chunk contains too many entries for bit depth, ignoring extras."

    invoke-virtual {v8, v9}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    .line 167
    move v8, v3

    move v2, v8

    .line 170
    :cond_0
    move-object v8, v0

    const/4 v9, 0x3

    move v10, v3

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[B

    iput-object v9, v8, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    .line 172
    move-object v8, v0

    move v9, v1

    new-array v9, v9, [B

    invoke-direct {v8, v9}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readBytes([B)[B

    move-result-object v8

    move-object v4, v8

    .line 174
    .local v4, "paletteData":[B
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "idx":I
    :goto_0
    move v8, v5

    move v9, v2

    if-eq v8, v9, :cond_2

    .line 175
    const/4 v8, 0x0

    move v7, v8

    .local v7, "k":I
    :goto_1
    move v8, v7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 176
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    move v9, v7

    aget-object v8, v8, v9

    move v9, v5

    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 175
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 179
    .end local v7    # "k":I
    :cond_2
    return-void
.end method

.method private readPaletteTransparency(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    if-nez v6, :cond_0

    .line 206
    move-object v6, v0

    const-string v7, "tRNS chunk without prior PLTE chunk, ignoring it."

    invoke-virtual {v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    .line 207
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 208
    const/4 v6, 0x0

    move v0, v6

    .line 231
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_0
    return v0

    .line 211
    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    const/4 v6, 0x4

    new-array v6, v6, [[B

    move-object v2, v6

    .line 213
    .local v2, "newPal":[[B
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    move v3, v6

    .line 216
    .local v3, "paletteLength":I
    move-object v6, v2

    const/4 v7, 0x3

    move v8, v3

    new-array v8, v8, [B

    aput-object v8, v6, v7

    .line 218
    move v6, v1

    move v7, v3

    if-ge v6, v7, :cond_1

    move v6, v1

    :goto_1
    move v4, v6

    .line 219
    .local v4, "nRead":I
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->readBytes([BII)[B

    move-result-object v6

    .line 221
    move v6, v4

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 222
    move-object v6, v2

    const/4 v7, 0x3

    aget-object v6, v6, v7

    move v7, v5

    const/4 v8, -0x1

    aput-byte v8, v6, v7

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 218
    .end local v4    # "nRead":I
    .end local v5    # "i":I
    :cond_1
    move v6, v3

    goto :goto_1

    .line 225
    .restart local v4    # "nRead":I
    .restart local v5    # "i":I
    :cond_2
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_3

    .line 226
    move-object v6, v0

    move v7, v1

    move v8, v4

    sub-int/2addr v7, v8

    invoke-direct {v6, v7}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->skip(I)V

    .line 229
    :cond_3
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    .line 231
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method private readRgbTransparency(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "chunkLength":I
    move v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 244
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsR:I

    .line 245
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    .line 246
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsB:I

    .line 247
    const/4 v2, 0x1

    move v0, v2

    .line 249
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private skip(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move v1, p1

    .local v1, "n":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 158
    new-instance v2, Ljava/io/EOFException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 160
    :cond_0
    return-void
.end method

.method private upsampleTo8([B[BIIII)V
    .locals 13

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object v1, p1

    .local v1, "line":[B
    move-object v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "step":I
    move/from16 v6, p6

    .local v6, "bpp":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 511
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->upsampleTo8Palette([B[BIII)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    move v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 513
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->upsampleTo8Gray([B[BIII)V

    goto :goto_0

    .line 514
    :cond_2
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/iio/png/PNGImageLoader2;->tRNS_GRAY_RGB:Z

    if-eqz v7, :cond_0

    move v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 515
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->upsampleTo8GrayTrns([B[BIII)V

    goto :goto_0
.end method

.method private upsampleTo8Gray([B[BIII)V
    .locals 19

    .prologue
    .line 481
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v2, p1

    .local v2, "line":[B
    move-object/from16 v3, p2

    .local v3, "image":[B
    move/from16 v4, p3

    .local v4, "pos":I
    move/from16 v5, p4

    .local v5, "w":I
    move/from16 v6, p5

    .local v6, "step":I
    const/16 v15, 0x8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v16, v0

    div-int v15, v15, v16

    move v7, v15

    .line 482
    .local v7, "samplesInByte":I
    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v16, v0

    shl-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move v8, v15

    .local v8, "maxV":I
    move v15, v8

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v9, v15

    .line 483
    .local v9, "hmaxV":I
    const/4 v15, 0x0

    move v10, v15

    .local v10, "i":I
    const/4 v15, 0x0

    move v11, v15

    .local v11, "k":I
    :goto_0
    move v15, v10

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 484
    move v15, v5

    move/from16 v16, v10

    sub-int v15, v15, v16

    move/from16 v16, v7

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move v15, v5

    move/from16 v16, v10

    sub-int v15, v15, v16

    :goto_1
    move v12, v15

    .line 485
    .local v12, "p":I
    move-object v15, v2

    move/from16 v16, v11

    aget-byte v15, v15, v16

    move/from16 v16, v7

    move/from16 v17, v12

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    shr-int v15, v15, v16

    move v13, v15

    .line 486
    .local v13, "in":I
    move v15, v12

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move v14, v15

    .local v14, "pp":I
    :goto_2
    move v15, v14

    if-ltz v15, :cond_1

    .line 487
    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v10

    move/from16 v18, v14

    add-int v17, v17, v18

    move/from16 v18, v6

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v17, v13

    move/from16 v18, v8

    and-int v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v18, v8

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    .line 488
    move v15, v13

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v16, v0

    shr-int v15, v15, v16

    move v13, v15

    .line 486
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 484
    .end local v12    # "p":I
    .end local v13    # "in":I
    .end local v14    # "pp":I
    :cond_0
    move v15, v7

    goto :goto_1

    .line 483
    .restart local v12    # "p":I
    .restart local v13    # "in":I
    .restart local v14    # "pp":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v15, v10

    move/from16 v16, v7

    add-int v15, v15, v16

    move v10, v15

    goto :goto_0

    .line 491
    .end local v12    # "p":I
    .end local v13    # "in":I
    .end local v14    # "pp":I
    :cond_2
    return-void
.end method

.method private upsampleTo8GrayTrns([B[BIII)V
    .locals 22

    .prologue
    .line 494
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v3, p1

    .local v3, "line":[B
    move-object/from16 v4, p2

    .local v4, "image":[B
    move/from16 v5, p3

    .local v5, "pos":I
    move/from16 v6, p4

    .local v6, "w":I
    move/from16 v7, p5

    .local v7, "step":I
    const/16 v18, 0x8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v8, v18

    .line 495
    .local v8, "samplesInByte":I
    const/16 v18, 0x1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v19, v0

    shl-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v9, v18

    .local v9, "maxV":I
    move/from16 v18, v9

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v10, v18

    .line 496
    .local v10, "hmaxV":I
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "k":I
    :goto_0
    move/from16 v18, v11

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 497
    move/from16 v18, v6

    move/from16 v19, v11

    sub-int v18, v18, v19

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move/from16 v18, v6

    move/from16 v19, v11

    sub-int v18, v18, v19

    :goto_1
    move/from16 v13, v18

    .line 498
    .local v13, "p":I
    move-object/from16 v18, v3

    move/from16 v19, v12

    aget-byte v18, v18, v19

    move/from16 v19, v8

    move/from16 v20, v13

    sub-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    shr-int v18, v18, v19

    move/from16 v14, v18

    .line 499
    .local v14, "in":I
    move/from16 v18, v13

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v15, v18

    .local v15, "pp":I
    :goto_2
    move/from16 v18, v15

    if-ltz v18, :cond_2

    .line 500
    move/from16 v18, v5

    move/from16 v19, v11

    move/from16 v20, v15

    add-int v19, v19, v20

    move/from16 v20, v7

    mul-int v19, v19, v20

    const/16 v20, 0x2

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v16, v18

    .line 501
    .local v16, "idx":I
    move/from16 v18, v14

    move/from16 v19, v9

    and-int v18, v18, v19

    move/from16 v17, v18

    .line 502
    .local v17, "value":I
    move-object/from16 v18, v4

    move/from16 v19, v16

    move/from16 v20, v17

    const/16 v21, 0xff

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v21, v10

    add-int v20, v20, v21

    move/from16 v21, v9

    div-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 503
    move-object/from16 v18, v4

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->trnsG:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x0

    :goto_3
    aput-byte v20, v18, v19

    .line 504
    move/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    move/from16 v19, v0

    shr-int v18, v18, v19

    move/from16 v14, v18

    .line 499
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 497
    .end local v13    # "p":I
    .end local v14    # "in":I
    .end local v15    # "pp":I
    .end local v16    # "idx":I
    .end local v17    # "value":I
    :cond_0
    move/from16 v18, v8

    goto/16 :goto_1

    .line 503
    .restart local v13    # "p":I
    .restart local v14    # "in":I
    .restart local v15    # "pp":I
    .restart local v16    # "idx":I
    .restart local v17    # "value":I
    :cond_1
    const/16 v20, -0x1

    goto :goto_3

    .line 496
    .end local v16    # "idx":I
    .end local v17    # "value":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v11

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v11, v18

    goto/16 :goto_0

    .line 507
    .end local v13    # "p":I
    .end local v14    # "in":I
    .end local v15    # "pp":I
    :cond_3
    return-void
.end method

.method private upsampleTo8Palette([B[BIII)V
    .locals 17

    .prologue
    .line 468
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move-object/from16 v1, p1

    .local v1, "line":[B
    move-object/from16 v2, p2

    .local v2, "image":[B
    move/from16 v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "step":I
    const/16 v13, 0x8

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    div-int/2addr v13, v14

    move v6, v13

    .line 469
    .local v6, "samplesInByte":I
    const/4 v13, 0x1

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    shl-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    .line 470
    .local v7, "maxV":I
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i":I
    const/4 v13, 0x0

    move v9, v13

    .local v9, "k":I
    :goto_0
    move v13, v8

    move v14, v4

    if-ge v13, v14, :cond_2

    .line 471
    move v13, v4

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v6

    if-ge v13, v14, :cond_0

    move v13, v4

    move v14, v8

    sub-int/2addr v13, v14

    :goto_1
    move v10, v13

    .line 472
    .local v10, "p":I
    move-object v13, v1

    move v14, v9

    aget-byte v13, v13, v14

    move v14, v6

    move v15, v10

    sub-int/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    mul-int/2addr v14, v15

    shr-int/2addr v13, v14

    move v11, v13

    .line 473
    .local v11, "in":I
    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v12, v13

    .local v12, "pp":I
    :goto_2
    move v13, v12

    if-ltz v13, :cond_1

    .line 474
    move-object v13, v2

    move v14, v3

    move v15, v8

    move/from16 v16, v12

    add-int v15, v15, v16

    move/from16 v16, v5

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v15, v11

    move/from16 v16, v7

    and-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 475
    move v13, v11

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bitDepth:I

    shr-int/2addr v13, v14

    move v11, v13

    .line 473
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 471
    .end local v10    # "p":I
    .end local v11    # "in":I
    .end local v12    # "pp":I
    :cond_0
    move v13, v6

    goto :goto_1

    .line 470
    .restart local v10    # "p":I
    .restart local v11    # "in":I
    .restart local v12    # "pp":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v13, v8

    move v14, v6

    add-int/2addr v13, v14

    move v8, v13

    goto :goto_0

    .line 478
    .end local v10    # "p":I
    .end local v11    # "in":I
    .end local v12    # "pp":I
    :cond_2
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    move/from16 v3, p1

    .local v3, "imageIndex":I
    move/from16 v4, p2

    .local v4, "rWidth":I
    move/from16 v5, p3

    .local v5, "rHeight":I
    move/from16 v6, p4

    .local v6, "preserveAspectRatio":Z
    move/from16 v7, p5

    .local v7, "smooth":Z
    move/from16 v18, v3

    if-eqz v18, :cond_0

    .line 633
    const/16 v18, 0x0

    move-object/from16 v2, v18

    .line 676
    .end local v2    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :goto_0
    return-object v2

    .line 636
    .restart local v2    # "this":Lcom/sun/javafx/iio/png/PNGImageLoader2;
    :cond_0
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->parsePngMeta()I

    move-result v18

    move/from16 v8, v18

    .line 638
    .local v8, "dataSize":I
    move/from16 v18, v8

    if-nez v18, :cond_1

    .line 639
    move-object/from16 v18, v2

    const-string v19, "No image data in PNG"

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->emitWarning(Ljava/lang/String;)V

    .line 640
    const/16 v18, 0x0

    move-object/from16 v2, v18

    goto :goto_0

    .line 643
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v18 .. v22}, Lcom/sun/javafx/iio/common/ImageTools;->computeDimensions(IIIIZ)[I

    move-result-object v18

    move-object/from16 v9, v18

    .line 644
    .local v9, "outWH":[I
    move-object/from16 v18, v9

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v4, v18

    .line 645
    move-object/from16 v18, v9

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v5, v18

    .line 647
    new-instance v18, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v4

    .line 648
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move/from16 v28, v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v19 .. v31}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v10, v18

    .line 649
    .local v10, "metaData":Lcom/sun/javafx/iio/ImageMetadata;
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 651
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->bpp()I

    move-result v18

    move/from16 v11, v18

    .line 652
    .local v11, "bpp":I
    move/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v12, v18

    .line 654
    .local v12, "bb":Ljava/nio/ByteBuffer;
    new-instance v18, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->stream:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    move/from16 v21, v8

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;-><init>(Ljava/io/DataInputStream;I)V

    move-object/from16 v13, v18

    .line 655
    .local v13, "iDat":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    new-instance v18, Ljava/util/zip/Inflater;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    invoke-direct/range {v19 .. v19}, Ljava/util/zip/Inflater;-><init>()V

    move-object/from16 v14, v18

    .line 656
    .local v14, "inf":Ljava/util/zip/Inflater;
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    new-instance v20, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-direct/range {v21 .. v23}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v15, v18

    .line 659
    .local v15, "data":Ljava/io/InputStream;
    move-object/from16 v18, v2

    move-object/from16 v19, v12

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v20, v15

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->load([BLjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    move-object/from16 v18, v14

    if-eqz v18, :cond_2

    .line 664
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/Inflater;->end()V

    .line 668
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->colorType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    .line 669
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v20, v10

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->decodePalette([BLcom/sun/javafx/iio/ImageMetadata;)Lcom/sun/javafx/iio/ImageFrame;

    move-result-object v18

    .line 670
    :goto_1
    move-object/from16 v16, v18

    .line 672
    .local v16, "imgPNG":Lcom/sun/javafx/iio/ImageFrame;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 673
    :cond_3
    move-object/from16 v18, v16

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/iio/common/ImageTools;->scaleImageFrame(Lcom/sun/javafx/iio/ImageFrame;IIZ)Lcom/sun/javafx/iio/ImageFrame;

    move-result-object v18

    move-object/from16 v16, v18

    .line 676
    :cond_4
    move-object/from16 v18, v16

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 660
    .end local v16    # "imgPNG":Lcom/sun/javafx/iio/ImageFrame;
    :catch_0
    move-exception v18

    move-object/from16 v16, v18

    .line 661
    .local v16, "e":Ljava/io/IOException;
    move-object/from16 v18, v16

    :try_start_1
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v14

    if-eqz v18, :cond_5

    .line 664
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/Inflater;->end()V

    :cond_5
    move-object/from16 v18, v17

    throw v18

    .line 669
    :cond_6
    new-instance v18, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    move-object/from16 v20, v2

    .line 670
    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/iio/png/PNGImageLoader2;->getType()Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v20

    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->height:I

    move/from16 v23, v0

    move/from16 v24, v11

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->width:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/iio/png/PNGImageLoader2;->palette:[[B

    move-object/from16 v25, v0

    move-object/from16 v26, v10

    invoke-direct/range {v19 .. v26}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    goto/16 :goto_1
.end method

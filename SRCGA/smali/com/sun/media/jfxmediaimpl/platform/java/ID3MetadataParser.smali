.class final Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
.super Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;
.source "ID3MetadataParser.java"


# static fields
.field private static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field private static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final CHARSET_UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final ID3_VERSION_MAX:I = 0x4

.field private static final ID3_VERSION_MIN:I = 0x2


# instance fields
.field private COMMCount:I

.field private TXXXCount:I

.field private unsynchronized:Z

.field private version:I


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/MetadataParserImpl;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->COMMCount:I

    .line 47
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->TXXXCount:I

    .line 48
    move-object v2, v0

    const/4 v3, 0x3

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    .line 53
    return-void
.end method

.method private getEncoding()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getNextByte()B

    move-result v2

    move v1, v2

    .line 257
    .local v1, "encodingType":B
    move v2, v1

    if-nez v2, :cond_0

    .line 258
    const-string v2, "ISO-8859-1"

    move-object v0, v2

    .line 264
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 260
    const-string v2, "UTF-16"

    move-object v0, v2

    goto :goto_0

    .line 261
    :cond_1
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 262
    const-string v2, "UTF-16BE"

    move-object v0, v2

    goto :goto_0

    .line 263
    :cond_2
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 264
    const-string v2, "UTF-8"

    move-object v0, v2

    goto :goto_0

    .line 266
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private getFrameSize()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v5, v0

    iget v5, v5, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 243
    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v5

    move-object v1, v5

    .line 244
    .local v1, "buf":[B
    const/4 v5, 0x0

    move v2, v5

    .line 245
    .local v2, "size":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    const/16 v5, 0x15

    move v4, v5

    .local v4, "shift":I
    :goto_0
    move v5, v3

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 246
    move v5, v2

    move-object v6, v1

    move v7, v3

    aget-byte v6, v6, v7

    const/16 v7, 0x7f

    and-int/lit8 v6, v6, 0x7f

    move v7, v4

    shl-int/2addr v6, v7

    add-int/2addr v5, v6

    move v2, v5

    .line 247
    add-int/lit8 v4, v4, -0x7

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    move v5, v2

    move v0, v5

    .line 251
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    .end local v1    # "buf":[B
    .end local v2    # "size":I
    .end local v3    # "i":I
    .end local v4    # "shift":I
    :goto_1
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getInteger()I

    move-result v5

    move v0, v5

    goto :goto_1
.end method

.method private getImageFromAPIC([B)[B
    .locals 13

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "data":[B
    const/4 v9, 0x0

    move v2, v9

    .line 366
    .local v2, "isImageJPEG":Z
    const/4 v9, 0x0

    move v3, v9

    .line 369
    .local v3, "isImagePNG":Z
    move-object v9, v1

    array-length v9, v9

    const/16 v10, 0xa

    add-int/lit8 v9, v9, -0xa

    move v4, v9

    .line 370
    .local v4, "maxIndex":I
    const/4 v9, 0x0

    move v5, v9

    .line 371
    .local v5, "offset":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "j":I
    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_0

    .line 372
    move-object v9, v1

    move v10, v6

    aget-byte v9, v9, v10

    const/16 v10, 0x69

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0x61

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    aget-byte v9, v9, v10

    const/16 v10, 0x67

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    const/16 v10, 0x65

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x5

    add-int/lit8 v10, v10, 0x5

    aget-byte v9, v9, v10

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_3

    .line 379
    add-int/lit8 v6, v6, 0x6

    .line 382
    move-object v9, v1

    move v10, v6

    aget-byte v9, v9, v10

    const/16 v10, 0x6a

    if-ne v9, v10, :cond_2

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0x70

    if-ne v9, v10, :cond_2

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0x65

    if-ne v9, v10, :cond_2

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    aget-byte v9, v9, v10

    const/16 v10, 0x67

    if-ne v9, v10, :cond_2

    .line 387
    const/4 v9, 0x1

    move v2, v9

    .line 388
    move v9, v6

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    move v5, v9

    .line 402
    :cond_0
    :goto_1
    move v9, v2

    if-eqz v9, :cond_5

    .line 404
    const/4 v9, 0x0

    move v6, v9

    .line 405
    .local v6, "isSignatureFound":Z
    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    .line 407
    .local v7, "upperBound":I
    move v9, v5

    move v8, v9

    .local v8, "j":I
    :goto_2
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_1

    .line 409
    const/4 v9, -0x1

    move-object v10, v1

    move v11, v8

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_4

    const/16 v9, -0x28

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_4

    .line 411
    const/4 v9, 0x1

    move v6, v9

    .line 412
    move v9, v8

    move v5, v9

    .line 417
    :cond_1
    move v9, v6

    if-eqz v9, :cond_5

    .line 419
    move-object v9, v1

    move v10, v5

    move-object v11, v1

    array-length v11, v11

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v0, v9

    .line 451
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    .end local v6    # "isSignatureFound":Z
    .end local v7    # "upperBound":I
    .end local v8    # "j":I
    :goto_3
    return-object v0

    .line 391
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    .local v6, "j":I
    :cond_2
    move-object v9, v1

    move v10, v6

    aget-byte v9, v9, v10

    const/16 v10, 0x70

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0x67

    if-ne v9, v10, :cond_3

    .line 395
    const/4 v9, 0x1

    move v3, v9

    .line 396
    move v9, v6

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v5, v9

    .line 397
    goto :goto_1

    .line 371
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 407
    .local v6, "isSignatureFound":Z
    .restart local v7    # "upperBound":I
    .restart local v8    # "j":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 423
    .end local v6    # "isSignatureFound":Z
    .end local v7    # "upperBound":I
    .end local v8    # "j":I
    :cond_5
    move v9, v3

    if-eqz v9, :cond_8

    .line 425
    const/4 v9, 0x0

    move v6, v9

    .line 426
    .restart local v6    # "isSignatureFound":Z
    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x7

    add-int/lit8 v9, v9, -0x7

    move v7, v9

    .line 428
    .restart local v7    # "upperBound":I
    move v9, v5

    move v8, v9

    .restart local v8    # "j":I
    :goto_4
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_6

    .line 430
    const/16 v9, -0x77

    move-object v10, v1

    move v11, v8

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0x50

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0x4e

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0x47

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0xd

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0xa

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x5

    add-int/lit8 v11, v11, 0x5

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0x1a

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x6

    add-int/lit8 v11, v11, 0x6

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    const/16 v9, 0xa

    move-object v10, v1

    move v11, v8

    const/4 v12, 0x7

    add-int/lit8 v11, v11, 0x7

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_7

    .line 440
    const/4 v9, 0x1

    move v6, v9

    .line 441
    move v9, v8

    move v5, v9

    .line 446
    :cond_6
    move v9, v6

    if-eqz v9, :cond_8

    .line 448
    move-object v9, v1

    move v10, v5

    move-object v11, v1

    array-length v11, v11

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_3

    .line 428
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 451
    .end local v6    # "isSignatureFound":Z
    .end local v7    # "upperBound":I
    .end local v8    # "j":I
    :cond_8
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_3
.end method

.method private getImageFromPIC([B)[B
    .locals 11

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "data":[B
    const/4 v4, 0x5

    move v2, v4

    .line 339
    .local v2, "imgOffset":I
    :goto_0
    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_0

    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 344
    const/4 v4, 0x0

    move-object v0, v4

    .line 361
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :goto_1
    return-object v0

    .line 347
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :cond_1
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x1

    const/4 v8, 0x3

    const-string v9, "ISO-8859-1"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v4

    .line 348
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    const/4 v4, 0x1

    const-string v5, "ID3MetadataParser"

    const-string v6, "getImageFromPIC"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PIC type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_2
    move-object v4, v3

    const-string v5, "PNG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    const-string v5, "JPG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    :cond_3
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    array-length v6, v6

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 357
    :cond_4
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 358
    const/4 v4, 0x3

    const-string v5, "ID3MetadataParser"

    const-string v6, "getImageFromPIC"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported picture type found \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_1
.end method

.method private getTagFromFrameID(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "frameID":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "TPE2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "TP2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "album artist"

    aput-object v5, v3, v4

    move-object v0, v2

    .line 323
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :goto_0
    return-object v0

    .line 299
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :cond_1
    move-object v2, v1

    const-string v3, "TALB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string v3, "TAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "album"

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0

    .line 301
    :cond_3
    move-object v2, v1

    const-string v3, "TPE1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    const-string v3, "TP1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 302
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "artist"

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0

    .line 303
    :cond_5
    move-object v2, v1

    const-string v3, "COMM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v1

    const-string v3, "COM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "comment"

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0

    .line 305
    :cond_7
    move-object v2, v1

    const-string v3, "TCOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v1

    const-string v3, "TCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 306
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "composer"

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0

    .line 307
    :cond_9
    move-object v2, v1

    const-string v3, "TLEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v1

    const-string v3, "TLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 308
    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 309
    :cond_b
    move-object v2, v1

    const-string v3, "TCON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object v2, v1

    const-string v3, "TCO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 310
    :cond_c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "genre"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 311
    :cond_d
    move-object v2, v1

    const-string v3, "TIT2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v1

    const-string v3, "TT2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 312
    :cond_e
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 313
    :cond_f
    move-object v2, v1

    const-string v3, "TRCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v1

    const-string v3, "TRK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 314
    :cond_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "track number"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "track count"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 315
    :cond_11
    move-object v2, v1

    const-string v3, "TPOS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v2, v1

    const-string v3, "TPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 316
    :cond_12
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "disc number"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "disc count"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 317
    :cond_13
    move-object v2, v1

    const-string v3, "TYER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object v2, v1

    const-string v3, "TDRC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 318
    :cond_14
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "year"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 319
    :cond_15
    move-object v2, v1

    const-string v3, "TXX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object v2, v1

    const-string v3, "TXXX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 320
    :cond_16
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "text"

    aput-object v5, v3, v4

    move-object v0, v2

    goto/16 :goto_0

    .line 323
    :cond_17
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method private isTwoByteEncoding(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 274
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :goto_0
    return v0

    .line 273
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :cond_1
    move-object v2, v1

    const-string v3, "UTF-16"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string v3, "UTF-16BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 276
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private unsynchronizeBuffer([B)[B
    .locals 10

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    move-object v1, p1

    .local v1, "data":[B
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [B

    move-object v2, v5

    .line 456
    .local v2, "udata":[B
    const/4 v5, 0x0

    move v3, v5

    .line 458
    .local v3, "udatalen":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 459
    move-object v5, v1

    move v6, v4

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v1

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v1

    move v6, v4

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    if-nez v5, :cond_2

    move-object v5, v1

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    const/16 v6, 0xe0

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_2

    .line 461
    :cond_1
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    move v8, v4

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 462
    add-int/lit8 v3, v3, 0x1

    .line 463
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 464
    add-int/lit8 v3, v3, 0x1

    .line 465
    add-int/lit8 v4, v4, 0x2

    .line 458
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_2
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    move v8, v4

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 472
    :cond_3
    move-object v5, v2

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    return-object v0
.end method


# virtual methods
.method protected parse()V
    .locals 25

    .prologue
    .line 58
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;
    :try_start_0
    const-string v19, "ISO-8859-1"

    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 59
    new-instance v19, Ljava/nio/charset/UnsupportedCharsetException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "ISO-8859-1"

    invoke-direct/range {v20 .. v21}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catch_0
    move-exception v19

    move-object/from16 v3, v19

    .line 227
    .local v3, "ex":Ljava/lang/Exception;
    const/16 v19, 0x3

    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 228
    const/16 v19, 0x3

    const-string v20, "ID3MetadataParser"

    const-string v21, "parse"

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v24, v22

    move-object/from16 v22, v24

    move-object/from16 v23, v24

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception while processing ID3v2 metadata: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 233
    move-object/from16 v19, v2

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->setParseRawMetadata(Z)V

    .line 234
    move-object/from16 v19, v2

    const-string v20, "ID3"

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 235
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->disposeRawMetadata()V

    .line 237
    :cond_1
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->done()V

    .line 238
    .line 239
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 75
    :cond_2
    move-object/from16 v19, v2

    const/16 v20, 0xa

    :try_start_2
    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v3, v19

    .line 76
    .local v3, "buf":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/16 v21, 0x3

    aget-byte v20, v20, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    .line 77
    move-object/from16 v19, v3

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    const/16 v20, 0x49

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v3

    const/16 v20, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0x44

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v3

    const/16 v20, 0x2

    aget-byte v19, v19, v20

    const/16 v20, 0x33

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    .line 79
    move-object/from16 v19, v3

    const/16 v20, 0x5

    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v4, v19

    .line 80
    .local v4, "flags":I
    move/from16 v19, v4

    const/16 v20, 0x80

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 81
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    .line 84
    :cond_3
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 85
    .local v5, "tagSize":I
    const/16 v19, 0x6

    move/from16 v6, v19

    .local v6, "i":I
    const/16 v19, 0x15

    move/from16 v7, v19

    .local v7, "shift":I
    :goto_1
    move/from16 v19, v6

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 86
    move/from16 v19, v5

    move-object/from16 v20, v3

    move/from16 v21, v6

    aget-byte v20, v20, v21

    const/16 v21, 0x7f

    and-int/lit8 v20, v20, 0x7f

    move/from16 v21, v7

    shl-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v5, v19

    .line 87
    add-int/lit8 v7, v7, -0x7

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 90
    :cond_4
    move-object/from16 v19, v2

    move/from16 v20, v5

    const/16 v21, 0xa

    add-int/lit8 v20, v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->startRawMetadata(I)V

    .line 91
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/16 v21, 0x0

    const/16 v22, 0xa

    invoke-virtual/range {v19 .. v22}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->stuffRawMetadata([BII)V

    .line 92
    move-object/from16 v19, v2

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->readRawMetadata(I)V

    .line 93
    move-object/from16 v19, v2

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->setParseRawMetadata(Z)V

    .line 94
    move-object/from16 v19, v2

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->skipBytes(I)V

    .line 96
    .end local v6    # "i":I
    .end local v7    # "shift":I
    :goto_2
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getStreamPosition()I

    move-result v19

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 100
    const/16 v19, 0x2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->version:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 102
    move-object/from16 v19, v2

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v7, v19

    .line 103
    .local v7, "idBytes":[B
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getU24()I

    move-result v19

    move/from16 v6, v19

    .line 110
    .local v6, "frameSize":I
    :goto_3
    const/16 v19, 0x0

    move-object/from16 v20, v7

    const/16 v21, 0x0

    aget-byte v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 112
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 113
    const/16 v19, 0x1

    const-string v20, "ID3MetadataParser"

    const-string v21, "parse"

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v24, v22

    move-object/from16 v22, v24

    move-object/from16 v23, v24

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ID3 parser: zero padding detected at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    .line 115
    invoke-virtual/range {v23 .. v23}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getStreamPosition()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", terminating"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 113
    invoke-static/range {v19 .. v22}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .end local v4    # "flags":I
    .end local v5    # "tagSize":I
    .end local v6    # "frameSize":I
    .end local v7    # "idBytes":[B
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 233
    move-object/from16 v19, v2

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->setParseRawMetadata(Z)V

    .line 234
    move-object/from16 v19, v2

    const-string v20, "ID3"

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 235
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->disposeRawMetadata()V

    .line 237
    :cond_6
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->done()V

    .line 238
    goto/16 :goto_0

    .line 105
    .restart local v4    # "flags":I
    .restart local v5    # "tagSize":I
    :cond_7
    move-object/from16 v19, v2

    const/16 v20, 0x4

    :try_start_3
    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v7, v19

    .line 106
    .restart local v7    # "idBytes":[B
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getFrameSize()I

    move-result v19

    move/from16 v6, v19

    .line 107
    .restart local v6    # "frameSize":I
    move-object/from16 v19, v2

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->skipBytes(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 232
    .end local v3    # "buf":[B
    .end local v4    # "flags":I
    .end local v5    # "tagSize":I
    .end local v6    # "frameSize":I
    .end local v7    # "idBytes":[B
    :catchall_0
    move-exception v19

    move-object/from16 v18, v19

    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->rawMetaBlob:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 233
    move-object/from16 v19, v2

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->setParseRawMetadata(Z)V

    .line 234
    move-object/from16 v19, v2

    const-string v20, "ID3"

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addRawMetadata(Ljava/lang/String;)V

    .line 235
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->disposeRawMetadata()V

    .line 237
    :cond_8
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->done()V

    move-object/from16 v19, v18

    throw v19

    .line 120
    .restart local v3    # "buf":[B
    .restart local v4    # "flags":I
    .restart local v5    # "tagSize":I
    .restart local v6    # "frameSize":I
    .restart local v7    # "idBytes":[B
    :cond_9
    :try_start_4
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v7

    const-string v22, "ISO-8859-1"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v8, v19

    .line 122
    .local v8, "frameID":Ljava/lang/String;
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 123
    const/16 v19, 0x1

    const-string v20, "ID3MetadataParser"

    const-string v21, "parse"

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v24, v22

    move-object/from16 v22, v24

    move-object/from16 v23, v24

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    .line 124
    invoke-virtual/range {v23 .. v23}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getStreamPosition()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\\"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": frame ID "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", size "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 123
    invoke-static/range {v19 .. v22}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_a
    move-object/from16 v19, v8

    const-string v20, "APIC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v19, v8

    const-string v20, "PIC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 128
    :cond_b
    move-object/from16 v19, v2

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v9, v19

    .line 129
    .local v9, "data":[B
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 130
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronizeBuffer([B)[B

    move-result-object v19

    move-object/from16 v9, v19

    .line 133
    :cond_c
    move-object/from16 v19, v8

    const-string v20, "PIC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getImageFromPIC([B)[B

    move-result-object v19

    :goto_4
    move-object/from16 v10, v19

    .line 135
    .local v10, "image":[B
    move-object/from16 v19, v10

    if-eqz v19, :cond_d

    .line 136
    move-object/from16 v19, v2

    const-string v20, "image"

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 222
    .end local v9    # "data":[B
    .end local v10    # "image":[B
    :cond_d
    :goto_5
    goto/16 :goto_2

    .line 133
    .restart local v9    # "data":[B
    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getImageFromAPIC([B)[B

    move-result-object v19

    goto :goto_4

    .line 138
    .end local v9    # "data":[B
    :cond_f
    move-object/from16 v19, v8

    const-string v20, "T"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v19, v8

    const-string v20, "TXXX"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 139
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getEncoding()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 140
    .local v9, "encoding":Ljava/lang/String;
    move-object/from16 v19, v2

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 141
    .local v10, "data":[B
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 142
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronizeBuffer([B)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 144
    :cond_10
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v10

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v11, v19

    .line 145
    .local v11, "value":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getTagFromFrameID(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 146
    .local v12, "tag":[Ljava/lang/String;
    move-object/from16 v19, v12

    if-eqz v19, :cond_12

    .line 147
    const/16 v19, 0x0

    move/from16 v13, v19

    .local v13, "i":I
    :goto_6
    move/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 148
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v21, v11

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->convertValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .line 149
    .local v14, "tagValue":Ljava/lang/Object;
    move-object/from16 v19, v14

    if-eqz v19, :cond_11

    .line 150
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 154
    .end local v13    # "i":I
    .end local v14    # "tagValue":Ljava/lang/Object;
    :cond_12
    goto/16 :goto_5

    .end local v9    # "encoding":Ljava/lang/String;
    .end local v10    # "data":[B
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "tag":[Ljava/lang/String;
    :cond_13
    move-object/from16 v19, v8

    const-string v20, "COMM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    move-object/from16 v19, v8

    const-string v20, "COM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 155
    :cond_14
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getEncoding()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 157
    .restart local v9    # "encoding":Ljava/lang/String;
    move-object/from16 v19, v2

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 158
    .restart local v10    # "data":[B
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 159
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronizeBuffer([B)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 161
    :cond_15
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v10

    const-string v22, "ISO-8859-1"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v11, v19

    .line 163
    .local v11, "language":Ljava/lang/String;
    move-object/from16 v19, v2

    move/from16 v20, v6

    const/16 v21, 0x4

    add-int/lit8 v20, v20, -0x4

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 164
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 165
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronizeBuffer([B)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 167
    :cond_16
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v10

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v12, v19

    .line 168
    .local v12, "value":Ljava/lang/String;
    move-object/from16 v19, v12

    if-eqz v19, :cond_1a

    .line 169
    move-object/from16 v19, v12

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v13, v19

    .line 170
    .local v13, "index":I
    const-string v19, ""

    move-object/from16 v14, v19

    .line 172
    .local v14, "content":Ljava/lang/String;
    move/from16 v19, v13

    if-nez v19, :cond_18

    .line 173
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->isTwoByteEncoding(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 174
    move-object/from16 v19, v12

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 186
    .local v15, "comment":Ljava/lang/String;
    :goto_7
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getTagFromFrameID(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 187
    .local v16, "tag":[Ljava/lang/String;
    move-object/from16 v19, v16

    if-eqz v19, :cond_1a

    .line 188
    const/16 v19, 0x0

    move/from16 v17, v19

    .local v17, "i":I
    :goto_8
    move/from16 v19, v17

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 189
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v16

    move/from16 v22, v17

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->COMMCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    move-object/from16 v19, v2

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->COMMCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->COMMCount:I

    .line 188
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 176
    .end local v15    # "comment":Ljava/lang/String;
    .end local v16    # "tag":[Ljava/lang/String;
    .end local v17    # "i":I
    :cond_17
    move-object/from16 v19, v12

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .restart local v15    # "comment":Ljava/lang/String;
    goto/16 :goto_7

    .line 179
    .end local v15    # "comment":Ljava/lang/String;
    :cond_18
    move-object/from16 v19, v12

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 180
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->isTwoByteEncoding(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 181
    move-object/from16 v19, v12

    move/from16 v20, v13

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .restart local v15    # "comment":Ljava/lang/String;
    goto/16 :goto_7

    .line 183
    .end local v15    # "comment":Ljava/lang/String;
    :cond_19
    move-object/from16 v19, v12

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .restart local v15    # "comment":Ljava/lang/String;
    goto/16 :goto_7

    .line 194
    .end local v13    # "index":I
    .end local v14    # "content":Ljava/lang/String;
    .end local v15    # "comment":Ljava/lang/String;
    :cond_1a
    goto/16 :goto_5

    .end local v9    # "encoding":Ljava/lang/String;
    .end local v10    # "data":[B
    .end local v11    # "language":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_1b
    move-object/from16 v19, v8

    const-string v20, "TXX"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    move-object/from16 v19, v8

    const-string v20, "TXXX"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 195
    :cond_1c
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getEncoding()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 196
    .restart local v9    # "encoding":Ljava/lang/String;
    move-object/from16 v19, v2

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getBytes(I)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 197
    .restart local v10    # "data":[B
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 198
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->unsynchronizeBuffer([B)[B

    move-result-object v19

    move-object/from16 v10, v19

    .line 200
    :cond_1d
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v10

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v11, v19

    .line 201
    .local v11, "value":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v20, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_21

    .line 202
    move-object/from16 v19, v11

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v12, v19

    .line 203
    .local v12, "index":I
    move/from16 v19, v12

    if-eqz v19, :cond_1e

    move-object/from16 v19, v11

    const/16 v20, 0x0

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    :goto_9
    move-object/from16 v13, v19

    .line 204
    .local v13, "description":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->isTwoByteEncoding(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v19, v11

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    :goto_a
    move-object/from16 v14, v19

    .line 206
    .local v14, "text":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->getTagFromFrameID(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 207
    .local v15, "tag":[Ljava/lang/String;
    move-object/from16 v19, v15

    if-eqz v19, :cond_21

    .line 208
    const/16 v19, 0x0

    move/from16 v16, v19

    .local v16, "i":I
    :goto_b
    move/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    .line 209
    move-object/from16 v19, v13

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 210
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    move/from16 v22, v16

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->TXXXCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    :goto_c
    move-object/from16 v19, v2

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->TXXXCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->TXXXCount:I

    .line 208
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 203
    .end local v13    # "description":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "tag":[Ljava/lang/String;
    .end local v16    # "i":I
    :cond_1e
    const-string v19, ""

    goto/16 :goto_9

    .line 204
    .restart local v13    # "description":Ljava/lang/String;
    :cond_1f
    move-object/from16 v19, v11

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a

    .line 212
    .restart local v14    # "text":Ljava/lang/String;
    .restart local v15    # "tag":[Ljava/lang/String;
    .restart local v16    # "i":I
    :cond_20
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    move/from16 v22, v16

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->TXXXCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->addMetadataItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 218
    .end local v12    # "index":I
    .end local v13    # "description":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "tag":[Ljava/lang/String;
    .end local v16    # "i":I
    :cond_21
    goto/16 :goto_5

    .line 220
    .end local v9    # "encoding":Ljava/lang/String;
    .end local v10    # "data":[B
    .end local v11    # "value":Ljava/lang/String;
    :cond_22
    move-object/from16 v19, v2

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;->skipBytes(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5
.end method

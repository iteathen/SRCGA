.class Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
.super Ljava/lang/Object;
.source "GIFImageLoader2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/iio/gif/GIFImageLoader2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LZWDecoder"
.end annotation


# instance fields
.field private block:[B

.field private blockLength:I

.field private blockPos:I

.field private final clearCode:I

.field private codeMask:I

.field private codeSize:I

.field private final eofCode:I

.field private inBits:I

.field private inData:I

.field private final initCodeSize:I

.field private initial:[B

.field private length:[I

.field private oldCode:I

.field private prefix:[I

.field private string:[B

.field private suffix:[B

.field private tableIndex:I

.field final synthetic this$0:Lcom/sun/javafx/iio/gif/GIFImageLoader2;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/iio/gif/GIFImageLoader2;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->this$0:Lcom/sun/javafx/iio/gif/GIFImageLoader2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 342
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockLength:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockPos:I

    .line 343
    move-object v2, v0

    const/16 v3, 0xff

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->block:[B

    .line 344
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    .line 347
    move-object v2, v0

    const/16 v3, 0x1000

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->prefix:[I

    .line 348
    move-object v2, v0

    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->suffix:[B

    .line 349
    move-object v2, v0

    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initial:[B

    .line 350
    move-object v2, v0

    const/16 v3, 0x1000

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    .line 351
    move-object v2, v0

    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->string:[B

    .line 354
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->access$000(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initCodeSize:I

    .line 355
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initCodeSize:I

    shl-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->clearCode:I

    .line 356
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->clearCode:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->eofCode:I

    .line 357
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initTable()V

    .line 358
    return-void
.end method

.method private getCode()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    if-ge v2, v3, :cond_0

    .line 442
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->nextByte()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    .line 443
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    const/16 v4, 0x8

    add-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    goto :goto_0

    .line 445
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeMask:I

    and-int/2addr v2, v3

    move v1, v2

    .line 446
    .local v1, "code":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inBits:I

    .line 447
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    ushr-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->inData:I

    .line 448
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    return v0
.end method

.method private initTable()V
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initCodeSize:I

    shl-int/2addr v3, v4

    move v1, v3

    .line 419
    .local v1, "numEntries":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 420
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->prefix:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 421
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->suffix:[B

    move v4, v2

    move v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 422
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initial:[B

    move v4, v2

    move v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 423
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    move v4, v2

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_0
    move v3, v1

    move v2, v3

    :goto_1
    move v3, v2

    const/16 v4, 0x1000

    if-ge v3, v4, :cond_1

    .line 429
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->prefix:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 430
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    move v4, v2

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 433
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initCodeSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    .line 434
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    shl-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeMask:I

    .line 435
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    .line 436
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->oldCode:I

    .line 437
    return-void
.end method

.method private nextByte()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockPos:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockLength:I

    if-ne v1, v2, :cond_0

    .line 454
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->readData()V

    .line 456
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->block:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockPos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockPos:I

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    return v0
.end method

.method private readData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockPos:I

    .line 462
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->this$0:Lcom/sun/javafx/iio/gif/GIFImageLoader2;

    invoke-static {v2}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->access$000(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockLength:I

    .line 463
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockLength:I

    if-lez v1, :cond_0

    .line 464
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->this$0:Lcom/sun/javafx/iio/gif/GIFImageLoader2;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->block:[B

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->blockLength:I

    invoke-static {v1, v2, v3, v4}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->access$200(Lcom/sun/javafx/iio/gif/GIFImageLoader2;[BII)[B

    move-result-object v1

    .line 468
    return-void

    .line 466
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method


# virtual methods
.method public final getString()[B
    .locals 2

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->string:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    return-object v0
.end method

.method public final readString()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->getCode()I

    move-result v5

    move v1, v5

    .line 363
    .local v1, "code":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->eofCode:I

    if-ne v5, v6, :cond_0

    .line 364
    const/4 v5, -0x1

    move v0, v5

    .line 405
    .end local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    :goto_0
    return v0

    .line 365
    .restart local v0    # "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    :cond_0
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->clearCode:I

    if-ne v5, v6, :cond_1

    .line 366
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initTable()V

    .line 367
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->getCode()I

    move-result v5

    move v1, v5

    .line 368
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->eofCode:I

    if-ne v5, v6, :cond_3

    .line 369
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 373
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    move v3, v5

    .line 374
    .local v3, "ti":I
    move v5, v1

    move v6, v3

    if-ge v5, v6, :cond_4

    .line 375
    move v5, v1

    move v2, v5

    .line 383
    .local v2, "newSuffixIndex":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->oldCode:I

    move v4, v5

    .line 385
    .local v4, "oc":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->prefix:[I

    move v6, v3

    move v7, v4

    aput v7, v5, v6

    .line 386
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->suffix:[B

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initial:[B

    move v8, v2

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 387
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initial:[B

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->initial:[B

    move v8, v4

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 388
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    move v8, v4

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 390
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    .line 391
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    shl-int/2addr v6, v7

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->tableIndex:I

    const/16 v6, 0x1000

    if-ge v5, v6, :cond_3

    .line 392
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    .line 393
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeSize:I

    shl-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->codeMask:I

    .line 397
    .end local v2    # "newSuffixIndex":I
    .end local v3    # "ti":I
    .end local v4    # "oc":I
    :cond_3
    move v5, v1

    move v2, v5

    .line 398
    .local v2, "c":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->length:[I

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    .line 399
    .local v3, "len":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    if-ltz v5, :cond_5

    .line 400
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->string:[B

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->suffix:[B

    move v8, v2

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 401
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->prefix:[I

    move v6, v2

    aget v5, v5, v6

    move v2, v5

    .line 399
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 377
    .end local v2    # "c":I
    .end local v4    # "i":I
    .local v3, "ti":I
    :cond_4
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->oldCode:I

    move v2, v5

    .line 378
    .local v2, "newSuffixIndex":I
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_2

    .line 379
    new-instance v5, Ljava/io/IOException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Bad GIF LZW: Out-of-sequence code!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    .local v2, "c":I
    .local v3, "len":I
    .restart local v4    # "i":I
    :cond_5
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->oldCode:I

    .line 405
    move v5, v3

    move v0, v5

    goto/16 :goto_0
.end method

.method public final waitForTerminator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/gif/GIFImageLoader2$LZWDecoder;->this$0:Lcom/sun/javafx/iio/gif/GIFImageLoader2;

    invoke-static {v1}, Lcom/sun/javafx/iio/gif/GIFImageLoader2;->access$100(Lcom/sun/javafx/iio/gif/GIFImageLoader2;)V

    .line 414
    return-void
.end method

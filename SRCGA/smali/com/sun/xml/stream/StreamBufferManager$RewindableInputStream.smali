.class public final Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "StreamBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/StreamBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# static fields
.field static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lcom/sun/xml/stream/StreamBufferManager;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/StreamBufferManager;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v2, p2

    .local v2, "is":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->this$0:Lcom/sun/xml/stream/StreamBufferManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/io/InputStream;-><init>()V

    .line 338
    move-object v3, v0

    const/16 v4, 0x40

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    .line 339
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 340
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    .line 341
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    .line 342
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 343
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    .line 344
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    .line 345
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 452
    .local v1, "bytesLeft":I
    move v2, v1

    if-nez v2, :cond_1

    .line 453
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v2, v3, :cond_0

    .line 454
    const/4 v2, -0x1

    move v0, v2

    .line 458
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :goto_0
    return v0

    .line 456
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 458
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 476
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 477
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 479
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 4

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move v1, p1

    .local v1, "howMuch":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iput v3, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    .line 463
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    const/4 v3, 0x0

    move v1, v3

    .line 357
    .local v1, "b":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    if-ge v3, v4, :cond_0

    .line 358
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    .line 375
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :goto_0
    return v0

    .line 360
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v3, v4, :cond_1

    .line 361
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 363
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 364
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 365
    .local v2, "newData":[B
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    .line 368
    .end local v2    # "newData":[B
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v1, v3

    .line 369
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 370
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    .line 371
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 373
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 374
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 375
    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 380
    .local v4, "bytesLeft":I
    move v5, v4

    if-nez v5, :cond_1

    .line 381
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v5, v6, :cond_0

    .line 382
    const/4 v5, -0x1

    move v0, v5

    .line 414
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :goto_0
    return v0

    .line 384
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 402
    :cond_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 403
    move v5, v3

    if-gtz v5, :cond_3

    .line 404
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 408
    :cond_2
    move v5, v4

    move v3, v5

    .line 410
    :cond_3
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 411
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_4
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 414
    move v5, v3

    move v0, v5

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 468
    return-void
.end method

.method public rewind()V
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    iput v2, v1, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 353
    return-void
.end method

.method public setStartOffset(I)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    .line 349
    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    move-wide v1, p1

    .local v1, "n":J
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 421
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 447
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :goto_0
    return-wide v0

    .line 423
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 424
    .local v3, "bytesLeft":I
    move v4, v3

    if-nez v4, :cond_2

    .line 425
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v4, v5, :cond_1

    .line 426
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0

    .line 428
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 430
    :cond_2
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 431
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    int-to-long v5, v5

    move-wide v7, v1

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 432
    move-wide v4, v1

    move-wide v0, v4

    goto :goto_0

    .line 434
    :cond_3
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 435
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v4, v5, :cond_4

    .line 436
    move v4, v3

    int-to-long v4, v4

    move-wide v0, v4

    goto :goto_0

    .line 438
    :cond_4
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    .line 447
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    move v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0
.end method

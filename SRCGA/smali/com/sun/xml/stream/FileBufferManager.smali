.class public Lcom/sun/xml/stream/FileBufferManager;
.super Lcom/sun/xml/stream/BufferManager;
.source "FileBufferManager.java"


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_LENGTH:I = 0x2000

.field static final THRESH_HOLD:I = 0x14000


# instance fields
.field calledGetMore:Z

.field charBuffer:Ljava/nio/CharBuffer;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field fChannel:Ljava/nio/channels/FileChannel;

.field filepos:J

.field filesize:J

.field remaining:J


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v1, p1

    .local v1, "stream":Ljava/io/FileInputStream;
    move-object v2, p2

    .local v2, "encodingName":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/BufferManager;-><init>()V

    .line 64
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 68
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    .line 69
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    .line 70
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->filesize:J

    .line 75
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/FileBufferManager;->init(Ljava/io/FileInputStream;)V

    .line 77
    move-object v3, v0

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/FileBufferManager;->setDecoder(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/sun/xml/stream/FileBufferManager;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/io/FileInputStream;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/FileBufferManager;-><init>(Ljava/io/FileInputStream;Ljava/lang/String;)V

    move-object v1, v4

    .line 312
    .local v1, "fb":Lcom/sun/xml/stream/FileBufferManager;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    move-object v2, v4

    .line 313
    .local v2, "cb":Ljava/nio/CharBuffer;
    const/4 v4, 0x0

    move v3, v4

    .line 314
    .local v3, "i":I
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/xml/stream/FileBufferManager;->getMore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "------------Loop CharBuffer details--------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/xml/stream/FileBufferManager;->printCharBuffer(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 319
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End of file reached = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/xml/stream/FileBufferManager;->endOfStream()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total no. of loops required = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 325
    .end local v1    # "fb":Lcom/sun/xml/stream/FileBufferManager;
    .end local v2    # "cb":Ljava/nio/CharBuffer;
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 322
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 323
    .local v1, "ex":Ljava/lang/Exception;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static printByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "------------ByteBuffer Details---------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.remaining() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.limit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method static printCharBuffer(Ljava/nio/CharBuffer;)V
    .locals 5

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "bb":Ljava/nio/CharBuffer;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------- CharBuffer Details---------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.remaining() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.limit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb.capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    return-void
.end method


# virtual methods
.method public arrangeCapacity(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move v1, p1

    .local v1, "length":I
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/FileBufferManager;->calledGetMore:Z

    if-nez v2, :cond_0

    .line 93
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->getMore()Z

    move-result v2

    .line 96
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v1

    if-lt v2, v3, :cond_2

    .line 97
    const/4 v2, 0x1

    move v0, v2

    .line 106
    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :goto_0
    return v0

    .line 101
    .restart local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->getMore()Z

    move-result v2

    .line 99
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v1

    if-ge v2, v3, :cond_3

    .line 100
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->endOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v1

    if-lt v2, v3, :cond_4

    .line 104
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 106
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    .line 329
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 331
    :cond_0
    return-void
.end method

.method public getCharBuffer()Ljava/nio/CharBuffer;
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    return-object v0
.end method

.method getCharSequence()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    return-object v0
.end method

.method getLength()I
    .locals 6

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    const-wide/16 v4, 0x4000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    long-to-int v2, v2

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/xml/stream/FileBufferManager;
    return v1

    .restart local v1    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :cond_0
    const/16 v2, 0x4000

    goto :goto_0
.end method

.method public getMore()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/FileBufferManager;->calledGetMore:Z

    .line 165
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/FileBufferManager;->endOfStream:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 234
    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    .local v1, "bb":Ljava/nio/ByteBuffer;
    .local v2, "before":I
    .local v3, "cr":Ljava/nio/charset/CoderResult;
    :goto_0
    return v0

    .line 168
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "before":I
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    .restart local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/FileBufferManager;->getMoreBytes()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v1, v4

    .line 172
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v4

    .line 178
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    move v2, v4

    .line 186
    .restart local v2    # "before":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    move-object v3, v4

    .line 197
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    :goto_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_3

    .line 198
    move-object v4, v3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/FileBufferManager;->resizeCharBuffer(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 204
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 175
    .end local v2    # "before":I
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v4

    goto :goto_1

    .line 212
    .restart local v2    # "before":I
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    move-object v3, v4

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 220
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 227
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    move v5, v2

    if-le v4, v5, :cond_5

    .line 230
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    .line 231
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 234
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public getMoreBytes()Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/FileBufferManager;->getLength()I

    move-result v3

    move v1, v3

    .line 120
    .local v1, "len":I
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/FileBufferManager;->endOfStream:Z

    if-eqz v3, :cond_0

    .line 121
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    .line 146
    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :goto_0
    return-object v0

    .line 123
    .restart local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    .line 125
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/xml/stream/FileBufferManager;->filesize:J

    const-wide/32 v5, 0x14000

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 128
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    move v7, v1

    int-to-long v7, v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 129
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    .line 141
    :goto_1
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/xml/stream/FileBufferManager;->filesize:J

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    .line 143
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 144
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/FileBufferManager;->endOfStream:Z

    .line 146
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 133
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/FileBufferManager;->getLength()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 135
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->filepos:J

    .line 137
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    goto :goto_1
.end method

.method init(Ljava/io/FileInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v2, p1

    .local v2, "stream":Ljava/io/FileInputStream;
    move-object v3, v1

    const/16 v4, 0x4000

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 83
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    .line 84
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->filesize:J

    .line 85
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/xml/stream/FileBufferManager;->filesize:J

    iput-wide v4, v3, Lcom/sun/xml/stream/FileBufferManager;->remaining:J

    .line 88
    return-void
.end method

.method resizeCharBuffer(I)Ljava/nio/CharBuffer;
    .locals 6

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move v1, p1

    .local v1, "capacity":I
    move v3, v1

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    move-object v2, v3

    .line 259
    .local v2, "cb":Ljava/nio/CharBuffer;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/FileBufferManager;
    return-object v0
.end method

.method setDecoder(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/FileBufferManager;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 276
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v2, v5

    .line 280
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 284
    const/4 v5, 0x4

    new-array v5, v5, [B

    move-object v3, v5

    .line 285
    .local v3, "b":[B
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 286
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/FileBufferManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 290
    .local v4, "array":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    return-void
.end method

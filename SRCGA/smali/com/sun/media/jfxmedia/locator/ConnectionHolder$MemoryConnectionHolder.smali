.class Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
.super Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.source "ConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryConnectionHolder"
.end annotation


# instance fields
.field private final backingBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;-><init>()V

    .line 350
    const/4 v2, 0x0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Can\'t connect to null buffer..."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    .line 364
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    .line 368
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;-><init>(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 402
    return-void

    .line 359
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    .line 360
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 3

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 454
    return-void
.end method

.method isRandomAccess()Z
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    return v0
.end method

.method isSeekable()Z
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    return v0
.end method

.method needBuffer()Z
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    return v0
.end method

.method readBlock(JI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-wide v2, p1

    .local v2, "position":J
    move v4, p3

    .local v4, "size":I
    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    if-ne v6, v7, :cond_0

    .line 408
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v6

    .line 411
    :cond_0
    move-wide v6, v2

    long-to-int v6, v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 412
    const/4 v6, -0x1

    move v1, v6

    .line 422
    .end local v1    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    :goto_0
    return v1

    .line 414
    .restart local v1    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-wide v7, v2

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 416
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    .line 418
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 419
    .local v5, "actual":I
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 420
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    move v8, v5

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 422
    move v6, v5

    move v1, v6

    goto :goto_0
.end method

.method public seek(J)J
    .locals 7

    .prologue
    .line 442
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-wide v2, p1

    .local v2, "position":J
    move-wide v4, v2

    long-to-int v4, v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 443
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    .line 444
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->backingBuffer:Ljava/nio/ByteBuffer;

    move-wide v5, v2

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    .line 445
    move-wide v4, v2

    move-wide v1, v4

    .line 447
    .end local v1    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    :cond_0
    const-wide/16 v4, -0x1

    move-wide v1, v4

    goto :goto_0
.end method

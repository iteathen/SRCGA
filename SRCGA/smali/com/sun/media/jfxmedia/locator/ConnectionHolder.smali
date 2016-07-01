.class public abstract Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.super Ljava/lang/Object;
.source "ConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;,
        Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;,
        Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    }
.end annotation


# static fields
.field private static DEFAULT_BUFFER_SIZE:I


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x1000

    sput v0, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->DEFAULT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v1, v0

    sget v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->DEFAULT_BUFFER_SIZE:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->DEFAULT_BUFFER_SIZE:I

    return v0
.end method

.method static createFileConnectionHolder(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .end local v0    # "uri":Ljava/net/URI;
    return-object v0
.end method

.method static createHLSConnectionHolder(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .end local v0    # "uri":Ljava/net/URI;
    return-object v0
.end method

.method static createMemoryConnectionHolder(Ljava/nio/ByteBuffer;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method static createURIConnectionHolder(Ljava/net/URI;Ljava/util/Map;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sun/media/jfxmedia/locator/ConnectionHolder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "uri":Ljava/net/URI;
    move-object v1, p1

    .local v1, "connectionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;-><init>(Ljava/net/URI;Ljava/util/Map;)V

    move-object v0, v2

    .end local v0    # "uri":Ljava/net/URI;
    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v3, :cond_0

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 147
    .line 148
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 146
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 147
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    move-object v3, v2

    throw v3
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    return-object v0
.end method

.method getStreamSize()I
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    return v0
.end method

.method abstract isRandomAccess()Z
.end method

.method abstract isSeekable()Z
.end method

.method abstract needBuffer()Z
.end method

.method property(II)I
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move v1, p1

    .local v1, "prop":I
    move v2, p2

    .local v2, "value":I
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    return v0
.end method

.method abstract readBlock(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readNextBlock()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    .line 85
    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 88
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    return v0
.end method

.method public abstract seek(J)J
.end method

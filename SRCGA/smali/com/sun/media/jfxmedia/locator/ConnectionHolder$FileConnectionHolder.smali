.class Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
.super Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.source "ConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileConnectionHolder"
.end annotation


# instance fields
.field private file:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;-><init>()V

    .line 173
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    .line 176
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->openFile(Ljava/net/URI;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 177
    return-void
.end method

.method private openFile(Ljava/net/URI;)Ljava/nio/channels/ReadableByteChannel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 214
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 217
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/io/RandomAccessFile;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    .line 218
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    move-object v3, v0

    invoke-super {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->closeConnection()V

    .line 225
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    .line 231
    .line 233
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    instance-of v3, v3, Lsun/nio/ch/DirectBuffer;

    if-eqz v3, :cond_1

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    .line 236
    :cond_1
    return-void

    .line 228
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 230
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    .line 231
    goto :goto_0

    .line 230
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->file:Ljava/io/RandomAccessFile;

    move-object v3, v2

    throw v3
.end method

.method isRandomAccess()Z
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    return v0
.end method

.method isSeekable()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    return v0
.end method

.method needBuffer()Z
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    return v0
.end method

.method readBlock(JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    move-wide v1, p1

    .local v1, "position":J
    move v3, p3

    .local v3, "size":I
    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    if-ne v4, v5, :cond_0

    .line 202
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 205
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 206
    move-object v4, v0

    move v5, v3

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    .line 208
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    .line 209
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v4, Ljava/nio/channels/FileChannel;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    move-wide v6, v1

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    return v0
.end method

.method public seek(J)J
    .locals 7

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    move-wide v1, p1

    .local v1, "position":J
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v4, Ljava/nio/channels/FileChannel;

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 194
    move-wide v4, v1

    move-wide v0, v4

    .line 196
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    :goto_0
    return-wide v0

    .line 195
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$FileConnectionHolder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 196
    .local v3, "ioex":Ljava/io/IOException;
    const-wide/16 v4, -0x1

    move-wide v0, v4

    goto :goto_0
.end method

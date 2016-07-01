.class public Lorg/apache/xerces/impl/io/ASCIIReader;
.super Ljava/io/Reader;
.source "ASCIIReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected fBuffer:[B

.field private fFormatter:Lorg/apache/xerces/util/MessageFormatter;

.field protected fInputStream:Ljava/io/InputStream;

.field private fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move v2, p2

    .local v2, "size":I
    move-object v3, p3

    .local v3, "messageFormatter":Lorg/apache/xerces/util/MessageFormatter;
    move-object v4, p4

    .local v4, "locale":Ljava/util/Locale;
    move-object v6, v0

    invoke-direct {v6}, Ljava/io/Reader;-><init>()V

    .line 100
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    .line 103
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    .line 133
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    .line 134
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v6

    move-object v5, v6

    .line 135
    .local v5, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v6, v0

    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 136
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    if-nez v6, :cond_0

    .line 137
    move-object v6, v0

    move v7, v2

    new-array v7, v7, [B

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 139
    :cond_0
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    .line 140
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "messageFormatter":Lorg/apache/xerces/util/MessageFormatter;
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x800

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 120
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v2

    move-object v1, v2

    .line 274
    .local v1, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 275
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 276
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 277
    return-void
.end method

.method public mark(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move v1, p1

    .local v1, "readAheadLimit":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 246
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    return v0
.end method

.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    move v1, v2

    .line 162
    .local v1, "b0":I
    move v2, v1

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 163
    new-instance v2, Ljava/io/IOException;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string v6, "InvalidASCII"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    return v0
.end method

.method public read([CII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object/from16 v1, p1

    .local v1, "ch":[C
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "length":I
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 184
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v7, v7

    move v3, v7

    .line 186
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    const/4 v9, 0x0

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v4, v7

    .line 187
    .local v4, "count":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 188
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    move v8, v5

    aget-byte v7, v7, v8

    move v6, v7

    .line 189
    .local v6, "b0":I
    move v7, v6

    const/16 v8, 0x80

    if-le v7, v8, :cond_1

    .line 190
    new-instance v7, Ljava/io/IOException;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string v11, "InvalidASCII"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move v15, v6

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v9, v10, v11, v12}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 192
    :cond_1
    move-object v7, v1

    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    move v9, v6

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v6    # "b0":I
    :cond_2
    move v7, v4

    move v0, v7

    .end local v0    # "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    return v0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 263
    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    move-wide v1, p1

    .local v1, "n":J
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lorg/apache/xerces/impl/io/ASCIIReader;
    return-wide v0
.end method

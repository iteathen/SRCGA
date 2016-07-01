.class public Lorg/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected fBuffer:[B

.field private fFormatter:Lorg/apache/xerces/util/MessageFormatter;

.field protected fInputStream:Ljava/io/InputStream;

.field private fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x800

    new-instance v5, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 9

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
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

    .line 104
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 108
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    .line 111
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 151
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 152
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    .line 153
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 154
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v6

    move-object v5, v6

    .line 155
    .local v5, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v6, v0

    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 156
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    if-nez v6, :cond_0

    .line 157
    move-object v6, v0

    move v7, v2

    new-array v7, v7, [B

    iput-object v7, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 159
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
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

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 138
    return-void
.end method

.method private expectedByte(II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v6, "ExpectedByte"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 711
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 710
    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 712
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/io/UTFDataFormatException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private invalidByte(III)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move/from16 v3, p3

    .local v3, "c":I
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v7, "InvalidByte"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    .line 721
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 720
    invoke-interface {v5, v6, v7, v8}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 722
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Ljava/io/UTFDataFormatException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private invalidSurrogate(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move v1, p1

    .local v1, "uuuuu":I
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v4

    .line 730
    .local v2, "str":Ljava/lang/StringBuffer;
    move-object v4, v2

    const-string v5, "high surrogate bits in UTF-8 sequence must not exceed 0x10 but found 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 732
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v6, "InvalidHighSurrogate"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 733
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 732
    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 734
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/io/UTFDataFormatException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 696
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v2

    move-object v1, v2

    .line 697
    .local v1, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 698
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 699
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 700
    return-void
.end method

.method public mark(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move v1, p1

    .local v1, "readAheadLimit":I
    new-instance v2, Ljava/io/IOException;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lorg/apache/xerces/util/MessageFormatter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v6, "OperationNotSupported"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "mark()"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    return v0
.end method

.method public read()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move v1, v11

    .line 182
    .local v1, "c":I
    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_19

    .line 185
    const/4 v11, 0x0

    move v2, v11

    .line 188
    .local v2, "index":I
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 189
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_0
    move v3, v11

    .line 190
    .local v3, "b0":I
    move v11, v3

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 191
    const/4 v11, -0x1

    move v0, v11

    .line 294
    .end local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    .end local v2    # "index":I
    .end local v3    # "b0":I
    :goto_1
    return v0

    .line 189
    .restart local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    .restart local v2    # "index":I
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto :goto_0

    .line 196
    .restart local v3    # "b0":I
    :cond_1
    move v11, v3

    const/16 v12, 0x80

    if-ge v11, v12, :cond_2

    .line 197
    move v11, v3

    int-to-char v11, v11

    move v1, v11

    .line 283
    .line 294
    .end local v2    # "index":I
    .end local v3    # "b0":I
    :goto_2
    move v11, v1

    move v0, v11

    goto :goto_1

    .line 202
    .restart local v2    # "index":I
    .restart local v3    # "b0":I
    :cond_2
    move v11, v3

    const/16 v12, 0xe0

    and-int/lit16 v11, v11, 0xe0

    const/16 v12, 0xc0

    if-ne v11, v12, :cond_6

    .line 203
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_5

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 204
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_3
    move v4, v11

    .line 205
    .local v4, "b1":I
    move v11, v4

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 206
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 208
    :cond_3
    move v11, v4

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_4

    .line 209
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x2

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 211
    :cond_4
    move v11, v3

    const/4 v12, 0x6

    shl-int/lit8 v11, v11, 0x6

    const/16 v12, 0x7c0

    and-int/lit16 v11, v11, 0x7c0

    move v12, v4

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v11, v12

    move v1, v11

    .line 212
    goto :goto_2

    .line 204
    .end local v4    # "b1":I
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto :goto_3

    .line 216
    :cond_6
    move v11, v3

    const/16 v12, 0xf0

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_d

    .line 217
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_b

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 218
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_4
    move v4, v11

    .line 219
    .restart local v4    # "b1":I
    move v11, v4

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 220
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 222
    :cond_7
    move v11, v4

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_8

    .line 223
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x3

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 225
    :cond_8
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_c

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 226
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_5
    move v5, v11

    .line 227
    .local v5, "b2":I
    move v11, v5

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 228
    move-object v11, v0

    const/4 v12, 0x3

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 230
    :cond_9
    move v11, v5

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_a

    .line 231
    move-object v11, v0

    const/4 v12, 0x3

    const/4 v13, 0x3

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 233
    :cond_a
    move v11, v3

    const/16 v12, 0xc

    shl-int/lit8 v11, v11, 0xc

    const v12, 0xf000

    and-int/2addr v11, v12

    move v12, v4

    const/4 v13, 0x6

    shl-int/lit8 v12, v12, 0x6

    const/16 v13, 0xfc0

    and-int/lit16 v12, v12, 0xfc0

    or-int/2addr v11, v12

    move v12, v5

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v11, v12

    move v1, v11

    .line 235
    goto/16 :goto_2

    .line 218
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    :cond_b
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto :goto_4

    .line 226
    .restart local v4    # "b1":I
    :cond_c
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto :goto_5

    .line 241
    .end local v4    # "b1":I
    :cond_d
    move v11, v3

    const/16 v12, 0xf8

    and-int/lit16 v11, v11, 0xf8

    const/16 v12, 0xf0

    if-ne v11, v12, :cond_18

    .line 242
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_15

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 243
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_6
    move v4, v11

    .line 244
    .restart local v4    # "b1":I
    move v11, v4

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    .line 245
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x4

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 247
    :cond_e
    move v11, v4

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_f

    .line 248
    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x3

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 250
    :cond_f
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_16

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 251
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_7
    move v5, v11

    .line 252
    .restart local v5    # "b2":I
    move v11, v5

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10

    .line 253
    move-object v11, v0

    const/4 v12, 0x3

    const/4 v13, 0x4

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 255
    :cond_10
    move v11, v5

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_11

    .line 256
    move-object v11, v0

    const/4 v12, 0x3

    const/4 v13, 0x3

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 258
    :cond_11
    move v11, v2

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v11, v12, :cond_17

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 259
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    :goto_8
    move v6, v11

    .line 260
    .local v6, "b3":I
    move v11, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_12

    .line 261
    move-object v11, v0

    const/4 v12, 0x4

    const/4 v13, 0x4

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 263
    :cond_12
    move v11, v6

    const/16 v12, 0xc0

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_13

    .line 264
    move-object v11, v0

    const/4 v12, 0x4

    const/4 v13, 0x4

    move v14, v6

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 266
    :cond_13
    move v11, v3

    const/4 v12, 0x2

    shl-int/lit8 v11, v11, 0x2

    const/16 v12, 0x1c

    and-int/lit8 v11, v11, 0x1c

    move v12, v4

    const/4 v13, 0x4

    shr-int/lit8 v12, v12, 0x4

    const/4 v13, 0x3

    and-int/lit8 v12, v12, 0x3

    or-int/2addr v11, v12

    move v7, v11

    .line 267
    .local v7, "uuuuu":I
    move v11, v7

    const/16 v12, 0x10

    if-le v11, v12, :cond_14

    .line 268
    move-object v11, v0

    move v12, v7

    invoke-direct {v11, v12}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 270
    :cond_14
    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v8, v11

    .line 271
    .local v8, "wwww":I
    const v11, 0xd800

    move v12, v8

    const/4 v13, 0x6

    shl-int/lit8 v12, v12, 0x6

    const/16 v13, 0x3c0

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    move v12, v4

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    const/16 v13, 0x3c

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    move v12, v5

    const/4 v13, 0x4

    shr-int/lit8 v12, v12, 0x4

    const/4 v13, 0x3

    and-int/lit8 v12, v12, 0x3

    or-int/2addr v11, v12

    move v9, v11

    .line 274
    .local v9, "hs":I
    const v11, 0xdc00

    move v12, v5

    const/4 v13, 0x6

    shl-int/lit8 v12, v12, 0x6

    const/16 v13, 0x3c0

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    move v12, v6

    const/16 v13, 0x3f

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v11, v12

    move v10, v11

    .line 275
    .local v10, "ls":I
    move v11, v9

    move v1, v11

    .line 276
    move-object v11, v0

    move v12, v10

    iput v12, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 277
    goto/16 :goto_2

    .line 243
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "uuuuu":I
    .end local v8    # "wwww":I
    .end local v9    # "hs":I
    .end local v10    # "ls":I
    :cond_15
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto/16 :goto_6

    .line 251
    .restart local v4    # "b1":I
    :cond_16
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto/16 :goto_7

    .line 259
    .restart local v5    # "b2":I
    :cond_17
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    goto/16 :goto_8

    .line 281
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    :cond_18
    move-object v11, v0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_2

    .line 287
    .end local v2    # "index":I
    .end local v3    # "b0":I
    :cond_19
    move-object v11, v0

    const/4 v12, -0x1

    iput v12, v11, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2
.end method

.method public read([CII)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    move-object/from16 v2, p0

    .local v2, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move-object/from16 v3, p1

    .local v3, "ch":[C
    move/from16 v4, p2

    .local v4, "offset":I
    move/from16 v5, p3

    .local v5, "length":I
    move/from16 v23, v4

    move/from16 v6, v23

    .line 315
    .local v6, "out":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 316
    move-object/from16 v23, v3

    move/from16 v24, v4

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 317
    move-object/from16 v23, v2

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 318
    add-int/lit8 v5, v5, -0x1

    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 323
    :cond_0
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 324
    .local v7, "count":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 326
    move/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 327
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v5, v23

    .line 331
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v26, v5

    invoke-virtual/range {v23 .. v26}, Ljava/io/InputStream;->read([BII)I

    move-result v23

    move/from16 v7, v23

    .line 332
    move/from16 v23, v7

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 333
    const/16 v23, -0x1

    move/from16 v2, v23

    .line 599
    .end local v2    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    :goto_0
    return v2

    .line 335
    .restart local v2    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    :cond_2
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v25, v4

    sub-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v7, v23

    .line 351
    :goto_1
    move/from16 v23, v7

    move/from16 v8, v23

    .line 352
    .local v8, "total":I
    const/16 v23, 0x1

    move/from16 v9, v23

    .line 353
    .local v9, "isAscii":Z
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 355
    .local v10, "lc":I
    const/16 v23, 0x0

    move/from16 v10, v23

    :goto_2
    move/from16 v23, v10

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 356
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v10

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v11, v23

    .line 360
    .local v11, "b0":I
    move/from16 v23, v11

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 361
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v11

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 355
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 346
    .end local v8    # "total":I
    .end local v9    # "isAscii":Z
    .end local v10    # "lc":I
    .end local v11    # "b0":I
    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    move/from16 v7, v23

    .line 347
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    goto :goto_1

    .line 364
    .restart local v8    # "total":I
    .restart local v9    # "isAscii":Z
    .restart local v10    # "lc":I
    .restart local v11    # "b0":I
    :cond_4
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 369
    .end local v11    # "b0":I
    :cond_5
    move/from16 v23, v9

    if-eqz v23, :cond_6

    .line 370
    move/from16 v23, v7

    move/from16 v2, v23

    goto :goto_0

    .line 373
    :cond_6
    move/from16 v23, v10

    move/from16 v11, v23

    .local v11, "in":I
    :goto_3
    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    .line 374
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v12, v23

    .line 378
    .local v12, "b0":I
    move/from16 v23, v12

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 379
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 380
    .line 373
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 385
    :cond_7
    move/from16 v23, v12

    const/16 v24, 0xe0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 386
    const/16 v23, -0x1

    move/from16 v13, v23

    .line 387
    .local v13, "b1":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 388
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v13, v23

    .line 402
    :goto_5
    move/from16 v23, v13

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 403
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 404
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 405
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 406
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 407
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 391
    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v13, v23

    .line 392
    move/from16 v23, v13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 393
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 394
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 395
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 396
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 398
    :cond_9
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 400
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 409
    :cond_b
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x2

    move/from16 v26, v13

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 411
    :cond_c
    move/from16 v23, v12

    const/16 v24, 0x6

    shl-int/lit8 v23, v23, 0x6

    const/16 v24, 0x7c0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7c0

    move/from16 v23, v0

    move/from16 v24, v13

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    or-int v23, v23, v24

    move/from16 v14, v23

    .line 412
    .local v14, "c":I
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v14

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 413
    add-int/lit8 v7, v7, -0x1

    .line 414
    goto/16 :goto_4

    .line 419
    .end local v13    # "b1":I
    .end local v14    # "c":I
    :cond_d
    move/from16 v23, v12

    const/16 v24, 0xf0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 420
    const/16 v23, -0x1

    move/from16 v13, v23

    .line 421
    .restart local v13    # "b1":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 422
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v13, v23

    .line 436
    :goto_6
    move/from16 v23, v13

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    .line 437
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    .line 438
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 439
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 440
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 441
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 425
    :cond_e
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v13, v23

    .line 426
    move/from16 v23, v13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 427
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_f

    .line 428
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 429
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 430
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 432
    :cond_f
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x3

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 434
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 443
    :cond_11
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x3

    move/from16 v26, v13

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 445
    :cond_12
    const/16 v23, -0x1

    move/from16 v14, v23

    .line 446
    .local v14, "b2":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 447
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v14, v23

    .line 462
    :goto_7
    move/from16 v23, v14

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    .line 463
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    .line 464
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 465
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 466
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v25, v14

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 467
    move-object/from16 v23, v2

    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 468
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 450
    :cond_13
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v14, v23

    .line 451
    move/from16 v23, v14

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 452
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_14

    .line 453
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 454
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 455
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 456
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 458
    :cond_14
    move-object/from16 v23, v2

    const/16 v24, 0x3

    const/16 v25, 0x3

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 460
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 470
    :cond_16
    move-object/from16 v23, v2

    const/16 v24, 0x3

    const/16 v25, 0x3

    move/from16 v26, v14

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 472
    :cond_17
    move/from16 v23, v12

    const/16 v24, 0xc

    shl-int/lit8 v23, v23, 0xc

    const v24, 0xf000

    and-int v23, v23, v24

    move/from16 v24, v13

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    const/16 v25, 0xfc0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v24, v14

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    or-int v23, v23, v24

    move/from16 v15, v23

    .line 474
    .local v15, "c":I
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v15

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 475
    add-int/lit8 v7, v7, -0x2

    .line 476
    goto/16 :goto_4

    .line 483
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "c":I
    :cond_18
    move/from16 v23, v12

    const/16 v24, 0xf8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 484
    const/16 v23, -0x1

    move/from16 v13, v23

    .line 485
    .restart local v13    # "b1":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    .line 486
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v13, v23

    .line 500
    :goto_8
    move/from16 v23, v13

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    .line 501
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    .line 502
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 503
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 504
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 505
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 489
    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v13, v23

    .line 490
    move/from16 v23, v13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 491
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1a

    .line 492
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 493
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 494
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 496
    :cond_1a
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x4

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 498
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 507
    :cond_1c
    move-object/from16 v23, v2

    const/16 v24, 0x2

    const/16 v25, 0x4

    move/from16 v26, v13

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 509
    :cond_1d
    const/16 v23, -0x1

    move/from16 v14, v23

    .line 510
    .restart local v14    # "b2":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    .line 511
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v14, v23

    .line 526
    :goto_9
    move/from16 v23, v14

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_22

    .line 527
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_21

    .line 528
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 529
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 530
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v25, v14

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 531
    move-object/from16 v23, v2

    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 532
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 514
    :cond_1e
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v14, v23

    .line 515
    move/from16 v23, v14

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 516
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1f

    .line 517
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 518
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 519
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 520
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 522
    :cond_1f
    move-object/from16 v23, v2

    const/16 v24, 0x3

    const/16 v25, 0x4

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 524
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 534
    :cond_21
    move-object/from16 v23, v2

    const/16 v24, 0x3

    const/16 v25, 0x4

    move/from16 v26, v14

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 536
    :cond_22
    const/16 v23, -0x1

    move/from16 v15, v23

    .line 537
    .local v15, "b3":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v23, v11

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_23

    .line 538
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move/from16 v24, v11

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v15, v23

    .line 554
    :goto_a
    move/from16 v23, v15

    const/16 v24, 0xc0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 555
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_26

    .line 556
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 557
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 558
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v25, v14

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 559
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v25, v15

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 560
    move-object/from16 v23, v2

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 561
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 541
    :cond_23
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v23

    move/from16 v15, v23

    .line 542
    move/from16 v23, v15

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    .line 543
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_24

    .line 544
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 545
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v25, v13

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 546
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v25, v14

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 547
    move-object/from16 v23, v2

    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 548
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 550
    :cond_24
    move-object/from16 v23, v2

    const/16 v24, 0x4

    const/16 v25, 0x4

    invoke-direct/range {v23 .. v25}, Lorg/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 552
    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    .line 563
    :cond_26
    move-object/from16 v23, v2

    const/16 v24, 0x4

    const/16 v25, 0x4

    move/from16 v26, v14

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 567
    :cond_27
    move/from16 v23, v12

    const/16 v24, 0x2

    shl-int/lit8 v23, v23, 0x2

    const/16 v24, 0x1c

    and-int/lit8 v23, v23, 0x1c

    move/from16 v24, v13

    const/16 v25, 0x4

    shr-int/lit8 v24, v24, 0x4

    const/16 v25, 0x3

    and-int/lit8 v24, v24, 0x3

    or-int v23, v23, v24

    move/from16 v16, v23

    .line 568
    .local v16, "uuuuu":I
    move/from16 v23, v16

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_28

    .line 569
    move-object/from16 v23, v2

    move/from16 v24, v16

    invoke-direct/range {v23 .. v24}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 571
    :cond_28
    move/from16 v23, v16

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v17, v23

    .line 572
    .local v17, "wwww":I
    move/from16 v23, v13

    const/16 v24, 0xf

    and-int/lit8 v23, v23, 0xf

    move/from16 v18, v23

    .line 573
    .local v18, "zzzz":I
    move/from16 v23, v14

    const/16 v24, 0x3f

    and-int/lit8 v23, v23, 0x3f

    move/from16 v19, v23

    .line 574
    .local v19, "yyyyyy":I
    move/from16 v23, v15

    const/16 v24, 0x3f

    and-int/lit8 v23, v23, 0x3f

    move/from16 v20, v23

    .line 575
    .local v20, "xxxxxx":I
    const v23, 0xd800

    move/from16 v24, v17

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    const/16 v25, 0x3c0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v24, v18

    const/16 v25, 0x2

    shl-int/lit8 v24, v24, 0x2

    or-int v23, v23, v24

    move/from16 v24, v19

    const/16 v25, 0x4

    shr-int/lit8 v24, v24, 0x4

    or-int v23, v23, v24

    move/from16 v21, v23

    .line 576
    .local v21, "hs":I
    const v23, 0xdc00

    move/from16 v24, v19

    const/16 v25, 0x6

    shl-int/lit8 v24, v24, 0x6

    const/16 v25, 0x3c0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v24, v20

    or-int v23, v23, v24

    move/from16 v22, v23

    .line 579
    .local v22, "ls":I
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v21

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 580
    move-object/from16 v23, v3

    move/from16 v24, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v22

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, v23, v24

    .line 581
    add-int/lit8 v7, v7, -0x2

    .line 582
    goto/16 :goto_4

    .line 586
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "b3":I
    .end local v16    # "uuuuu":I
    .end local v17    # "wwww":I
    .end local v18    # "zzzz":I
    .end local v19    # "yyyyyy":I
    .end local v20    # "xxxxxx":I
    .end local v21    # "hs":I
    .end local v22    # "ls":I
    :cond_29
    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2a

    .line 587
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 588
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 589
    move/from16 v23, v6

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v2, v23

    goto/16 :goto_0

    .line 591
    :cond_2a
    move-object/from16 v23, v2

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v26, v12

    invoke-direct/range {v23 .. v26}, Lorg/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_4

    .line 599
    .end local v12    # "b0":I
    :cond_2b
    move/from16 v23, v7

    move/from16 v2, v23

    goto/16 :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    return v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 685
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 686
    return-void
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    move-wide v1, p1

    .local v1, "n":J
    move-wide v8, v1

    move-wide v3, v8

    .line 616
    .local v3, "remaining":J
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v8, v8

    new-array v8, v8, [C

    move-object v5, v8

    .line 618
    .local v5, "ch":[C
    :cond_0
    move-object v8, v5

    array-length v8, v8

    int-to-long v8, v8

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move-object v8, v5

    array-length v8, v8

    :goto_0
    move v6, v8

    .line 619
    .local v6, "length":I
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v8

    move v7, v8

    .line 620
    .local v7, "count":I
    move v8, v7

    if-lez v8, :cond_1

    .line 621
    move-wide v8, v3

    move v10, v7

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v3, v8

    .line 626
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 628
    :cond_1
    move-wide v8, v1

    move-wide v10, v3

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 629
    .end local v7    # "count":I
    .local v6, "skipped":J
    move-wide v8, v6

    move-wide v0, v8

    .end local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    return-wide v0

    .line 618
    .end local v6    # "skipped":J
    .restart local v0    # "this":Lorg/apache/xerces/impl/io/UTF8Reader;
    :cond_2
    move-wide v8, v3

    long-to-int v8, v8

    goto :goto_0
.end method

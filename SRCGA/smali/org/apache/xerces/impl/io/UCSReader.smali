.class public Lorg/apache/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected fBuffer:[B

.field protected fEncoding:S

.field protected fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move v2, p2

    .local v2, "size":I
    move v3, p3

    .local v3, "encoding":S
    move-object v5, v0

    invoke-direct {v5}, Ljava/io/Reader;-><init>()V

    .line 130
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    .line 131
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v5

    move-object v4, v5

    .line 132
    .local v4, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v5, v0

    move-object v6, v4

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    if-nez v5, :cond_0

    .line 134
    move-object v5, v0

    move v6, v2

    new-array v6, v6, [B

    iput-object v6, v5, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 136
    :cond_0
    move-object v5, v0

    move v6, v3

    iput-short v6, v5, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move v2, p2

    .local v2, "encoding":S
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x2000

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    .line 118
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
    .line 340
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    invoke-static {}, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;

    move-result-object v2

    move-object v1, v2

    .line 341
    .local v1, "ba":Lcom/sun/xml/stream/util/BufferAllocator;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 342
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 343
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 344
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
    .line 312
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move v1, p1

    .local v1, "readAheadLimit":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 313
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
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
    .line 157
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v1, v5

    .line 158
    .local v1, "b0":I
    move v5, v1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    .line 159
    const/4 v5, -0x1

    move v0, v5

    .line 179
    .end local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :goto_0
    return v0

    .line 160
    .restart local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v2, v5

    .line 161
    .local v2, "b1":I
    move v5, v2

    const/16 v6, 0xff

    if-ne v5, v6, :cond_1

    .line 162
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 163
    :cond_1
    move-object v5, v0

    iget-short v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5

    .line 164
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 165
    .local v3, "b2":I
    move v5, v3

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    .line 166
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 167
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 168
    .local v4, "b3":I
    move v5, v4

    const/16 v6, 0xff

    if-ne v5, v6, :cond_3

    .line 169
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 170
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "b0 is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " b1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " b2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " b3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    move-object v5, v0

    iget-short v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 172
    move v5, v1

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v2

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    move v6, v4

    add-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 174
    :cond_4
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    move v6, v2

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 176
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    :cond_5
    move-object v5, v0

    iget-short v5, v5, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 177
    move v5, v1

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    move v6, v2

    add-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 179
    :cond_6
    move v5, v2

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    goto/16 :goto_0
.end method

.method public read([CII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object/from16 v1, p1

    .local v1, "ch":[C
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "length":I
    move v13, v3

    move-object v14, v0

    iget-short v14, v14, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    const/4 v14, 0x2

    :goto_0
    shl-int/2addr v13, v14

    move v4, v13

    .line 199
    .local v4, "byteLength":I
    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v14, v14

    if-le v13, v14, :cond_0

    .line 200
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v13, v13

    move v4, v13

    .line 202
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    move v5, v13

    .line 203
    .local v5, "count":I
    move v13, v5

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const/4 v13, -0x1

    move v0, v13

    .line 252
    .end local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :goto_1
    return v0

    .line 198
    .end local v4    # "byteLength":I
    .end local v5    # "count":I
    .restart local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :cond_1
    const/4 v14, 0x1

    goto :goto_0

    .line 205
    .restart local v4    # "byteLength":I
    .restart local v5    # "count":I
    :cond_2
    move-object v13, v0

    iget-short v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v14, 0x4

    if-lt v13, v14, :cond_6

    .line 207
    const/4 v13, 0x4

    move v14, v5

    const/4 v15, 0x3

    and-int/lit8 v14, v14, 0x3

    rsub-int/lit8 v13, v14, 0x4

    const/4 v14, 0x3

    and-int/lit8 v13, v13, 0x3

    move v6, v13

    .line 208
    .local v6, "numToRead":I
    const/4 v13, 0x0

    move v7, v13

    .local v7, "i":I
    :goto_2
    move v13, v7

    move v14, v6

    if-ge v13, v14, :cond_3

    .line 209
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    move v8, v13

    .line 210
    .local v8, "charRead":I
    move v13, v8

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 211
    move v13, v7

    move v9, v13

    .local v9, "j":I
    :goto_3
    move v13, v9

    move v14, v6

    if-ge v13, v14, :cond_3

    .line 212
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v5

    move v15, v9

    add-int/2addr v14, v15

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 213
    .line 218
    .end local v8    # "charRead":I
    .end local v9    # "j":I
    :cond_3
    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v5, v13

    .line 233
    .end local v7    # "i":I
    :cond_4
    :goto_4
    move v13, v5

    move-object v14, v0

    iget-short v14, v14, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_8

    const/4 v14, 0x2

    :goto_5
    shr-int/2addr v13, v14

    move v6, v13

    .line 234
    .local v6, "numChars":I
    const/4 v13, 0x0

    move v7, v13

    .line 235
    .local v7, "curPos":I
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i":I
    :goto_6
    move v13, v8

    move v14, v6

    if-ge v13, v14, :cond_c

    .line 236
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v9, v13

    .line 237
    .local v9, "b0":I
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v10, v13

    .line 238
    .local v10, "b1":I
    move-object v13, v0

    iget-short v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v14, 0x4

    if-lt v13, v14, :cond_a

    .line 239
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v11, v13

    .line 240
    .local v11, "b2":I
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v12, v13

    .line 241
    .local v12, "b3":I
    move-object v13, v0

    iget-short v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v14, 0x8

    if-ne v13, v14, :cond_9

    .line 242
    move-object v13, v1

    move v14, v2

    move v15, v8

    add-int/2addr v14, v15

    move v15, v9

    const/16 v16, 0x18

    shl-int/lit8 v15, v15, 0x18

    move/from16 v16, v10

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    add-int v15, v15, v16

    move/from16 v16, v11

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    move/from16 v16, v12

    add-int v15, v15, v16

    int-to-char v15, v15

    aput-char v15, v13, v14

    .line 245
    .line 235
    .end local v11    # "b2":I
    .end local v12    # "b3":I
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 215
    .end local v9    # "b0":I
    .end local v10    # "b1":I
    .local v6, "numToRead":I
    .local v7, "i":I
    .local v8, "charRead":I
    :cond_5
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v5

    move v15, v7

    add-int/2addr v14, v15

    move v15, v8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 220
    .end local v6    # "numToRead":I
    .end local v7    # "i":I
    .end local v8    # "charRead":I
    :cond_6
    move v13, v5

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    move v6, v13

    .line 221
    .restart local v6    # "numToRead":I
    move v13, v6

    if-eqz v13, :cond_4

    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 223
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    move v7, v13

    .line 224
    .local v7, "charRead":I
    move v13, v7

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 225
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v5

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    goto/16 :goto_4

    .line 227
    :cond_7
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    move v14, v5

    move v15, v7

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    goto/16 :goto_4

    .line 233
    .end local v7    # "charRead":I
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 244
    .local v6, "numChars":I
    .local v7, "curPos":I
    .local v8, "i":I
    .restart local v9    # "b0":I
    .restart local v10    # "b1":I
    .restart local v11    # "b2":I
    .restart local v12    # "b3":I
    :cond_9
    move-object v13, v1

    move v14, v2

    move v15, v8

    add-int/2addr v14, v15

    move v15, v12

    const/16 v16, 0x18

    shl-int/lit8 v15, v15, 0x18

    move/from16 v16, v11

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    add-int v15, v15, v16

    move/from16 v16, v10

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    move/from16 v16, v9

    add-int v15, v15, v16

    int-to-char v15, v15

    aput-char v15, v13, v14

    goto :goto_7

    .line 246
    .end local v11    # "b2":I
    .end local v12    # "b3":I
    :cond_a
    move-object v13, v0

    iget-short v13, v13, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    .line 247
    move-object v13, v1

    move v14, v2

    move v15, v8

    add-int/2addr v14, v15

    move v15, v9

    const/16 v16, 0x8

    shl-int/lit8 v15, v15, 0x8

    move/from16 v16, v10

    add-int v15, v15, v16

    int-to-char v15, v15

    aput-char v15, v13, v14

    goto :goto_7

    .line 249
    :cond_b
    move-object v13, v1

    move v14, v2

    move v15, v8

    add-int/2addr v14, v15

    move v15, v10

    const/16 v16, 0x8

    shl-int/lit8 v15, v15, 0x8

    move/from16 v16, v9

    add-int v15, v15, v16

    int-to-char v15, v15

    aput-char v15, v13, v14

    goto/16 :goto_7

    .line 252
    .end local v9    # "b0":I
    .end local v10    # "b1":I
    :cond_c
    move v13, v6

    move v0, v13

    goto/16 :goto_1
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
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
    .line 329
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 330
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
    .line 272
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/io/UCSReader;
    move-wide v1, p1

    .local v1, "n":J
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    const/4 v6, 0x2

    :goto_0
    move v3, v6

    .line 273
    .local v3, "charWidth":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move-wide v7, v1

    move v9, v3

    shl-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 274
    .local v4, "bytesSkipped":J
    move-wide v6, v4

    move v8, v3

    const/4 v9, 0x1

    or-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-wide v6, v4

    move v8, v3

    shr-long/2addr v6, v8

    move-wide v0, v6

    .line 275
    .end local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :goto_1
    return-wide v0

    .line 272
    .end local v3    # "charWidth":I
    .end local v4    # "bytesSkipped":J
    .restart local v0    # "this":Lorg/apache/xerces/impl/io/UCSReader;
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 275
    .restart local v3    # "charWidth":I
    .restart local v4    # "bytesSkipped":J
    :cond_1
    move-wide v6, v4

    move v8, v3

    shr-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_1
.end method

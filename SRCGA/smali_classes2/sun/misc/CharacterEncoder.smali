.class public abstract Lsun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    move-object v2, v4

    .line 221
    .local v2, "buf":[B
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object v3, v4

    .line 223
    .local v3, "tmp":[B
    move-object v4, v3

    array-length v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v3

    array-length v4, v4

    move-object v5, v1

    .line 224
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 225
    move-object v4, v3

    move-object v2, v4

    .line 226
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    .line 230
    .end local v3    # "tmp":[B
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 236
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    move-object v2, v4

    .line 241
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 244
    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":Ljava/nio/ByteBuffer;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    move-object v2, v3

    .line 267
    .local v2, "buf":[B
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 10

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v6

    .line 188
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v6

    .line 189
    .local v3, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    move-object v4, v6

    .line 191
    .local v4, "retVal":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 193
    move-object v6, v2

    const-string v7, "8859_1"

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 197
    .line 198
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    return-object v0

    .line 194
    .restart local v0    # "this":Lsun/misc/CharacterEncoder;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 196
    .local v5, "IOException":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "CharacterEncoder.encode internal error"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "inStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "outStream":Ljava/io/OutputStream;
    move-object v6, v0

    invoke-virtual {v6}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v6

    new-array v6, v6, [B

    move-object v5, v6

    .line 147
    .local v5, "tmpbuffer":[B
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 150
    :goto_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v6

    move v4, v6

    .line 151
    .local v4, "numBytes":I
    move v6, v4

    if-nez v6, :cond_0

    .line 152
    .line 169
    :goto_1
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 170
    return-void

    .line 154
    :cond_0
    move-object v6, v0

    move-object v7, v2

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 155
    const/4 v6, 0x0

    move v3, v6

    .local v3, "j":I
    :goto_2
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 157
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v7

    add-int/2addr v6, v7

    move v7, v4

    if-gt v6, v7, :cond_1

    .line 158
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 155
    :goto_3
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    goto :goto_2

    .line 160
    :cond_1
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    move v9, v3

    move v10, v4

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_3

    .line 163
    :cond_2
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 164
    goto :goto_1

    .line 166
    :cond_3
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "aStream":Ljava/io/OutputStream;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    move-object v3, v4

    .line 256
    .local v3, "buf":[B
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lsun/misc/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 257
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":[B
    move-object v2, p2

    .local v2, "aStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v4

    .line 179
    .local v3, "inStream":Ljava/io/ByteArrayInputStream;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 180
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":Ljava/nio/ByteBuffer;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    move-object v2, v3

    .line 351
    .local v2, "buf":[B
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    return-object v0
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 9

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v5

    .line 321
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    .line 323
    .local v3, "inStream":Ljava/io/ByteArrayInputStream;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    return-object v0

    .line 324
    .restart local v0    # "this":Lsun/misc/CharacterEncoder;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 326
    .local v4, "IOException":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Error;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "inStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "outStream":Ljava/io/OutputStream;
    move-object v6, v0

    invoke-virtual {v6}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v6

    new-array v6, v6, [B

    move-object v5, v6

    .line 282
    .local v5, "tmpbuffer":[B
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 285
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v6

    move v4, v6

    .line 286
    .local v4, "numBytes":I
    move v6, v4

    if-nez v6, :cond_1

    .line 287
    .line 302
    :goto_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 303
    return-void

    .line 289
    :cond_1
    move-object v6, v0

    move-object v7, v2

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 290
    const/4 v6, 0x0

    move v3, v6

    .local v3, "j":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 291
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v7

    add-int/2addr v6, v7

    move v7, v4

    if-gt v6, v7, :cond_2

    .line 292
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 290
    :goto_2
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    goto :goto_1

    .line 294
    :cond_2
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    move v9, v3

    move v10, v4

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    .line 297
    :cond_3
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 298
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 299
    goto :goto_0
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "aStream":Ljava/io/OutputStream;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    move-object v3, v4

    .line 340
    .local v3, "buf":[B
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 341
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aBuffer":[B
    move-object v2, p2

    .local v2, "aStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v4

    .line 312
    .local v3, "inStream":Ljava/io/ByteArrayInputStream;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 313
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aStream":Ljava/io/OutputStream;
    move-object v2, v0

    new-instance v3, Ljava/io/PrintStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, v2, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 93
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "aStream":Ljava/io/OutputStream;
    move-object v2, v0

    iget-object v2, v2, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 114
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterEncoder;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "buffer":[B
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 127
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    move v4, v5

    .line 128
    .local v4, "q":I
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 129
    move v5, v3

    move v0, v5

    .line 132
    .end local v0    # "this":Lsun/misc/CharacterEncoder;
    .end local v4    # "q":I
    :goto_1
    return v0

    .line 130
    .restart local v0    # "this":Lsun/misc/CharacterEncoder;
    .restart local v4    # "q":I
    :cond_0
    move-object v5, v2

    move v6, v3

    move v7, v4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "q":I
    :cond_1
    move-object v5, v2

    array-length v5, v5

    move v0, v5

    goto :goto_1
.end method

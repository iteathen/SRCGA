.class public abstract Lsun/misc/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "aStream":Ljava/io/PushbackInputStream;
    move-object v2, p2

    .local v2, "bStream":Ljava/io/OutputStream;
    move v3, p3

    .local v3, "l":I
    new-instance v4, Lsun/misc/CEStreamExhausted;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v4
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "aStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "bStream":Ljava/io/OutputStream;
    const/4 v8, 0x0

    move v4, v8

    .line 155
    .local v4, "totalBytes":I
    new-instance v8, Ljava/io/PushbackInputStream;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v8

    .line 156
    .local v5, "ps":Ljava/io/PushbackInputStream;
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lsun/misc/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 161
    :goto_0
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    :try_start_0
    invoke-virtual {v8, v9, v10}, Lsun/misc/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v8

    move v6, v8

    .line 162
    .local v6, "length":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_1
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 163
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 164
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 162
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v9

    add-int/2addr v8, v9

    move v3, v8

    goto :goto_1

    .line 166
    :cond_0
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v6

    if-ne v8, v9, :cond_1

    .line 167
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 168
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 173
    :goto_2
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lsun/misc/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 176
    goto :goto_0

    .line 170
    :cond_1
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    move v11, v6

    move v12, v3

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Lsun/misc/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    move v8, v4

    move v9, v6

    move v10, v3

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    move v4, v8

    goto :goto_2

    .line 174
    .end local v3    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 178
    .local v7, "e":Lsun/misc/CEStreamExhausted;
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lsun/misc/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 179
    return-void
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 203
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    return-object v0
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "inputString":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [B

    move-object v2, v5

    .line 191
    .local v2, "inputBuffer":[B
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getBytes(II[BI)V

    .line 192
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    .line 193
    .local v3, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v5

    .line 194
    .local v4, "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 195
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    return-object v0
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    return-object v0
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "inputString":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    return-object v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "aStream":Ljava/io/PushbackInputStream;
    move-object v2, p2

    .local v2, "bStream":Ljava/io/OutputStream;
    move-object v3, v0

    invoke-virtual {v3}, Lsun/misc/CharacterDecoder;->bytesPerLine()I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    return v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lsun/misc/CharacterDecoder;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "buffer":[B
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "len":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 136
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move v6, v7

    .line 137
    .local v6, "q":I
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 138
    move v7, v5

    if-nez v7, :cond_0

    const/4 v7, -0x1

    :goto_1
    move v0, v7

    .line 141
    .end local v0    # "this":Lsun/misc/CharacterDecoder;
    .end local v6    # "q":I
    :goto_2
    return v0

    .line 138
    .restart local v0    # "this":Lsun/misc/CharacterDecoder;
    .restart local v6    # "q":I
    :cond_0
    move v7, v5

    goto :goto_1

    .line 139
    :cond_1
    move-object v7, v2

    move v8, v5

    move v9, v3

    add-int/2addr v8, v9

    move v9, v6

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .end local v6    # "q":I
    :cond_2
    move v7, v4

    move v0, v7

    goto :goto_2
.end method

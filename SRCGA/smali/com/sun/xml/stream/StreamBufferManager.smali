.class public Lcom/sun/xml/stream/StreamBufferManager;
.super Lcom/sun/xml/stream/BufferManager;
.source "StreamBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_LENGTH:I = 0x2000


# instance fields
.field charBuffer:Ljava/nio/CharBuffer;

.field fAllowJavaEncodings:Z

.field fReader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/BufferManager;-><init>()V

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    .line 72
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    .line 77
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/StreamBufferManager;->init(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 276
    .local v1, "file":Ljava/io/File;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url parameter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    new-instance v6, Ljava/net/URL;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 278
    .local v2, "url":Ljava/net/URL;
    new-instance v6, Lcom/sun/xml/stream/StreamBufferManager;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/StreamBufferManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v6

    .line 279
    .local v3, "sb":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/xml/stream/StreamBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    move-object v4, v6

    .line 280
    .local v4, "cb":Ljava/nio/CharBuffer;
    const/4 v6, 0x0

    move v5, v6

    .line 281
    .local v5, "i":I
    :goto_0
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/xml/stream/StreamBufferManager;->getMore()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/xml/stream/StreamBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End of stream reached = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/xml/stream/StreamBufferManager;->endOfStream()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total no. of loops required = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .line 290
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "sb":Lcom/sun/xml/stream/StreamBufferManager;
    .end local v4    # "cb":Ljava/nio/CharBuffer;
    .end local v5    # "i":I
    :goto_1
    return-void

    .line 287
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 288
    .local v1, "ex":Ljava/lang/Exception;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public arrangeCapacity(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move v1, p1

    .local v1, "length":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 294
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 296
    :cond_0
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object/from16 v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "isBigEndian":Ljava/lang/Boolean;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 198
    const-string v8, "UTF-8"

    move-object v2, v8

    .line 202
    :cond_0
    move-object v8, v2

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 203
    .local v4, "ENCODING":Ljava/lang/String;
    move-object v8, v4

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    new-instance v8, Lorg/apache/xerces/impl/io/UTF8Reader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/16 v11, 0x2000

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    .line 263
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    :goto_0
    return-object v0

    .line 210
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    :cond_1
    move-object v8, v4

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    new-instance v8, Lorg/apache/xerces/impl/io/ASCIIReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/16 v11, 0x2000

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    goto :goto_0

    .line 216
    :cond_2
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 217
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 218
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 219
    .local v5, "isBE":Z
    move v8, v5

    if-eqz v8, :cond_3

    .line 220
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 222
    :cond_3
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 225
    .end local v5    # "isBE":Z
    :cond_4
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Encoding byte order not supported"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 228
    :cond_5
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 229
    move-object v8, v3

    if-eqz v8, :cond_7

    .line 230
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 231
    .restart local v5    # "isBE":Z
    move v8, v5

    if-eqz v8, :cond_6

    .line 232
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 234
    :cond_6
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto/16 :goto_0

    .line 237
    .end local v5    # "isBE":Z
    :cond_7
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Encoding byte order not supported"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 242
    :cond_8
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 243
    .local v5, "validIANA":Z
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 244
    .local v6, "validJava":Z
    move v8, v5

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_a

    move v8, v6

    if-nez v8, :cond_a

    .line 245
    :cond_9
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encoding declaration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "not valid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 248
    :cond_a
    move-object v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 249
    .local v7, "javaEncoding":Ljava/lang/String;
    move-object v8, v7

    if-nez v8, :cond_b

    .line 250
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_c

    .line 251
    move-object v8, v2

    move-object v7, v8

    .line 263
    :cond_b
    new-instance v8, Ljava/io/BufferedReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 253
    :cond_c
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encoding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not supported"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getCharBuffer()Ljava/nio/CharBuffer;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    return-object v0
.end method

.method getLength()I
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    const/16 v1, 0x2000

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    return v0
.end method

.method public getMore()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v4

    .line 154
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    move-object v1, v4

    .line 155
    .local v1, "ch":[C
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    move v2, v4

    .line 157
    .local v2, "offset":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v4

    move v3, v4

    .line 162
    .local v3, "count":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 163
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/StreamBufferManager;->endOfStream:Z

    .line 164
    const/4 v4, 0x0

    move v0, v4

    .line 174
    .end local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    :goto_0
    return v0

    .line 166
    .restart local v0    # "this":Lcom/sun/xml/stream/StreamBufferManager;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    move-object v5, v1

    invoke-static {v5}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 168
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    .line 171
    move v4, v3

    if-lez v4, :cond_2

    .line 172
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 174
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method init(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/StreamBufferManager;
    move-object/from16 v2, p1

    .local v2, "istream":Ljava/io/InputStream;
    move-object/from16 v3, p2

    .local v3, "encoding":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v4, v13

    .line 83
    .local v4, "isBigEndian":Ljava/lang/Boolean;
    new-instance v13, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v16}, Lcom/sun/xml/stream/StreamBufferManager$RewindableInputStream;-><init>(Lcom/sun/xml/stream/StreamBufferManager;Ljava/io/InputStream;)V

    move-object v5, v13

    .line 88
    .local v5, "stream":Ljava/io/InputStream;
    move-object v13, v3

    if-nez v13, :cond_3

    .line 93
    const/4 v13, 0x4

    new-array v13, v13, [B

    move-object v6, v13

    .line 94
    .local v6, "b4":[B
    const/4 v13, 0x0

    move v7, v13

    .line 95
    .local v7, "count":I
    :goto_0
    move v13, v7

    const/4 v14, 0x4

    if-ge v13, v14, :cond_0

    .line 96
    move-object v13, v6

    move v14, v7

    move-object v15, v5

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    :cond_0
    move v13, v7

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 99
    move-object v13, v1

    move-object v14, v6

    move v15, v7

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/StreamBufferManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    .line 100
    .local v8, "encodingDesc":[Ljava/lang/Object;
    move-object v13, v8

    const/4 v14, 0x0

    aget-object v13, v13, v14

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/String;

    move-object v3, v13

    .line 101
    move-object v13, v8

    const/4 v14, 0x1

    aget-object v13, v13, v14

    check-cast v13, Ljava/lang/Boolean;

    check-cast v13, Ljava/lang/Boolean;

    move-object v4, v13

    .line 102
    move-object v13, v5

    invoke-virtual {v13}, Ljava/io/InputStream;->reset()V

    .line 103
    const/4 v13, 0x0

    move v9, v13

    .line 107
    .local v9, "offset":I
    move v13, v7

    const/4 v14, 0x2

    if-le v13, v14, :cond_1

    move-object v13, v3

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 108
    move-object v13, v6

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v10, v13

    .line 109
    .local v10, "b0":I
    move-object v13, v6

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v11, v13

    .line 110
    .local v11, "b1":I
    move-object v13, v6

    const/4 v14, 0x2

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v12, v13

    .line 112
    .local v12, "b2":I
    move v13, v10

    const/16 v14, 0xef

    if-ne v13, v14, :cond_1

    move v13, v11

    const/16 v14, 0xbb

    if-ne v13, v14, :cond_1

    move v13, v12

    const/16 v14, 0xbf

    if-ne v13, v14, :cond_1

    .line 114
    move-object v13, v5

    const-wide/16 v14, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v13

    .line 120
    .end local v10    # "b0":I
    .end local v11    # "b1":I
    .end local v12    # "b2":I
    :cond_1
    move-object v13, v1

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v17}, Lcom/sun/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    .line 121
    .line 125
    .line 131
    .end local v6    # "b4":[B
    .end local v7    # "count":I
    .end local v8    # "encodingDesc":[Ljava/lang/Object;
    .end local v9    # "offset":I
    :goto_1
    move-object v13, v1

    const/16 v14, 0x2000

    invoke-static {v14}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 132
    return-void

    .line 123
    .restart local v6    # "b4":[B
    .restart local v7    # "count":I
    :cond_2
    move-object v13, v1

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v17}, Lcom/sun/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    goto :goto_1

    .line 128
    .end local v6    # "b4":[B
    .end local v7    # "count":I
    :cond_3
    move-object v13, v1

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v17}, Lcom/sun/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    goto :goto_1
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
    .line 301
    return-void
.end method

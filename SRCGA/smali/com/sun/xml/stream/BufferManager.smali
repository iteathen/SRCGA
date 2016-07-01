.class public abstract Lcom/sun/xml/stream/BufferManager;
.super Ljava/lang/Object;
.source "BufferManager.java"


# static fields
.field static DEBUG:Z


# instance fields
.field protected endOfStream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/xml/stream/BufferManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/BufferManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/BufferManager;->endOfStream:Z

    return-void
.end method

.method public static getBufferManager(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lcom/sun/xml/stream/BufferManager;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 65
    .local v1, "stream":Ljava/io/InputStream;
    move-object v2, v1

    instance-of v2, v2, Ljava/io/FileInputStream;

    if-eqz v2, :cond_1

    .line 66
    sget-boolean v2, Lcom/sun/xml/stream/BufferManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Using FileBufferManager"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v2, Lcom/sun/xml/stream/FileBufferManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    check-cast v4, Ljava/io/FileInputStream;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/FileBufferManager;-><init>(Ljava/io/FileInputStream;Ljava/lang/String;)V

    move-object v0, v2

    .line 74
    .end local v0    # "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    :cond_1
    sget-boolean v2, Lcom/sun/xml/stream/BufferManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 72
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Using StreamBufferManager"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_2
    new-instance v2, Lcom/sun/xml/stream/StreamBufferManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/StreamBufferManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 215
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 216
    .local v1, "file":Ljava/io/File;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url parameter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    new-instance v7, Ljava/net/URL;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 218
    .local v2, "url":Ljava/net/URL;
    new-instance v7, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/io/FileInputStream;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v1

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v13, "UTF-8"

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v7

    .line 219
    .local v3, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/xml/stream/BufferManager;->getBufferManager(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lcom/sun/xml/stream/BufferManager;

    move-result-object v7

    move-object v4, v7

    .line 220
    .local v4, "sb":Lcom/sun/xml/stream/BufferManager;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/xml/stream/BufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v7

    move-object v5, v7

    .line 221
    .local v5, "cb":Ljava/nio/CharBuffer;
    const/4 v7, 0x0

    move v6, v7

    .line 222
    .local v6, "i":I
    :goto_0
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/xml/stream/BufferManager;->getMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/xml/stream/BufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of stream reached = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/xml/stream/BufferManager;->endOfStream()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total no. of loops required = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    .end local v4    # "sb":Lcom/sun/xml/stream/BufferManager;
    .end local v5    # "cb":Ljava/nio/CharBuffer;
    .end local v6    # "i":I
    :goto_1
    return-void

    .line 228
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 229
    .local v1, "ex":Ljava/lang/Exception;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abstract arrangeCapacity(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public endOfStream()Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/BufferManager;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/BufferManager;->endOfStream:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/BufferManager;
    return v0
.end method

.method public abstract getCharBuffer()Ljava/nio/CharBuffer;
.end method

.method protected getEncodingName([BI)[Ljava/lang/Object;
    .locals 14

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/BufferManager;
    move-object v1, p1

    .local v1, "b4":[B
    move/from16 v2, p2

    .local v2, "count":I
    move v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 138
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    .line 209
    .end local v0    # "this":Lcom/sun/xml/stream/BufferManager;
    :goto_0
    return-object v0

    .line 142
    .restart local v0    # "this":Lcom/sun/xml/stream/BufferManager;
    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v3, v7

    .line 143
    .local v3, "b0":I
    move-object v7, v1

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v4, v7

    .line 144
    .local v4, "b1":I
    move v7, v3

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_1

    move v7, v4

    const/16 v8, 0xff

    if-ne v7, v8, :cond_1

    .line 146
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16BE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 148
    :cond_1
    move v7, v3

    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    move v7, v4

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_2

    .line 150
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16LE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 155
    :cond_2
    move v7, v2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 156
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 160
    :cond_3
    move-object v7, v1

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v5, v7

    .line 161
    .local v5, "b2":I
    move v7, v3

    const/16 v8, 0xef

    if-ne v7, v8, :cond_4

    move v7, v4

    const/16 v8, 0xbb

    if-ne v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0xbf

    if-ne v7, v8, :cond_4

    .line 162
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 167
    :cond_4
    move v7, v2

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    .line 168
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 172
    :cond_5
    move-object v7, v1

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v6, v7

    .line 173
    .local v6, "b3":I
    move v7, v3

    if-nez v7, :cond_6

    move v7, v4

    if-nez v7, :cond_6

    move v7, v5

    if-nez v7, :cond_6

    move v7, v6

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_6

    .line 175
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 177
    :cond_6
    move v7, v3

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_7

    move v7, v4

    if-nez v7, :cond_7

    move v7, v5

    if-nez v7, :cond_7

    move v7, v6

    if-nez v7, :cond_7

    .line 179
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 181
    :cond_7
    move v7, v3

    if-nez v7, :cond_8

    move v7, v4

    if-nez v7, :cond_8

    move v7, v5

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_8

    move v7, v6

    if-nez v7, :cond_8

    .line 184
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 186
    :cond_8
    move v7, v3

    if-nez v7, :cond_9

    move v7, v4

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_9

    move v7, v5

    if-nez v7, :cond_9

    move v7, v6

    if-nez v7, :cond_9

    .line 189
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 191
    :cond_9
    move v7, v3

    if-nez v7, :cond_a

    move v7, v4

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_a

    move v7, v5

    if-nez v7, :cond_a

    move v7, v6

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_a

    .line 195
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16BE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 197
    :cond_a
    move v7, v3

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_b

    move v7, v4

    if-nez v7, :cond_b

    move v7, v5

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_b

    move v7, v6

    if-nez v7, :cond_b

    .line 200
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16LE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 202
    :cond_b
    move v7, v3

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_c

    move v7, v4

    const/16 v8, 0x6f

    if-ne v7, v8, :cond_c

    move v7, v5

    const/16 v8, 0xa7

    if-ne v7, v8, :cond_c

    move v7, v6

    const/16 v8, 0x94

    if-ne v7, v8, :cond_c

    .line 205
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "CP037"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 209
    :cond_c
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public abstract getMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

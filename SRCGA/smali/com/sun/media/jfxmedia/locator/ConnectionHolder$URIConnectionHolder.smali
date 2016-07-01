.class Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
.super Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.source "ConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URIConnectionHolder"
.end annotation


# instance fields
.field private uri:Ljava/net/URI;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, p2

    .local v2, "connectionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;-><init>()V

    .line 244
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->uri:Ljava/net/URI;

    .line 245
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 246
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 247
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v4, v6

    .line 248
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 249
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 250
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    goto :goto_0

    .line 254
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->openChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 255
    return-void
.end method

.method private openChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 339
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    .line 340
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    return-object v0

    .line 339
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    :cond_0
    move-object v2, v1

    .line 340
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public closeConnection()V
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->closeConnection()V

    .line 333
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    .line 334
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 335
    return-void
.end method

.method isRandomAccess()Z
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    return v0
.end method

.method isSeekable()Z
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljava/net/JarURLConnection;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method needBuffer()Z
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 259
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "http"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
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
    .line 271
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-wide v2, p1

    .local v2, "position":J
    move v4, p3

    .local v4, "size":I
    new-instance v5, Ljava/io/IOException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method public seek(J)J
    .locals 15

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    move-wide/from16 v1, p1

    .local v1, "position":J
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    instance-of v8, v8, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_5

    .line 276
    const/4 v8, 0x0

    move-object v3, v8

    .line 280
    .local v3, "tmpURLConnection":Ljava/net/URLConnection;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v3, v8

    .line 282
    move-object v8, v3

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v4, v8

    .line 283
    .local v4, "httpConnection":Ljava/net/HttpURLConnection;
    move-object v8, v4

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 284
    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 285
    move-object v8, v4

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v8, v4

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xce

    if-ne v8, v9, :cond_1

    .line 289
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->closeConnection()V

    .line 290
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 291
    const/4 v8, 0x0

    move-object v3, v8

    .line 292
    move-object v8, v0

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->openChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    move-wide v8, v1

    move-wide v5, v8

    .line 300
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 301
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    :cond_0
    move-wide v8, v5

    move-wide v0, v8

    .line 326
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    .end local v3    # "tmpURLConnection":Ljava/net/URLConnection;
    .end local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-wide v0

    .line 295
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;
    .restart local v3    # "tmpURLConnection":Ljava/net/URLConnection;
    .restart local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_1
    const-wide/16 v8, -0x1

    move-wide v5, v8

    .line 300
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 301
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    :cond_2
    move-wide v8, v5

    move-wide v0, v8

    goto :goto_0

    .line 297
    .end local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 298
    .local v4, "ioex":Ljava/io/IOException;
    const-wide/16 v8, -0x1

    move-wide v5, v8

    .line 300
    move-object v8, v3

    if-eqz v8, :cond_3

    .line 301
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    :cond_3
    move-wide v8, v5

    move-wide v0, v8

    goto :goto_0

    .line 300
    .end local v4    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    if-eqz v8, :cond_4

    .line 301
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    :cond_4
    move-object v8, v7

    throw v8

    .line 304
    .end local v3    # "tmpURLConnection":Ljava/net/URLConnection;
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    instance-of v8, v8, Ljava/net/JarURLConnection;

    if-eqz v8, :cond_7

    .line 306
    move-object v8, v0

    :try_start_1
    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->closeConnection()V

    .line 308
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->uri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 311
    move-wide v8, v1

    move-wide v3, v8

    .line 312
    .local v3, "skip_left":J
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 314
    .local v5, "inputStream":Ljava/io/InputStream;
    :cond_6
    move-object v8, v5

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    move-wide v6, v8

    .line 315
    .local v6, "skip":J
    move-wide v8, v3

    move-wide v10, v6

    sub-long/2addr v8, v10

    move-wide v3, v8

    .line 316
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    .line 318
    move-object v8, v0

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->openChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$URIConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    move-wide v8, v1

    move-wide v0, v8

    goto :goto_0

    .line 321
    .end local v3    # "skip_left":J
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "skip":J
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 322
    .local v3, "ioex":Ljava/io/IOException;
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0

    .line 326
    .end local v3    # "ioex":Ljava/io/IOException;
    :cond_7
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_0
.end method

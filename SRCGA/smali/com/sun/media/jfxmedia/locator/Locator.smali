.class public Lcom/sun/media/jfxmedia/locator/Locator;
.super Ljava/lang/Object;
.source "Locator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    }
.end annotation


# static fields
.field private static final CONNECTION_RETRY_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final MAX_CONNECTION_ATTEMPTS:I = 0x5


# instance fields
.field private cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

.field private canBlock:Z

.field private connectionProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected contentLength:J

.field protected contentType:Ljava/lang/String;

.field private isIpod:Z

.field private final propertyLock:Ljava/lang/Object;

.field private protocol:Ljava/lang/String;

.field private readySignal:Ljava/util/concurrent/CountDownLatch;

.field private scheme:Ljava/lang/String;

.field protected uri:Ljava/net/URI;

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v3, v0

    const-string v4, "application/octet-stream"

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 77
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    .line 91
    move-object v3, v0

    new-instance v4, Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->propertyLock:Ljava/lang/Object;

    .line 96
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    .line 97
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    .line 98
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    .line 103
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    .line 109
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock:Z

    .line 114
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    .line 203
    move-object v3, v1

    if-nez v3, :cond_0

    .line 204
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "uri == null!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    .line 209
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    .line 210
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 211
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri.getScheme() == null! uri == \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    const-string v4, "jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    new-instance v3, Ljava/net/URI;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 218
    .local v2, "subURI":Ljava/net/URI;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    .line 219
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri.getScheme() == null! subURI == \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    .line 223
    .line 227
    .end local v2    # "subURI":Ljava/net/URI;
    :goto_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v4, "ipod-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->isIpod:Z

    .line 232
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->isIpod:Z

    if-nez v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 233
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protocol \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    :cond_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 238
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock:Z

    .line 242
    :cond_6
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    .line 243
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/net/URLConnection;)Ljava/lang/reflect/Method;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/Locator;->lambda$getContentLengthLong$1(Ljava/net/URLConnection;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static closeConnection(Ljava/net/URLConnection;)V
    .locals 6

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "connection":Ljava/net/URLConnection;
    move-object v4, v0

    instance-of v4, v4, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 616
    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v1, v4

    .line 618
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x190

    if-ge v4, v5, :cond_0

    move-object v4, v1

    .line 619
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 620
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .line 630
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 624
    .local v2, "ex":Ljava/io/IOException;
    move-object v4, v1

    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 625
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 627
    :cond_1
    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method private getConnection(Ljava/net/URI;Ljava/lang/String;)Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object/from16 v2, p2

    .local v2, "requestMethod":Ljava/lang/String;
    new-instance v10, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;-><init>(Lcom/sun/media/jfxmedia/locator/Locator$1;)V

    move-object v3, v10

    .line 135
    .local v3, "locatorConnection":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v4, v10

    .line 136
    .local v4, "connection":Ljava/net/HttpURLConnection;
    move-object v10, v4

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->propertyLock:Ljava/lang/Object;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v5, v11

    monitor-enter v10

    .line 140
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    if-eqz v10, :cond_1

    .line 141
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_0
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 142
    .local v7, "key":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 143
    .local v8, "value":Ljava/lang/Object;
    move-object v10, v8

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 144
    move-object v10, v4

    move-object v11, v7

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    goto :goto_0

    .line 148
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    move-object v10, v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    iput v11, v10, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->responseCode:I

    .line 153
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 154
    move-object v10, v3

    move-object v11, v4

    iput-object v11, v10, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    .line 159
    :goto_1
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0

    .line 148
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v5

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v9

    throw v10

    .line 156
    :cond_2
    move-object v10, v4

    invoke-static {v10}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    .line 157
    move-object v10, v3

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    goto :goto_1
.end method

.method private static getContentLengthLong(Ljava/net/URLConnection;)J
    .locals 7

    .prologue
    .line 163
    move-object v1, p0

    .local v1, "connection":Ljava/net/URLConnection;
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/Locator$$Lambda$1;->lambdaFactory$(Ljava/net/URLConnection;)Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    move-object v2, v4

    .line 172
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 173
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v1, v4

    .line 178
    .end local v1    # "connection":Ljava/net/URLConnection;
    :goto_0
    return-wide v1

    .line 175
    .restart local v1    # "connection":Ljava/net/URLConnection;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    int-to-long v4, v4

    move-wide v1, v4

    goto :goto_0

    .line 177
    :catch_0
    move-exception v4

    :goto_1
    move-object v3, v4

    .line 178
    .local v3, "ex":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    move-wide v1, v4

    goto :goto_0

    .line 177
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private getContentTypeFromFileSignature(Ljava/net/URI;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getInputStream(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 607
    .local v2, "stream":Ljava/io/InputStream;
    const/16 v5, 0x16

    new-array v5, v5, [B

    move-object v3, v5

    .line 608
    .local v3, "signature":[B
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    .line 609
    .local v4, "size":I
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 611
    move-object v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->fileSignatureToContentType([BI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method private getInputStream(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    move-object v2, v9

    .line 248
    .local v2, "url":Ljava/net/URL;
    move-object v9, v2

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v3, v9

    .line 251
    .local v3, "connection":Ljava/net/URLConnection;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->propertyLock:Ljava/lang/Object;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v4, v10

    monitor-enter v9

    .line 252
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    if-eqz v9, :cond_1

    .line 253
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 254
    .local v6, "key":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 255
    .local v7, "value":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 256
    move-object v9, v3

    move-object v10, v6

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    goto :goto_0

    .line 260
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v9, v4

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    move-object v9, v2

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v4, v9

    .line 263
    .local v4, "inputStream":Ljava/io/InputStream;
    move-object v9, v0

    move-object v10, v3

    invoke-static {v10}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentLengthLong(Ljava/net/URLConnection;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    .line 264
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0

    .line 260
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v4

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method private static synthetic lambda$getContentLengthLong$1(Ljava/net/URLConnection;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "connection":Ljava/net/URLConnection;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getContentLengthLong"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 167
    .end local v0    # "connection":Ljava/net/URLConnection;
    :goto_0
    return-object v0

    .line 166
    .restart local v0    # "connection":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 167
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public cacheMedia()V
    .locals 16

    .prologue
    .line 272
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    invoke-static {}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->locatorCache()Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v10, v11}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->fetchURICache(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    move-result-object v10

    move-object v2, v10

    .line 273
    .local v2, "ref":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    const/4 v10, 0x0

    move-object v11, v2

    if-ne v10, v11, :cond_1

    .line 279
    move-object v10, v1

    move-object v11, v1

    :try_start_0
    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-direct {v10, v11}, Lcom/sun/media/jfxmedia/locator/Locator;->getInputStream(Ljava/net/URI;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v4, v10

    .line 282
    .line 285
    .local v4, "is":Ljava/io/InputStream;
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    long-to-int v10, v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v3, v10

    .line 286
    .local v3, "cacheBuffer":Ljava/nio/ByteBuffer;
    const/16 v10, 0x2000

    new-array v10, v10, [B

    move-object v5, v10

    .line 287
    .local v5, "readBuf":[B
    const/4 v10, 0x0

    move v6, v10

    .line 289
    .local v6, "total":I
    :goto_0
    move v10, v6

    int-to-long v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 291
    move-object v10, v4

    move-object v11, v5

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    move v7, v10

    .line 301
    .line 303
    .local v7, "count":I
    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 304
    .line 311
    .end local v7    # "count":I
    :cond_0
    move-object v10, v4

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 313
    .line 315
    :goto_1
    move-object v10, v1

    invoke-static {}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->locatorCache()Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->registerURICache(Ljava/net/URI;Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    .line 316
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock:Z

    .line 318
    .end local v3    # "cacheBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "readBuf":[B
    .end local v6    # "total":I
    :cond_1
    :goto_2
    return-void

    .line 280
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 281
    .local v5, "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 292
    .restart local v3    # "cacheBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "is":Ljava/io/InputStream;
    .local v5, "readBuf":[B
    .restart local v6    # "total":I
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 294
    .local v8, "ioe":Ljava/io/IOException;
    move-object v10, v4

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 296
    .line 297
    :goto_3
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 298
    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException trying to preload media: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 300
    :cond_2
    goto :goto_2

    .line 295
    :catch_2
    move-exception v10

    move-object v9, v10

    goto :goto_3

    .line 307
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v7    # "count":I
    :cond_3
    move-object v10, v3

    move-object v11, v5

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto :goto_0

    .line 312
    .end local v7    # "count":I
    :catch_3
    move-exception v10

    move-object v8, v10

    goto :goto_1
.end method

.method public canBlock()Z
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return v0
.end method

.method public createConnectionHolder()Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    if-eq v4, v5, :cond_1

    .line 584
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    const/4 v4, 0x1

    const-string v5, "Locator.createConnectionHolder: media cached, creating memory connection holder"

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 587
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->createMemoryConnectionHolder(Ljava/nio/ByteBuffer;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    move-result-object v4

    move-object v0, v4

    .line 602
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    .local v1, "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    :goto_0
    return-object v0

    .line 592
    .end local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :cond_1
    const-string v4, "file"

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->createFileConnectionHolder(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    move-result-object v4

    move-object v1, v4

    .line 602
    .restart local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    :goto_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 594
    .end local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".m3u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 595
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->createHLSConnectionHolder(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    goto :goto_1

    .line 597
    .end local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->propertyLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 598
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->createURIConnectionHolder(Ljava/net/URI;Ljava/util/Map;)Lcom/sun/media/jfxmedia/locator/ConnectionHolder;

    move-result-object v4

    move-object v1, v4

    .line 599
    .restart local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    move-object v4, v2

    monitor-exit v4

    goto :goto_1

    .end local v1    # "holder":Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .line 519
    :goto_0
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-wide v0

    .line 517
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .line 498
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0

    .line 496
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public getStringLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public init()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v1, v8

    .line 341
    .local v1, "firstSlash":I
    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_0

    .line 343
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 345
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const-string v10, "/"

    const-string v11, "///"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    .line 353
    :cond_0
    :goto_0
    const-string v8, "os.name"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "win"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v9, "file"

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const-string v9, "/~/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 356
    .local v2, "index":I
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 357
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const/4 v11, 0x0

    move v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "user.home"

    .line 358
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    move v11, v2

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    .line 359
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    .line 364
    .end local v2    # "index":I
    :cond_1
    move-object v8, v0

    new-instance v9, Ljava/net/URI;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    .line 367
    move-object v8, v0

    invoke-static {}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->locatorCache()Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v9, v10}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->fetchURICache(Ljava/net/URI;)Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    .line 368
    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    if-eq v8, v9, :cond_4

    .line 370
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->getMIMEType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 371
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->cacheEntry:Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    .line 372
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 373
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Locator init cache hit:\n    uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n    type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n    length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 378
    .line 486
    :goto_1
    return-void

    .line 346
    :cond_3
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->protocol:Ljava/lang/String;

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 348
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    const-string v10, "/"

    const-string v11, "//"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 477
    .end local v1    # "firstSlash":I
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 478
    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v8, v1

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v8, v7

    throw v8

    .line 382
    .local v1, "firstSlash":I
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    .line 383
    .local v2, "isConnected":Z
    const/4 v8, 0x0

    move v3, v8

    .line 384
    .local v3, "isMediaUnAvailable":Z
    const/4 v8, 0x1

    move v4, v8

    .line 385
    .local v4, "isMediaSupported":Z
    move-object v8, v0

    :try_start_3
    iget-boolean v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->isIpod:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_10

    .line 386
    const/4 v8, 0x0

    move v5, v8

    .local v5, "numConnectionAttempts":I
    :goto_2
    move v8, v5

    const/4 v9, 0x5

    if-ge v8, v9, :cond_8

    .line 389
    move-object v8, v0

    :try_start_4
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 391
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    const-string v10, "HEAD"

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmedia/locator/Locator;->getConnection(Ljava/net/URI;Ljava/lang/String;)Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;

    move-result-object v8

    move-object v6, v8

    .line 392
    .local v6, "locatorConnection":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v8, :cond_6

    .line 393
    :cond_5
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    const-string v10, "GET"

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmedia/locator/Locator;->getConnection(Ljava/net/URI;Ljava/lang/String;)Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;

    move-result-object v8

    move-object v6, v8

    .line 396
    :cond_6
    move-object v8, v6

    if-eqz v8, :cond_9

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_9

    .line 397
    const/4 v8, 0x1

    move v2, v8

    .line 400
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 401
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentLengthLong(Ljava/net/URLConnection;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentLength:J

    .line 404
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    .line 405
    move-object v8, v6

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    .line 413
    .line 420
    .end local v6    # "locatorConnection":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    :cond_7
    :goto_3
    move v8, v2

    if-eqz v8, :cond_f

    .line 425
    const-string v8, "audio/x-wav"

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 426
    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentTypeFromFileSignature(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 427
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/MediaManager;->canPlayContentType(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-nez v8, :cond_8

    .line 428
    const/4 v8, 0x0

    move v4, v8

    .line 447
    .line 386
    .line 468
    .end local v5    # "numConnectionAttempts":I
    :cond_8
    :goto_4
    move-object v8, v0

    :try_start_5
    iget-boolean v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->isIpod:Z

    if-nez v8, :cond_12

    move v8, v2

    if-nez v8, :cond_12

    .line 469
    move v8, v3

    if-eqz v8, :cond_11

    .line 470
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "media is unavailable ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 479
    .end local v1    # "firstSlash":I
    .end local v2    # "isConnected":Z
    .end local v3    # "isMediaUnAvailable":Z
    .end local v4    # "isMediaSupported":Z
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 480
    .local v1, "e":Ljava/io/IOException;
    move-object v8, v1

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 406
    .local v1, "firstSlash":I
    .restart local v2    # "isConnected":Z
    .restart local v3    # "isMediaUnAvailable":Z
    .restart local v4    # "isMediaSupported":Z
    .restart local v5    # "numConnectionAttempts":I
    .restart local v6    # "locatorConnection":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    :cond_9
    move-object v8, v6

    if-eqz v8, :cond_7

    .line 407
    move-object v8, v6

    :try_start_7
    iget v8, v8, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->responseCode:I

    const/16 v9, 0x194

    if-ne v8, v9, :cond_7

    .line 408
    const/4 v8, 0x1

    move v3, v8

    goto :goto_3

    .line 413
    .end local v6    # "locatorConnection":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->scheme:Ljava/lang/String;

    const-string v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 414
    :cond_b
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-direct {v8, v9}, Lcom/sun/media/jfxmedia/locator/Locator;->getInputStream(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v8

    move-object v6, v8

    .line 415
    .local v6, "stream":Ljava/io/InputStream;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 416
    const/4 v8, 0x1

    move v2, v8

    .line 417
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->filenameToContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 449
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v6, v8

    .line 450
    .local v6, "ioe":Ljava/io/IOException;
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x5

    if-lt v8, v9, :cond_f

    .line 451
    move-object v8, v6

    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 481
    .end local v1    # "firstSlash":I
    .end local v2    # "isConnected":Z
    .end local v3    # "isMediaUnAvailable":Z
    .end local v4    # "isMediaSupported":Z
    .end local v5    # "numConnectionAttempts":I
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 482
    .local v1, "e":Lcom/sun/media/jfxmedia/MediaException;
    move-object v8, v1

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 431
    .local v1, "firstSlash":I
    .restart local v2    # "isConnected":Z
    .restart local v3    # "isMediaUnAvailable":Z
    .restart local v4    # "isMediaSupported":Z
    .restart local v5    # "numConnectionAttempts":I
    :cond_c
    move-object v8, v0

    :try_start_a
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    if-eqz v8, :cond_d

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/MediaManager;->canPlayContentType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 433
    :cond_d
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->filenameToContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 435
    const-string v8, "application/octet-stream"

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 437
    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentTypeFromFileSignature(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    .line 440
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/MediaManager;->canPlayContentType(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v8

    if-nez v8, :cond_8

    .line 441
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_4

    .line 453
    .line 456
    :cond_f
    const-wide/16 v8, 0x3e8

    :try_start_b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 459
    .line 386
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 457
    :catch_4
    move-exception v8

    move-object v6, v8

    goto :goto_5

    .line 464
    .end local v5    # "numConnectionAttempts":I
    :cond_10
    move-object v8, v0

    move-object v9, v0

    :try_start_c
    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/Locator;->uriString:Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->filenameToContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/media/jfxmedia/locator/Locator;->contentType:Ljava/lang/String;

    goto/16 :goto_4

    .line 472
    :cond_11
    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not connect to media ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 474
    :cond_12
    move v8, v4

    if-nez v8, :cond_13

    .line 475
    new-instance v8, Lcom/sun/media/jfxmedia/MediaException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "media type not supported ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 484
    :cond_13
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 485
    .line 486
    goto/16 :goto_1
.end method

.method public setConnectionProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->propertyLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 573
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 574
    move-object v5, v0

    new-instance v6, Ljava/util/TreeMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    .line 577
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/Locator;->connectionProperties:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 578
    move-object v5, v3

    monitor-exit v5

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    invoke-static {}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->locatorCache()Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->isCached(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{LocatorURI uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (media cached)}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 555
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/Locator;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{LocatorURI uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public waitForReadySignal()V
    .locals 3

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/Locator;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .line 530
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

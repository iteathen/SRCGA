.class public abstract Lcom/sun/javafx/runtime/async/AbstractRemoteResource;
.super Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;
.source "AbstractRemoteResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected fileSize:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final method:Ljava/lang/String;

.field protected final outboundContent:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<TT;>;"
    move-object v3, v0

    move-object v4, v1

    const-string v5, "GET"

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "method":Ljava/lang/String;
    move-object v3, p3

    .local v3, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<TT;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "method":Ljava/lang/String;
    move-object v3, p3

    .local v3, "outboundContent":Ljava/lang/String;
    move-object v4, p4

    .local v4, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<TT;>;"
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;-><init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V

    .line 53
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->headers:Ljava/util/Map;

    .line 54
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->responseHeaders:Ljava/util/Map;

    .line 66
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->url:Ljava/lang/String;

    .line 67
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->method:Ljava/lang/String;

    .line 68
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->outboundContent:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    new-instance v10, Ljava/net/URL;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->url:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v10

    .line 75
    .local v1, "u":Ljava/net/URL;
    const/4 v10, 0x0

    move-object v2, v10

    .line 76
    .local v2, "stream":Ljava/io/InputStream;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 77
    .local v3, "protocol":Ljava/lang/String;
    move-object v10, v3

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v3

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 78
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v4, v10

    .line 79
    .local v4, "conn":Ljava/net/HttpURLConnection;
    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->method:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 82
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->headers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_0
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v6, v10

    .line 83
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 84
    .local v7, "key":Ljava/lang/String;
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v8, v10

    .line 85
    .local v8, "value":Ljava/lang/String;
    move-object v10, v8

    if-eqz v10, :cond_1

    move-object v10, v8

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 86
    move-object v10, v4

    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    goto :goto_0

    .line 88
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->outboundContent:Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->method:Ljava/lang/String;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 89
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 90
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->outboundContent:Ljava/lang/String;

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    move-object v5, v10

    .line 91
    .local v5, "outBytes":[B
    move-object v10, v4

    const-string v11, "Content-Length"

    move-object v12, v5

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    move-object v6, v10

    .line 93
    .local v6, "out":Ljava/io/OutputStream;
    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 94
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 96
    .end local v5    # "outBytes":[B
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_3
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 97
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->fileSize:I

    .line 98
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->fileSize:I

    invoke-virtual {v10, v11}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->setProgressMax(I)V

    .line 99
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->responseHeaders:Ljava/util/Map;

    .line 101
    new-instance v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;-><init>(Lcom/sun/javafx/runtime/async/AbstractRemoteResource;Ljava/io/InputStream;)V

    move-object v2, v10

    .line 109
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    :goto_1
    move-object v10, v0

    move-object v11, v2

    :try_start_0
    invoke-virtual {v10, v11}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->processStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v4, v10

    .line 112
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    move-object v10, v4

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    return-object v0

    .line 103
    .restart local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    :cond_4
    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v4, v10

    .line 104
    .local v4, "con":Ljava/net/URLConnection;
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Ljava/net/URLConnection;->getContentLength()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->setProgressMax(I)V

    .line 105
    new-instance v10, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;-><init>(Lcom/sun/javafx/runtime/async/AbstractRemoteResource;Ljava/io/InputStream;)V

    move-object v2, v10

    goto :goto_1

    .line 112
    .end local v4    # "con":Ljava/net/URLConnection;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    move-object v10, v9

    throw v10
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v2, v6

    .line 155
    .local v2, "value":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->responseHeaders:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 157
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 159
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    .line 160
    .local v5, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 162
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    move-object v6, v4

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .line 166
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 168
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "iter":Ljava/util/Iterator;
    :cond_2
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    return-object v0
.end method

.method protected abstract processStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>;"
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->headers:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    return-void
.end method

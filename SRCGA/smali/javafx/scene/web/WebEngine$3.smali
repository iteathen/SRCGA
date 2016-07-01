.class Ljavafx/scene/web/WebEngine$3;
.super Ljavafx/beans/property/StringPropertyBase;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebEngine;->userStyleSheetLocationProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DATA_PREFIX:Ljava/lang/String; = "data:text/css;charset=utf-8;base64,"


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$3;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$3;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$3;
    const-string v1, "userStyleSheetLocation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 10

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$3;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 463
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/web/WebEngine$3;->get()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 465
    .local v1, "url":Ljava/lang/String;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 466
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    .line 488
    .local v2, "dataUrl":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/web/WebEngine$3;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v6}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/webkit/WebPage;->setUserStyleSheetLocation(Ljava/lang/String;)V

    .line 489
    return-void

    .line 467
    .end local v2    # "dataUrl":Ljava/lang/String;
    :cond_1
    move-object v6, v1

    const-string v7, "data:text/css;charset=utf-8;base64,"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    move-object v6, v1

    move-object v2, v6

    .restart local v2    # "dataUrl":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v2    # "dataUrl":Ljava/lang/String;
    :cond_2
    move-object v6, v1

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v1

    const-string v7, "jar:"

    .line 470
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v1

    const-string v7, "data:"

    .line 471
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 474
    :cond_3
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/sun/webkit/network/URLs;->newURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v3, v6

    .line 475
    .local v3, "conn":Ljava/net/URLConnection;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 477
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    .line 478
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 479
    .local v4, "in":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v6

    .line 480
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lsun/misc/BASE64Encoder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lsun/misc/BASE64Encoder;-><init>()V

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lsun/misc/BASE64Encoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data:text/css;charset=utf-8;base64,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 484
    .restart local v2    # "dataUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 482
    .end local v2    # "dataUrl":Ljava/lang/String;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 483
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 486
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Invalid stylesheet URL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.class public final Lcom/sun/webkit/network/URLs;
.super Ljava/lang/Object;
.source "URLs.java"


# static fields
.field private static final handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v1, Ljava/util/HashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 50
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/sun/webkit/network/URLs;->handlerMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/network/URLs;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static newURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "spec":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/webkit/network/URLs;->newURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "spec":Ljava/lang/String;
    return-object v0
.end method

.method public static newURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "context":Ljava/net/URL;
    move-object v1, p1

    .local v1, "spec":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 101
    .end local v0    # "context":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "context":Ljava/net/URL;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 92
    .local v2, "ex":Ljava/net/MalformedURLException;
    const/4 v5, 0x0

    move-object v3, v5

    .line 93
    .local v3, "handler":Ljava/net/URLStreamHandler;
    move-object v5, v1

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v4, v5

    .line 94
    .local v4, "colonPosition":I
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 95
    sget-object v5, Lcom/sun/webkit/network/URLs;->handlerMap:Ljava/util/Map;

    move-object v6, v1

    const/4 v7, 0x0

    move v8, v4

    .line 96
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLStreamHandler;

    move-object v3, v5

    .line 98
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    .line 99
    move-object v5, v2

    throw v5

    .line 101
    :cond_1
    new-instance v5, Ljava/net/URL;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    move-object v0, v5

    goto :goto_0
.end method

.class public Lcom/sun/xml/stream/StaxEntityResolverWrapper;
.super Ljava/lang/Object;
.source "StaxEntityResolverWrapper.java"


# instance fields
.field fStaxResolver:Ljavax/xml/stream/XMLResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLResolver;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    move-object v1, p1

    .local v1, "resolver":Ljavax/xml/stream/XMLResolver;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    .line 66
    return-void
.end method


# virtual methods
.method public getStaxEntityResolver()Ljavax/xml/stream/XMLResolver;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    return-object v0
.end method

.method getStaxInputSource(Ljava/lang/Object;)Lcom/sun/xml/stream/StaxXMLInputSource;
    .locals 12

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 100
    .end local v0    # "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Lcom/sun/xml/stream/StaxXMLInputSource;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    check-cast v9, Ljava/io/InputStream;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/StaxXMLInputSource;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v0, v2

    goto :goto_0

    .line 94
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/stream/XMLStreamReader;

    if-eqz v2, :cond_2

    .line 95
    new-instance v2, Lcom/sun/xml/stream/StaxXMLInputSource;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    check-cast v4, Ljavax/xml/stream/XMLStreamReader;

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/StaxXMLInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v2

    goto :goto_0

    .line 96
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/stream/XMLEventReader;

    if-eqz v2, :cond_3

    .line 97
    new-instance v2, Lcom/sun/xml/stream/StaxXMLInputSource;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    check-cast v4, Ljavax/xml/stream/XMLEventReader;

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/StaxXMLInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    move-object v0, v2

    goto :goto_0

    .line 100
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lcom/sun/xml/stream/StaxXMLInputSource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    move-object v1, p1

    .local v1, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    const/4 v4, 0x0

    move-object v2, v4

    .line 80
    .local v2, "object":Ljava/lang/Object;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 81
    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 80
    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/xml/stream/XMLResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 82
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->getStaxInputSource(Ljava/lang/Object;)Lcom/sun/xml/stream/StaxXMLInputSource;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    return-object v0

    .line 83
    .end local v2    # "object":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 84
    .local v3, "streamException":Ljavax/xml/stream/XMLStreamException;
    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public setStaxEntityResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    move-object v1, p1

    .local v1, "resolver":Ljavax/xml/stream/XMLResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    .line 70
    return-void
.end method
